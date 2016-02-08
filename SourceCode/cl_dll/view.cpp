// view/refresh setup functions

#include "hud.h"
#include "cl_util.h"
#include "cvardef.h"
#include "usercmd.h"
#include "const.h"

#include "entity_state.h"
#include "cl_entity.h"
#include "ref_params.h"
#include "in_defs.h" // PITCH YAW ROLL
#include "pm_movevars.h"
#include "pm_shared.h"
#include "pm_defs.h"
#include "event_api.h"
#include "pmtrace.h"

#include "screenfade.h"
#include "shake.h"

#include "Exports.h"

// modif de Julien
#include "vgui_TeamFortressViewport.h"

// modif de Julien
extern float in_fov;


// Spectator Mode
extern "C" 
{
	float	vecNewViewAngles[3];
	int		iHasNewViewAngles;
	float	vecNewViewOrigin[3];
	int		iHasNewViewOrigin;
	int		iIsSpectator;
}

#ifndef M_PI
#define M_PI		3.14159265358979323846	// matches value in gcc v2 math.h
#endif

	int CL_IsThirdPerson( void );
	void CL_CameraOffset( float *ofs );

	void CL_DLLEXPORT V_CalcRefdef( struct ref_params_s *pparams );

	void PM_ParticleLine( float *start, float *end, int pcolor, float life, float vert);
	int		PM_GetVisEntInfo( int ent );
	extern "C" int		PM_GetPhysEntInfo( int ent );
	extern "C" void	InterpolateAngles(  float * start, float * end, float * output, float frac );
	void	NormalizeAngles( float * angles );
	extern "C" float	Distance(const float * v1, const float * v2);
	extern "C" float	AngleBetweenVectors(  const float * v1,  const float * v2 );

	float	vJumpOrigin[3];
	float	vJumpAngles[3];


void V_DropPunchAngle ( float frametime, float *ev_punchangle );
void VectorAngles( const float *forward, float *angles );

#include "r_studioint.h"
#include "com_model.h"
#include "kbutton.h"

extern engine_studio_api_t IEngineStudio;

extern kbutton_t	in_mlook;

/*
The view is allowed to move slightly from it's true position for bobbing,
but if it exceeds 8 pixels linear distance (spherical, not box), the list of
entities sent from the server may not include everything in the pvs, especially
when crossing a water boudnary.
*/

extern cvar_t	*cl_forwardspeed;
extern cvar_t	*chase_active;
extern cvar_t	*scr_ofsx, *scr_ofsy, *scr_ofsz;
extern cvar_t	*cl_vsmoothing;

#define	CAM_MODE_RELAX		1
#define CAM_MODE_FOCUS		2

vec3_t		v_origin, v_angles, v_cl_angles, v_sim_org, v_lastAngles;
float		v_frametime, v_lastDistance;	
float		v_cameraRelaxAngle	= 5.0f;
float		v_cameraFocusAngle	= 35.0f;
int			v_cameraMode = CAM_MODE_FOCUS;
qboolean	v_resetCamera = 1;

vec3_t ev_punchangle;

cvar_t	*scr_ofsx;
cvar_t	*scr_ofsy;
cvar_t	*scr_ofsz;

cvar_t	*v_centermove;
cvar_t	*v_centerspeed;

cvar_t	*cl_bobcycle;
cvar_t	*cl_bob;
cvar_t	*cl_bobup;
cvar_t	*cl_waterdist;
cvar_t	*cl_chasedist;

// These cvars are not registered (so users can't cheat), so set the ->value field directly
// Register these cvars in V_Init() if needed for easy tweaking
cvar_t	v_iyaw_cycle		= {"v_iyaw_cycle", "2", 0, 2};
cvar_t	v_iroll_cycle		= {"v_iroll_cycle", "0.5", 0, 0.5};
cvar_t	v_ipitch_cycle		= {"v_ipitch_cycle", "1", 0, 1};
cvar_t	v_iyaw_level		= {"v_iyaw_level", "0.3", 0, 0.3};
cvar_t	v_iroll_level		= {"v_iroll_level", "0.1", 0, 0.1};
cvar_t	v_ipitch_level		= {"v_ipitch_level", "0.3", 0, 0.3};

float	v_idlescale;  // used by TFC for concussion grenade effect

//=============================================================================
/*
void V_NormalizeAngles( float *angles )
{
	int i;
	// Normalize angles
	for ( i = 0; i < 3; i++ )
	{
		if ( angles[i] > 180.0 )
		{
			angles[i] -= 360.0;
		}
		else if ( angles[i] < -180.0 )
		{
			angles[i] += 360.0;
		}
	}
}

/*
===================
V_InterpolateAngles

Interpolate Euler angles.
FIXME:  Use Quaternions to avoid discontinuities
Frac is 0.0 to 1.0 ( i.e., should probably be clamped, but doesn't have to be )
===================

void V_InterpolateAngles( float *start, float *end, float *output, float frac )
{
	int i;
	float ang1, ang2;
	float d;
	
	V_NormalizeAngles( start );
	V_NormalizeAngles( end );

	for ( i = 0 ; i < 3 ; i++ )
	{
		ang1 = start[i];
		ang2 = end[i];

		d = ang2 - ang1;
		if ( d > 180 )
		{
			d -= 360;
		}
		else if ( d < -180 )
		{	
			d += 360;
		}

		output[i] = ang1 + d * frac;
	}

	V_NormalizeAngles( output );
} */

// Quakeworld bob code, this fixes jitters in the mutliplayer since the clock (pparams->time) isn't quite linear
float V_CalcBob ( struct ref_params_s *pparams )
{
	static	double	bobtime;
	static float	bob;
	float	cycle;
	static float	lasttime;
	vec3_t	vel;
	
	if ( pparams->spectator || iIsSpectator )
		return 0;

	if ( pparams->onground == -1 ||
		 pparams->time == lasttime )
	{
		// just use old value
		return bob;	
	}

	lasttime = pparams->time;

	bobtime += pparams->frametime;
	cycle = bobtime - (int)( bobtime / cl_bobcycle->value ) * cl_bobcycle->value;
	cycle /= cl_bobcycle->value;
	
	if ( cycle < cl_bobup->value )
	{
		cycle = M_PI * cycle / cl_bobup->value;
	}
	else
	{
		cycle = M_PI + M_PI * ( cycle - cl_bobup->value )/( 1.0 - cl_bobup->value );
	}

	// bob is proportional to simulated velocity in the xy plane
	// (don't count Z, or jumping messes it up)
	VectorCopy( pparams->simvel, vel );
	vel[2] = 0;

	bob = sqrt( vel[0] * vel[0] + vel[1] * vel[1] ) * cl_bob->value;
	bob = bob * 0.3 + bob * 0.7 * sin(cycle);
	bob = min( bob, 4 );
	bob = max( bob, -7 );
	return bob;
	
}

/*
===============
V_CalcRoll
Used by view and sv_user
===============
*/
float V_CalcRoll (vec3_t angles, vec3_t velocity, float rollangle, float rollspeed )
{
    float   sign;
    float   side;
    float   value;
	vec3_t  forward, right, up;
    
	AngleVectors ( angles, forward, right, up );
    
	side = DotProduct (velocity, right);
    sign = side < 0 ? -1 : 1;
    side = fabs( side );
    
	value = rollangle;
    if (side < rollspeed)
	{
		side = side * value / rollspeed;
	}
    else
	{
		side = value;
	}
	return side * sign;
}

typedef struct pitchdrift_s
{
	float		pitchvel;
	int			nodrift;
	float		driftmove;
	double		laststop;
} pitchdrift_t;

static pitchdrift_t pd;

void V_StartPitchDrift( void )
{
	if ( pd.laststop == gEngfuncs.GetClientTime() )
	{
		return;		// something else is keeping it from drifting
	}

	if ( pd.nodrift || !pd.pitchvel )
	{
		pd.pitchvel = v_centerspeed->value;
		pd.nodrift = 0;
		pd.driftmove = 0;
	}
}

void V_StopPitchDrift ( void )
{
	pd.laststop = gEngfuncs.GetClientTime();
	pd.nodrift = 1;
	pd.pitchvel = 0;
}

/*
===============
V_DriftPitch

Moves the client pitch angle towards idealpitch sent by the server.

If the user is adjusting pitch manually, either with lookup/lookdown,
mlook and mouse, or klook and keyboard, pitch drifting is constantly stopped.
===============
*/
void V_DriftPitch ( struct ref_params_s *pparams )
{
	float		delta, move;

	if ( gEngfuncs.IsNoClipping() || !pparams->onground || pparams->demoplayback || pparams->spectator )
	{
		pd.driftmove = 0;
		pd.pitchvel = 0;
		return;
	}

	// don't count small mouse motion
	if ( pd.nodrift)
	{
		if ( v_centermove->value > 0 && !(in_mlook.state & 1) )
		{		
			// this is for lazy players. if they stopped, looked around and then continued
			// to move the view will be centered automatically if they move more than
			// v_centermove units. 

			if ( fabs( pparams->cmd->forwardmove ) < cl_forwardspeed->value )
				pd.driftmove = 0;
			else
				pd.driftmove += pparams->frametime;
		
			if ( pd.driftmove > v_centermove->value)
			{
				V_StartPitchDrift ();
			}
			else
			{
				return;	// player didn't move enough
			}
		}

		return;	// don't drift view
	}
	
	delta = pparams->idealpitch - pparams->cl_viewangles[PITCH];

	if (!delta)
	{
		pd.pitchvel = 0;
		return;
	}

	move = pparams->frametime * pd.pitchvel;
	pd.pitchvel += pparams->frametime * v_centerspeed->value;
	
//Con_Printf ("move: %f (%f)\n", move, pparams->frametime);

	if (delta > 0)
	{
		if (move > delta)
		{
			pd.pitchvel = 0;
			move = delta;
		}
		pparams->cl_viewangles[PITCH] += move;
	}
	else if (delta < 0)
	{
		if (move > -delta)
		{
			pd.pitchvel = 0;
			move = -delta;
		}
		pparams->cl_viewangles[PITCH] -= move;
	}
}

/* 
============================================================================== 
						VIEW RENDERING 
============================================================================== 
*/ 

/*
==================
V_CalcGunAngle
==================
*/
void V_CalcGunAngle ( struct ref_params_s *pparams )
{	
	cl_entity_t *viewent;
	
	viewent = gEngfuncs.GetViewModel();
	if ( !viewent )
		return;

	viewent->angles[YAW]   =  pparams->viewangles[YAW]   + pparams->crosshairangle[YAW];
	viewent->angles[PITCH] = -pparams->viewangles[PITCH] + pparams->crosshairangle[PITCH] * 0.25;
	viewent->angles[ROLL]  -= v_idlescale * sin(pparams->time*v_iroll_cycle.value) * v_iroll_level.value;
	
	// don't apply all of the v_ipitch to prevent normally unseen parts of viewmodel from coming into view.
	viewent->angles[PITCH] -= v_idlescale * sin(pparams->time*v_ipitch_cycle.value) * (v_ipitch_level.value * 0.5);
	viewent->angles[YAW]   -= v_idlescale * sin(pparams->time*v_iyaw_cycle.value) * v_iyaw_level.value;

	VectorCopy( viewent->angles, viewent->curstate.angles );
	VectorCopy( viewent->angles, viewent->latched.prevangles );
}

/*
==============
V_AddIdle

Idle swaying
==============
*/
void V_AddIdle ( struct ref_params_s *pparams )
{
	pparams->viewangles[ROLL] += v_idlescale * sin(pparams->time*v_iroll_cycle.value) * v_iroll_level.value;
	pparams->viewangles[PITCH] += v_idlescale * sin(pparams->time*v_ipitch_cycle.value) * v_ipitch_level.value;
	pparams->viewangles[YAW] += v_idlescale * sin(pparams->time*v_iyaw_cycle.value) * v_iyaw_level.value;
}

 
/*
==============
V_CalcViewRoll

Roll is induced by movement and damage
==============
*/
void V_CalcViewRoll ( struct ref_params_s *pparams )
{
	float		side;
	cl_entity_t *viewentity;
	
	viewentity = gEngfuncs.GetEntityByIndex( pparams->viewentity );
	if ( !viewentity )
		return;

	side = V_CalcRoll ( viewentity->angles, pparams->simvel, pparams->movevars->rollangle, pparams->movevars->rollspeed );

	pparams->viewangles[ROLL] += side;

	if ( pparams->health <= 0 && ( pparams->viewheight[2] != 0 ) )
	{
		// only roll the view if the player is dead and the viewheight[2] is nonzero 
		// this is so deadcam in multiplayer will work.
		pparams->viewangles[ROLL] = 80;	// dead view angle
		return;
	}
}


/*
==================
V_CalcIntermissionRefdef

==================
*/
void V_CalcIntermissionRefdef ( struct ref_params_s *pparams )
{
	cl_entity_t	*ent, *view;
	float		old;

// don't allow cheats in multiplayer
#if !defined( _DEBUG )
	if ( pparams->maxclients > 1 )
	{
		gEngfuncs.Cvar_SetValue ("scr_ofsx", 0);
		gEngfuncs.Cvar_SetValue ("scr_ofsy", 0);
		gEngfuncs.Cvar_SetValue ("scr_ofsz", 0);
	}
#endif

	// ent is the player model ( visible when out of body )
	ent = gEngfuncs.GetLocalPlayer();
	
	// view is the weapon model (only visible from inside body )
	view = gEngfuncs.GetViewModel();

	VectorCopy ( pparams->simorg, pparams->vieworg );
	VectorCopy ( pparams->cl_viewangles, pparams->viewangles );

	view->model = NULL;

	// allways idle in intermission
	old = v_idlescale;
	v_idlescale = 1;

	V_AddIdle ( pparams );

	v_idlescale = old;

	v_cl_angles = pparams->cl_viewangles;
	v_origin = pparams->vieworg;
	v_angles = pparams->viewangles;
}

#define ORIGIN_BACKUP 64
#define ORIGIN_MASK ( ORIGIN_BACKUP - 1 )

typedef struct 
{
	float Origins[ ORIGIN_BACKUP ][3];
	float OriginTime[ ORIGIN_BACKUP ];

	float Angles[ ORIGIN_BACKUP ][3];
	float AngleTime[ ORIGIN_BACKUP ];

	int CurrentOrigin;
	int CurrentAngle;
} viewinterp_t;

/*
==================
V_CalcRefdef

==================
*/
void V_CalcNormalRefdef ( struct ref_params_s *pparams )
{
	cl_entity_t		*ent, *view;
	int				i;
	vec3_t			angles;
	float			bob, waterOffset;
	static viewinterp_t		ViewInterp;

	static float oldz = 0;
	static float lasttime;

	static float lastang[3];
	vec3_t angdelta;

	vec3_t camAngles, camForward, camRight, camUp;
	cl_entity_t *pwater;

	// don't allow cheats in multiplayer
	if ( pparams->maxclients > 1 )
	{
		scr_ofsx->value = 0.0;
		scr_ofsy->value = 0.0;
		scr_ofsz->value = 0.0;
	}


	V_DriftPitch ( pparams );

	// ent is the player model ( visible when out of body )
	ent = gEngfuncs.GetLocalPlayer();

	// view is the weapon model (only visible from inside body )
	view = gEngfuncs.GetViewModel();

	// transform the view offset by the model's matrix to get the offset from
	// model origin for the view
	bob = V_CalcBob ( pparams );

	// Observer angle capturing and smoothing
	if ( iHasNewViewOrigin )
	{
		// Get the angles from the physics code
		VectorCopy( vecNewViewOrigin, pparams->vieworg );
		VectorCopy( vecNewViewOrigin, pparams->simorg );
	}
	
	// refresh position
	VectorCopy ( pparams->simorg, pparams->vieworg );
	pparams->vieworg[2] += ( bob );
	VectorAdd( pparams->vieworg, pparams->viewheight, pparams->vieworg );

	// Observer angle capturing and smoothing
	if ( iHasNewViewAngles )
	{
		// Get the angles from the physics code
		VectorCopy( vecNewViewAngles, pparams->cl_viewangles );
	}

	VectorSubtract( pparams->cl_viewangles, lastang, angdelta );
	if ( Length( angdelta ) != 0.0 )
	{
		VectorCopy( pparams->cl_viewangles, ViewInterp.Angles[ ViewInterp.CurrentAngle & ORIGIN_MASK ] );
		ViewInterp.AngleTime[ ViewInterp.CurrentAngle & ORIGIN_MASK ] = pparams->time;
		ViewInterp.CurrentAngle++;

		VectorCopy( pparams->cl_viewangles, lastang );
	}

	if ( cl_vsmoothing && cl_vsmoothing->value && ( iIsSpectator & SPEC_SMOOTH_ANGLES ) )
	{
		int foundidx;
		int i;
		float t;

		if ( cl_vsmoothing->value < 0.0 )
		{
			gEngfuncs.Cvar_SetValue( "cl_vsmoothing", 0.0 );
		}

		t = pparams->time - cl_vsmoothing->value;

		for ( i = 1; i < ORIGIN_MASK; i++ )
		{
			foundidx = ViewInterp.CurrentAngle - 1 - i;
			if ( ViewInterp.AngleTime[ foundidx & ORIGIN_MASK ] <= t )
				break;
		}

		if ( i < ORIGIN_MASK && ViewInterp.AngleTime[ foundidx & ORIGIN_MASK ] != 0.0 )
		{
			// Interpolate
			double dt;

			dt = ViewInterp.AngleTime[ (foundidx + 1) & ORIGIN_MASK ] - ViewInterp.AngleTime[ foundidx & ORIGIN_MASK ];
			if ( dt > 0.0 )
			{
				double frac;

				frac = ( t - ViewInterp.AngleTime[ foundidx & ORIGIN_MASK] ) / dt;
				frac = min( 1.0, frac );

				// interpolate angles
				InterpolateAngles( ViewInterp.Angles[ foundidx & ORIGIN_MASK ], ViewInterp.Angles[ (foundidx + 1) & ORIGIN_MASK ], pparams->cl_viewangles, frac );

				VectorCopy( pparams->cl_viewangles, vecNewViewAngles );
			}
		}
	}


	VectorCopy ( pparams->cl_viewangles, pparams->viewangles );

	gEngfuncs.V_CalcShake();
	gEngfuncs.V_ApplyShake( pparams->vieworg, pparams->viewangles, 1.0 );

	// never let view origin sit exactly on a node line, because a water plane can
	// dissapear when viewed with the eye exactly on it.
	// FIXME, we send origin at 1/128 now, change this?
	// the server protocol only specifies to 1/16 pixel, so add 1/32 in each axis
	
	pparams->vieworg[0] += 1.0/32;
	pparams->vieworg[1] += 1.0/32;
	pparams->vieworg[2] += 1.0/32;

	// Check for problems around water, move the viewer artificially if necessary 
	// -- this prevents drawing errors in GL due to waves

	waterOffset = 0;
	if ( pparams->waterlevel >= 2 )
	{
		int		i, contents, waterDist, waterEntity;
		vec3_t	point;
		waterDist = cl_waterdist->value;

		if ( pparams->hardware )
		{
			waterEntity = gEngfuncs.PM_WaterEntity( pparams->simorg );
			if ( waterEntity >= 0 && waterEntity < pparams->max_entities )
			{
				pwater = gEngfuncs.GetEntityByIndex( waterEntity );
				if ( pwater && ( pwater->model != NULL ) )
				{
					waterDist += ( pwater->curstate.scale * 16 );	// Add in wave height
				}
			}
		}
		else
		{
			waterEntity = 0;	// Don't need this in software
		}
		
		VectorCopy( pparams->vieworg, point );

		// Eyes are above water, make sure we're above the waves
		if ( pparams->waterlevel == 2 )	
		{
			point[2] -= waterDist;
			for ( i = 0; i < waterDist; i++ )
			{
				contents = gEngfuncs.PM_PointContents( point, NULL );
				if ( contents > CONTENTS_WATER )
					break;
				point[2] += 1;
			}
			waterOffset = (point[2] + waterDist) - pparams->vieworg[2];
		}
		else
		{
			// eyes are under water.  Make sure we're far enough under
			point[2] += waterDist;

			for ( i = 0; i < waterDist; i++ )
			{
				contents = gEngfuncs.PM_PointContents( point, NULL );
				if ( contents <= CONTENTS_WATER )
					break;
				point[2] -= 1;
			}
			waterOffset = (point[2] - waterDist) - pparams->vieworg[2];
		}
	}

	pparams->vieworg[2] += waterOffset;
	
	V_CalcViewRoll ( pparams );
	
	V_AddIdle ( pparams );

	// offsets
	VectorCopy( pparams->cl_viewangles, angles );

	AngleVectors ( angles, pparams->forward, pparams->right, pparams->up );

	// don't allow cheats in multiplayer
	if ( pparams->maxclients <= 1 )
	{
		for ( i=0 ; i<3 ; i++ )
		{
			pparams->vieworg[i] += scr_ofsx->value*pparams->forward[i] + scr_ofsy->value*pparams->right[i] + scr_ofsz->value*pparams->up[i];
		}
	}
	
	// Treating cam_ofs[2] as the distance
	if( CL_IsThirdPerson() )
	{
		vec3_t ofs;

		ofs[0] = ofs[1] = ofs[2] = 0.0;

		CL_CameraOffset( (float *)&ofs );

		VectorCopy( ofs, camAngles );
		camAngles[ ROLL ]	= 0;

		AngleVectors( camAngles, camForward, camRight, camUp );


/*		// modif de Julien
		if ( gHUD.m_HudTank.m_iPlayerInTank == true )
		{
			VectorCopy( gEngfuncs.GetEntityByIndex( gHUD.m_HudTank.m_iCamEnt - 1 )->origin,	pparams->vieworg );

			for ( i = 0; i < 3; i++ )
				pparams->vieworg[ i ] += -ofs[2] * camForward[ i ];
		}
		else*/
		{
			for ( i = 0; i < 3; i++ )
			{
				pparams->vieworg[ i ] += -ofs[2] * camForward[ i ];
			}
		}
	}
	
	// Give gun our viewangles
	VectorCopy ( pparams->cl_viewangles, view->angles );
	
	// set up gun position
	V_CalcGunAngle ( pparams );

	// Use predicted origin as view origin.
	VectorCopy ( pparams->simorg, view->origin );      
	view->origin[2] += ( waterOffset );
	VectorAdd( view->origin, pparams->viewheight, view->origin );

	// Let the viewmodel shake at about 10% of the amplitude
	gEngfuncs.V_ApplyShake( view->origin, view->angles, 0.9 );

	for ( i = 0; i < 3; i++ )
	{
		view->origin[ i ] += bob * 0.4 * pparams->forward[ i ];
	}
	view->origin[2] += bob;

	// throw in a little tilt.
	view->angles[YAW]   -= bob * 0.5;
	view->angles[ROLL]  -= bob * 1;
	view->angles[PITCH] -= bob * 0.3;

	// pushing the view origin down off of the same X/Z plane as the ent's origin will give the
	// gun a very nice 'shifting' effect when the player looks up/down. If there is a problem
	// with view model distortion, this may be a cause. (SJB). 
	view->origin[2] -= 1;

	// fudge position around to keep amount of weapon visible
	// roughly equal with different FOV
	if (pparams->viewsize == 110)
	{
		view->origin[2] += 1;
	}
	else if (pparams->viewsize == 100)
	{
		view->origin[2] += 2;
	}
	else if (pparams->viewsize == 90)
	{
		view->origin[2] += 1;
	}
	else if (pparams->viewsize == 80)
	{
		view->origin[2] += 0.5;
	}

	// Add in the punchangle, if any
	VectorAdd ( pparams->viewangles, pparams->punchangle, pparams->viewangles );

	// Include client side punch, too
	VectorAdd ( pparams->viewangles, (float *)&ev_punchangle, pparams->viewangles);

	V_DropPunchAngle ( pparams->frametime, (float *)&ev_punchangle );

	// smooth out stair step ups
#if 1
	if ( !pparams->smoothing && pparams->onground && pparams->simorg[2] - oldz > 0)
	{
		float steptime;
		
		steptime = pparams->time - lasttime;
		if (steptime < 0)
	//FIXME		I_Error ("steptime < 0");
			steptime = 0;

		oldz += steptime * 150;
		if (oldz > pparams->simorg[2])
			oldz = pparams->simorg[2];
		if (pparams->simorg[2] - oldz > 18)
			oldz = pparams->simorg[2]- 18;
		pparams->vieworg[2] += oldz - pparams->simorg[2];
		view->origin[2] += oldz - pparams->simorg[2];
	}
	else
	{
		oldz = pparams->simorg[2];
	}
#endif

	{
		static float lastorg[3];
		vec3_t delta;

		VectorSubtract( pparams->simorg, lastorg, delta );

		if ( Length( delta ) != 0.0 )
		{
			VectorCopy( pparams->simorg, ViewInterp.Origins[ ViewInterp.CurrentOrigin & ORIGIN_MASK ] );
			ViewInterp.OriginTime[ ViewInterp.CurrentOrigin & ORIGIN_MASK ] = pparams->time;
			ViewInterp.CurrentOrigin++;

			VectorCopy( pparams->simorg, lastorg );
		}
	}

	// Smooth out whole view in multiplayer when on trains, lifts
	if ( cl_vsmoothing && cl_vsmoothing->value &&
		( ( iIsSpectator & SPEC_SMOOTH_ORIGIN ) || (pparams->smoothing && ( pparams->maxclients > 1 ) ) ) )
	{
		int foundidx;
		int i;
		float t;

		if ( cl_vsmoothing->value < 0.0 )
		{
			gEngfuncs.Cvar_SetValue( "cl_vsmoothing", 0.0 );
		}

		t = pparams->time - cl_vsmoothing->value;

		for ( i = 1; i < ORIGIN_MASK; i++ )
		{
			foundidx = ViewInterp.CurrentOrigin - 1 - i;
			if ( ViewInterp.OriginTime[ foundidx & ORIGIN_MASK ] <= t )
				break;
		}

		if ( i < ORIGIN_MASK &&  ViewInterp.OriginTime[ foundidx & ORIGIN_MASK ] != 0.0 )
		{
			// Interpolate
			vec3_t delta;
			double frac;
			double dt;
			vec3_t neworg;

			dt = ViewInterp.OriginTime[ (foundidx + 1) & ORIGIN_MASK ] - ViewInterp.OriginTime[ foundidx & ORIGIN_MASK ];
			if ( dt > 0.0 )
			{
				frac = ( t - ViewInterp.OriginTime[ foundidx & ORIGIN_MASK] ) / dt;
				frac = min( 1.0, frac );
				VectorSubtract( ViewInterp.Origins[ ( foundidx + 1 ) & ORIGIN_MASK ], ViewInterp.Origins[ foundidx & ORIGIN_MASK ], delta );
				VectorMA( ViewInterp.Origins[ foundidx & ORIGIN_MASK ], frac, delta, neworg );

				// Dont interpolate large changes
				if ( Length( delta ) < 64 )
				{
					VectorSubtract( neworg, pparams->simorg, delta );

					VectorAdd( pparams->simorg, delta, pparams->simorg );
					VectorAdd( pparams->vieworg, delta, pparams->vieworg );
					VectorAdd( view->origin, delta, view->origin );

					VectorCopy( pparams->simorg, vecNewViewOrigin );
				}
			}
		}
	}

	// Store off v_angles before munging for third person
	v_angles = pparams->viewangles;
	v_lastAngles = pparams->viewangles;
//	v_cl_angles = pparams->cl_viewangles;	// keep old user mouse angles !
	if ( CL_IsThirdPerson() )
	{
		VectorCopy( camAngles, pparams->viewangles);
		float pitch = camAngles[ 0 ];

		// Normalize angles
		if ( pitch > 180 ) 
			pitch -= 360.0;
		else if ( pitch < -180 )
			pitch += 360;

		// Player pitch is inverted
		pitch /= -3.0;

		// Slam local player's pitch value
		ent->angles[ 0 ] = pitch;
		ent->curstate.angles[ 0 ] = pitch;
		ent->prevstate.angles[ 0 ] = pitch;
		ent->latched.prevangles[ 0 ] = pitch;
	}

	// override all previous settings if the viewent isn't the client
	if ( pparams->viewentity > pparams->maxclients )
	{
		cl_entity_t *viewentity;
		viewentity = gEngfuncs.GetEntityByIndex( pparams->viewentity );
		if ( viewentity )
		{
			VectorCopy( viewentity->origin, pparams->vieworg );
			VectorCopy( viewentity->angles, pparams->viewangles );

			// Store off overridden viewangles
			v_angles = pparams->viewangles;
		}
	}

	lasttime = pparams->time;

	// modif de Julien
	if ( gHUD.m_HudTank.m_iPlayerInTank == true )
		gHUD.m_HudTank.SetViewPos( pparams );


	v_origin = pparams->vieworg;


	// modif de Julien
	// cache l'arme pendant le zoom

	if ( in_fov != 0 && in_fov != 90 )
		view->model = NULL;

}


void V_GetInEyePos(int entity, float *origin, float * angles )
{
	cl_entity_t	 * ent = gEngfuncs.GetEntityByIndex( entity );

	if ( !ent )
		return;

	if ( !ent->player || g_PlayerInfoList[entity].name == NULL )
		return;

	VectorCopy ( ent->origin, origin );
	VectorCopy ( ent->angles, angles );

	angles[0]*=-M_PI;

	if ( ent->curstate.solid == SOLID_NOT )
	{
		angles[ROLL] = 80;	// dead view angle
		origin[2]+= -8 ; // PM_DEAD_VIEWHEIGHT
	}
	else if (ent->curstate.usehull == 1 )
		origin[2]+= 12; // VEC_DUCK_VIEW;
	else
		// exacty eye position can't be caluculated since it depends on
		// client values like cl_bobcycle, this offset matches the default values
		origin[2]+= 28; // DEFAULT_VIEWHEIGHT
}

/*
==================
V_CalcSpectatorRefdef

==================
*/
void V_CalcSpectatorRefdef ( struct ref_params_s *pparams )
{
	cl_entity_t		*ent, *view;
	vec3_t			angles;
	static viewinterp_t		ViewInterp;

	static float lasttime;

	static float lastang[3];
	static float lastorg[3];

	vec3_t delta;

	
	// ent is the player model ( visible when out of body )
	ent = gEngfuncs.GetLocalPlayer();
	
	// view is the weapon model (only visible from inside body )
	view = gEngfuncs.GetViewModel();

	
	// refresh position
	VectorCopy ( pparams->simorg, pparams->vieworg );

	// done all the spectator smoothing only once in the first frame

	// Observer angle capturing and smoothing
	if ( iHasNewViewOrigin )
	{
		// Get the angles from the physics code
		VectorCopy( vecNewViewOrigin, pparams->vieworg );
	}
	else
	{
		// otherwise copy normal vieworigin into vecNewViewOrigin
		VectorCopy( pparams->vieworg, vecNewViewOrigin );
	}

	VectorCopy ( pparams->cl_viewangles, pparams->viewangles );

	// Observer angle capturing and smoothing
	if ( iHasNewViewAngles )
	{
		// Get the angles from the physics code
		VectorCopy( vecNewViewAngles, pparams->viewangles );
	}
	else
	{
		// otherwise copy normal viewangle into vewNewViewAngles
		VectorCopy( pparams->viewangles, vecNewViewAngles);
	}

	// do the smoothing only once per frame
	if (pparams->nextView == 0)
	{
		// smooth angles

		VectorSubtract( pparams->viewangles, lastang, delta );
		if ( Length( delta ) != 0.0f )
		{
			VectorCopy( pparams->viewangles, ViewInterp.Angles[ ViewInterp.CurrentAngle & ORIGIN_MASK ] );
			ViewInterp.AngleTime[ ViewInterp.CurrentAngle & ORIGIN_MASK ] = pparams->time;
			ViewInterp.CurrentAngle++;
			VectorCopy( pparams->viewangles, lastang );
		}

		if ( cl_vsmoothing && cl_vsmoothing->value && ( iIsSpectator & SPEC_SMOOTH_ANGLES ) )
		{
			int foundidx;
			int i;
			float t;

			t = pparams->time - cl_vsmoothing->value;

			for ( i = 1; i < ORIGIN_MASK; i++ )
			{
				foundidx = ViewInterp.CurrentAngle - 1 - i;
				if ( ViewInterp.AngleTime[ foundidx & ORIGIN_MASK ] <= t )
					break;
			}
			
			if ( i < ORIGIN_MASK && ViewInterp.AngleTime[ foundidx & ORIGIN_MASK ] != 0.0 )
			{
				// Interpolate
				double dt;
				float  da;
				vec3_t	v1,v2;

				AngleVectors( ViewInterp.Angles[ foundidx & ORIGIN_MASK ], v1, NULL, NULL );
				AngleVectors( ViewInterp.Angles[ (foundidx + 1) & ORIGIN_MASK ], v2, NULL, NULL );
				da = AngleBetweenVectors( v1, v2 );

				dt = ViewInterp.AngleTime[ (foundidx + 1) & ORIGIN_MASK ] - ViewInterp.AngleTime[ foundidx & ORIGIN_MASK ];
					
				if ( dt > 0.0 && ( da < 22.5f) )
				{
					double frac;

					frac = ( t - ViewInterp.AngleTime[ foundidx & ORIGIN_MASK] ) / dt;
					frac = min( 1.0, frac );

					// interpolate angles
					InterpolateAngles( ViewInterp.Angles[ foundidx & ORIGIN_MASK ], ViewInterp.Angles[ (foundidx + 1) & ORIGIN_MASK ], vecNewViewAngles, frac );
					VectorCopy( vecNewViewAngles, pparams->viewangles );
				}
			}
		} 

		// smooth origin
		
		VectorSubtract( pparams->vieworg, lastorg, delta );

		if ( Length( delta ) != 0.0 )
		{
			VectorCopy( pparams->vieworg, ViewInterp.Origins[ ViewInterp.CurrentOrigin & ORIGIN_MASK ] );
			ViewInterp.OriginTime[ ViewInterp.CurrentOrigin & ORIGIN_MASK ] = pparams->time;
			ViewInterp.CurrentOrigin++;

			VectorCopy( pparams->vieworg, lastorg );
		}

		if ( cl_vsmoothing && cl_vsmoothing->value && ( iIsSpectator & SPEC_SMOOTH_ORIGIN )  )
		{
			int foundidx;
			int i;
			float t;

			t = pparams->time - cl_vsmoothing->value;

			for ( i = 1; i < ORIGIN_MASK; i++ )
			{
				foundidx = ViewInterp.CurrentOrigin - 1 - i;
				if ( ViewInterp.OriginTime[ foundidx & ORIGIN_MASK ] <= t )
					break;
			}

			if ( i < ORIGIN_MASK &&  ViewInterp.OriginTime[ foundidx & ORIGIN_MASK ] != 0.0 )
			{
				// Interpolate
				vec3_t delta;
				double frac;
				double dt;
				vec3_t neworg;

				dt = ViewInterp.OriginTime[ (foundidx + 1) & ORIGIN_MASK ] - ViewInterp.OriginTime[ foundidx & ORIGIN_MASK ];
				if ( dt > 0.0 )
				{
					frac = ( t - ViewInterp.OriginTime[ foundidx & ORIGIN_MASK] ) / dt;
					frac = min( 1.0, frac );
					VectorSubtract( ViewInterp.Origins[ ( foundidx + 1 ) & ORIGIN_MASK ], ViewInterp.Origins[ foundidx & ORIGIN_MASK ], delta );
					VectorMA( ViewInterp.Origins[ foundidx & ORIGIN_MASK ], frac, delta, neworg );

					// Dont interpolate large changes
					if ( Length( delta ) < 64 )
					{
						VectorSubtract( neworg, pparams->simorg, delta );

						VectorAdd( pparams->vieworg, delta, pparams->vieworg );
						VectorCopy( pparams->vieworg, vecNewViewOrigin );
					}
				}
			}
		}
	}	

	

	
	lasttime = pparams->time;

	view->model = NULL;

	if ( pparams->nextView == 0 )
	{
		// first renderer cycle

		switch (gHUD.m_Spectator.m_iMainMode)
		{
			case MAIN_MAP_FREE  :	pparams->onlyClientDraw = true;

									angles = pparams->cl_viewangles;
									angles[0] = 51.25f + 38.75f*(angles[0]/90.0f);
									
									VectorCopy ( angles, gHUD.m_Spectator.m_mapAngles );
													
									gHUD.m_Spectator.GetMapPosition( pparams->vieworg );
									VectorCopy ( angles, pparams->viewangles );
									break;
					
			case MAIN_IN_EYE	:   V_GetInEyePos( gHUD.m_Spectator.m_iObserverTarget,
										pparams->vieworg, pparams->viewangles );
				
									break;

			default				:	pparams->onlyClientDraw = false;
									break;
		}

		if ( gHUD.m_Spectator.m_iInsetMode != INSET_OFF )
			pparams->nextView = 1;	// force a second renderer view

		gHUD.m_Spectator.m_iDrawCycle = 0;

	}
	else
	{
		// second renderer cycle

		// set inset parameters
		pparams->viewport[0] = XRES(gHUD.m_Spectator.m_OverviewData.insetWindowX);	// change viewport to inset window
		pparams->viewport[1] = YRES(gHUD.m_Spectator.m_OverviewData.insetWindowY);
		pparams->viewport[2] = XRES(gHUD.m_Spectator.m_OverviewData.insetWindowWidth);
		pparams->viewport[3] = YRES(gHUD.m_Spectator.m_OverviewData.insetWindowHeight);
		pparams->nextView	 = 0;	// on further view
		pparams->onlyClientDraw = false;

		// override some settings in certain modes
		switch (gHUD.m_Spectator.m_iInsetMode)
		{
			case INSET_MAP_FREE  :	pparams->onlyClientDraw = true;
									
									angles = pparams->cl_viewangles;
									angles[0] = 51.25f + 38.75f*(angles[0]/90.0f);
									
									VectorCopy ( angles, gHUD.m_Spectator.m_mapAngles );

									gHUD.m_Spectator.GetMapPosition( pparams->vieworg );

									VectorCopy ( angles, pparams->viewangles );
									break;

			case INSET_IN_EYE	 :	 V_GetInEyePos( gHUD.m_Spectator.m_iObserverTarget,
										pparams->vieworg, pparams->viewangles );
				
									break;
		}

		gHUD.m_Spectator.m_iDrawCycle = 1;
	}

	v_angles = pparams->viewangles;
	v_origin = pparams->vieworg;
}



void CL_DLLEXPORT V_CalcRefdef( struct ref_params_s *pparams )
{
//	RecClCalcRefdef(pparams);

	// intermission / finale rendering
	if ( pparams->intermission )
	{	
		V_CalcIntermissionRefdef ( pparams );	
	}
	else if ( pparams->spectator || g_iUser1 )	// g_iUser true if in spectator mode
	{
		V_CalcSpectatorRefdef ( pparams );	
	}
	else if ( !pparams->paused )
	{
		V_CalcNormalRefdef ( pparams );
	}

/*
// Example of how to overlay the whole screen with red at 50 % alpha
#define SF_TEST
#if defined SF_TEST
	{
		screenfade_t sf;
		gEngfuncs.pfnGetScreenFade( &sf );

		sf.fader = 255;
		sf.fadeg = 0;
		sf.fadeb = 0;
		sf.fadealpha = 128;
		sf.fadeFlags = FFADE_STAYOUT | FFADE_OUT;

		gEngfuncs.pfnSetScreenFade( &sf );
	}
#endif
*/
}

/*
=============
V_DropPunchAngle

=============
*/
void V_DropPunchAngle ( float frametime, float *ev_punchangle )
{
	float	len;
	
	len = VectorNormalize ( ev_punchangle );
	len -= (10.0 + len * 0.5) * frametime;
	len = max( len, 0.0 );
	VectorScale ( ev_punchangle, len, ev_punchangle );
}

/*
=============
V_PunchAxis

Client side punch effect
=============
*/
void V_PunchAxis( int axis, float punch )
{
	ev_punchangle[ axis ] = punch;
}

/*
=============
V_Init
=============
*/
void V_Init (void)
{
	gEngfuncs.pfnAddCommand ("centerview", V_StartPitchDrift );

	scr_ofsx			= gEngfuncs.pfnRegisterVariable( "scr_ofsx","0", 0 );
	scr_ofsy			= gEngfuncs.pfnRegisterVariable( "scr_ofsy","0", 0 );
	scr_ofsz			= gEngfuncs.pfnRegisterVariable( "scr_ofsz","0", 0 );

	v_centermove		= gEngfuncs.pfnRegisterVariable( "v_centermove", "0.15", 0 );
	v_centerspeed		= gEngfuncs.pfnRegisterVariable( "v_centerspeed","500", 0 );

	cl_bobcycle			= gEngfuncs.pfnRegisterVariable( "cl_bobcycle","0.8", 0 );// best default for my experimental gun wag (sjb)
	cl_bob				= gEngfuncs.pfnRegisterVariable( "cl_bob","0.01", 0 );// best default for my experimental gun wag (sjb)
	cl_bobup			= gEngfuncs.pfnRegisterVariable( "cl_bobup","0.5", 0 );
	cl_waterdist		= gEngfuncs.pfnRegisterVariable( "cl_waterdist","4", 0 );
}


//#define TRACE_TEST
#if defined( TRACE_TEST )

extern float in_fov;
/*
====================
CalcFov
====================
*/
float CalcFov (float fov_x, float width, float height)
{
	float	a;
	float	x;

	if (fov_x < 1 || fov_x > 179)
		fov_x = 90;	// error, set to 90

	x = width/tan(fov_x/360*M_PI);

	a = atan (height/x);

	a = a*360/M_PI;

	return a;
}

int hitent = -1;

void V_Move( int mx, int my )
{
	float fov;
	float fx, fy;
	float dx, dy;
	float c_x, c_y;
	float dX, dY;
	vec3_t forward, up, right;
	vec3_t newangles;

	vec3_t farpoint;
	pmtrace_t tr;

	fov = CalcFov( in_fov, (float)ScreenWidth, (float)ScreenHeight );

	c_x = (float)ScreenWidth / 2.0;
	c_y = (float)ScreenHeight / 2.0;

	dx = (float)mx - c_x;
	dy = (float)my - c_y;

	// Proportion we moved in each direction
	fx = dx / c_x;
	fy = dy / c_y;

	dX = fx * in_fov / 2.0 ;
	dY = fy * fov / 2.0;

	newangles = v_angles;

	newangles[ YAW ] -= dX;
	newangles[ PITCH ] += dY;

	// Now rotate v_forward around that point
	AngleVectors ( newangles, forward, right, up );

	farpoint = v_origin + 8192 * forward;

	// Trace
	tr = *(gEngfuncs.PM_TraceLine( (float *)&v_origin, (float *)&farpoint, PM_TRACELINE_PHYSENTSONLY, 2 /*point sized hull*/, -1 ));

	if ( tr.fraction != 1.0 && tr.ent != 0 )
	{
		hitent = PM_GetInfo( tr.ent );
		PM_ParticleLine( (float *)&v_origin, (float *)&tr.endpos, 5, 1.0, 0.0 );
	}
	else
	{
		hitent = -1;
	}
}

#endif
