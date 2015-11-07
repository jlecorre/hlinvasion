//========= Copyright © 1996-2001, Valve LLC, All rights reserved. ============
//
// Purpose: 
//
// $NoKeywords: $
//=============================================================================

#include "hud.h"
#include "cl_util.h"
#include "cl_entity.h"
#include "triangleapi.h"
#include "vgui_TeamFortressViewport.h"
#include "hltv.h"

#include "pm_shared.h"
#include "entity_types.h"

// these are included for the math functions
#include "com_model.h"
#include "studio_util.h"

#pragma warning(disable: 4244)

	
extern "C" unsigned int uiDirectorFlags;	// from pm_shared.c
extern "C" float	vecNewViewOrigin[3];
extern "C" float	vecNewViewAngles[3];
extern "C" int		iHasNewViewOrigin;
extern "C" int		iJumpSpectator;
extern "C" float	vJumpOrigin[3];
extern "C" float	vJumpAngles[3];

extern void V_GetInEyePos(int entity, float * origin, float * angles );
extern vec3_t v_angles;

void SpectatorMode(void)
{
	if ( !gEngfuncs.IsSpectateOnly() )
	{
		gEngfuncs.Con_Printf( "specmode only in HLTV mode available.\n" );
		return;
	}
	
	if ( gEngfuncs.Cmd_Argc() <= 1 )
	{
		gEngfuncs.Con_Printf( "usage:  specmode < modenumber >\n" );
		return;
	}

	gHUD.m_Spectator.SetModes( atoi( gEngfuncs.Cmd_Argv(1) ), INSET_OFF );
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
int CHudSpectator::Init()
{
	gHUD.AddHudElem(this);

	m_iFlags |= HUD_ACTIVE;
	m_flNextObserverInput = 0.0f;
	m_iObserverTarget = 0;
	m_zoomDelta	= 0.0f;
	m_moveDelta = 0.0f;
	memset( &m_OverviewData, 0, sizeof(m_OverviewData));
	memset( &m_OverviewEntities, 0, sizeof(m_OverviewEntities));
	m_iMainMode = 0;
	m_iInsetMode = 0;
	
	m_drawnames = gEngfuncs.pfnRegisterVariable( "cl_drawnames", "1", FCVAR_ARCHIVE );
	gEngfuncs.pfnAddCommand ("specmode", SpectatorMode );

	return 1;
}


//-----------------------------------------------------------------------------
// UTIL_StringToVector originally from ..\dlls\util.cpp, slightly changed
//-----------------------------------------------------------------------------

void UTIL_StringToVector( float * pVector, const char *pString )
{
	char *pstr, *pfront, tempString[128];
	int	j;

	strcpy( tempString, pString );
	pstr = pfront = tempString;
	
	for ( j = 0; j < 3; j++ )		
	{
		pVector[j] = atof( pfront );
		
		while ( *pstr && *pstr != ' ' )
			pstr++;
		if (!*pstr)
			break;
		pstr++;
		pfront = pstr;
	}

	if (j < 2)
	{
		for (j = j+1;j < 3; j++)
			pVector[j] = 0;
	}
}

//-----------------------------------------------------------------------------
// SetSpectatorStartPosition(): 
// Get valid map position and 'beam' spectator to this position
//-----------------------------------------------------------------------------

void CHudSpectator::SetSpectatorStartPosition()
{
	float position[3] = {0,0,0};

	cl_entity_t * pEnt = gEngfuncs.GetEntityByIndex( 0 );	// get world model

	if ( pEnt )
	{
		char			*data;
		char			keyname[256];
		int				n;
		char			token[1024];

	
		for ( data = gEngfuncs.COM_ParseFile( pEnt->model->entities, token) ;	// cl.worldmodel->entities
		*data && *token != '}';
		data = gEngfuncs.COM_ParseFile(data, token) ) // TODO check this for null pointer crashes
		{
			
			if (token[0] != '{')
				return;
			
			while (1)
			{	
				// parse key
				data = gEngfuncs.COM_ParseFile(data, token);
				if (token[0] == '}')
					break;
				if (!data)
					return;
				
				strcpy (keyname, token);
				// another hack to fix keynames with trailing spaces
				n = strlen(keyname);
				while (n && keyname[n-1] == ' ')
				{
					keyname[n-1] = 0;
					n--;
				}
				
				// parse value
				data = gEngfuncs.COM_ParseFile(data, token);
				
				if (!data)
					return;
				
				if (token[0] == '}')
					return;
				
				if (!strcmp(keyname,"classname"))
				{
					if (!strcmp(token,"info_player_start"))
					{
						// origin should already be in SpectatorPos
						break;
					}
				};
				
				if (!strcmp(keyname,"origin"))
				{
					UTIL_StringToVector(position, token);

				};
				
			} // while (1)
		}
	}

	VectorCopy ( position, vJumpOrigin );
	VectorCopy ( position, vecNewViewOrigin );

	iHasNewViewOrigin = 1;
	iJumpSpectator = 1;
}

//-----------------------------------------------------------------------------
// Purpose: Loads new icons
//-----------------------------------------------------------------------------
int CHudSpectator::VidInit()
{
	m_hsprPlayer		= SPR_Load("sprites/iplayer.spr");
	m_hsprPlayerBlue	= SPR_Load("sprites/iplayerblue.spr");
	m_hsprPlayerRed		= SPR_Load("sprites/iplayerred.spr");
	m_hsprPlayerDead	= SPR_Load("sprites/iplayerdead.spr");
	m_hsprUnkownMap		= SPR_Load("sprites/tile.spr");
	m_hsprBeam			= SPR_Load("sprites/laserbeam.spr");
	m_hsprCamera		= SPR_Load("sprites/camera.spr");
	m_hCrosshair		= SPR_Load("sprites/crosshairs.spr");
	
	return 1;
}

//-----------------------------------------------------------------------------
// Purpose: 
// Input  : flTime - 
//			intermission - 
//-----------------------------------------------------------------------------
int CHudSpectator::Draw(float flTime)
{
	int lx;

	char string[256];
	float red, green, blue;
	
	// if user pressed zoom, aplly changes
	if ( m_zoomDelta != 0.0f && m_iMainMode != MAIN_ROAMING )
	{
		m_mapZoom += m_zoomDelta;

		if ( m_mapZoom > 3.0f ) 
			m_mapZoom = 3.0f;

		if ( m_mapZoom < 0.5f ) 
			m_mapZoom = 0.5f;
	}

	// if user moves in map mode, change map origin
	if ( m_moveDelta != 0.0f && m_iMainMode != MAIN_ROAMING )
	{
		vec3_t	right;
		AngleVectors(m_mapAngles, NULL, right, NULL);
		VectorNormalize(right);
		VectorScale(right, m_moveDelta, right );

		VectorAdd( m_mapOrigin, right, m_mapOrigin )

	}


	// Only draw the icon names only if map mode is in Main Mode
	if ( m_iMainMode != MAIN_MAP_FREE ) 
		return 1;
	
	if ( !m_drawnames->value )
		return 1;
	
	// make sure we have player info
	gViewPort->GetAllPlayersInfo();


	// loop through all the players and draw additional infos to their sprites on the map
	for (int i = 0; i < MAX_PLAYERS; i++)
	{

		if ( m_vPlayerPos[i][2]<0 )	// marked as invisible ?
			continue;
		
		// check if name would be in inset window
		if ( m_iInsetMode != INSET_OFF )
		{
			if (	m_vPlayerPos[i][0] > XRES( m_OverviewData.insetWindowX ) &&
					m_vPlayerPos[i][1] > YRES( m_OverviewData.insetWindowY ) &&
					m_vPlayerPos[i][0] < XRES( m_OverviewData.insetWindowX + m_OverviewData.insetWindowWidth ) &&
					m_vPlayerPos[i][1] < YRES( m_OverviewData.insetWindowY + m_OverviewData.insetWindowHeight) 
				) continue;
		}

		// hack in some team colors
		switch (g_PlayerExtraInfo[i+1].teamnumber)
		{
			// blue and red teams are swapped in CS and TFC
			case 2  : red = 1.0f; green = 0.4f; blue = 0.4f; break; // Team Red
			case 1  : red = 0.4f; green = 0.4f; blue = 1.0f; break;	// Team Blue
			default : red = 0.8f; green = 0.8f; blue = 0.8f; break;	// Unkown Team, grey
		}

		// draw the players name and health underneath
		sprintf(string, "%s", g_PlayerInfoList[i+1].name );
		
		lx = strlen(string)*3; // 3 is avg. character length :)

		gEngfuncs.pfnDrawSetTextColor( red, green, blue );
		DrawConsoleString( m_vPlayerPos[i][0]-lx,m_vPlayerPos[i][1], string);
		
	}

	return 1;
}



void CHudSpectator::DirectorEvent(unsigned char command, unsigned int firstObject, unsigned int secondObject, unsigned int flags)
{
	switch ( command )
	{ 
		case HLTV_ACTIVE	:	// we are connected to a proxy or listening to a multicast stream
							// now we have to do some things clientside, since the proxy doesn't know our mod 
							g_iPlayerClass = 0;
							g_iTeamNumber = 0;
							iJumpSpectator	= 0;
							m_iMainMode = m_iInsetMode = 0;
							m_iObserverTarget = m_lastPrimaryObject = m_lastSecondaryObject = 0;
							m_flNextObserverInput = 0.0f;
							memset( &m_OverviewEntities, 0, sizeof(m_OverviewEntities));
							SetModes(MAIN_CHASE_FREE, INSET_OFF);
							ParseOverviewFile();
							LoadMapSprites();
							SetSpectatorStartPosition();
							break;

		case HLTV_CAMERA :	if ( g_iUser1 == OBS_DIRECTED )
							{
								m_iObserverTarget = g_iUser2 = firstObject;
								g_iUser3 = secondObject;
							}

							m_lastPrimaryObject = firstObject;
							m_lastSecondaryObject = secondObject;
							uiDirectorFlags = flags;
							// gEngfuncs.Con_Printf("Director Camera: %i %i\n", firstObject, secondObject);
							break;

		default			:	gEngfuncs.Con_DPrintf("CHudSpectator::DirectorEvent: unknown director command.\n");
	}
}

void CHudSpectator::FindNextPlayer(bool bReverse)
{
	// MOD AUTHORS: Modify the logic of this function if you want to restrict the observer to watching
	//				only a subset of the players. e.g. Make it check the target's team.

	int		iStart;
	if ( m_iObserverTarget )
		iStart = m_iObserverTarget;
	else
		iStart = 1;


	m_iObserverTarget = 0;

	int	    iCurrent = iStart;

	int iDir = bReverse ? -1 : 1; 

	// make sure we have player info
	gViewPort->GetAllPlayersInfo();


	do
	{
		iCurrent += iDir;

		// Loop through the clients
		if (iCurrent > MAX_PLAYERS)
			iCurrent = 1;
		if (iCurrent < 1)
			iCurrent = MAX_PLAYERS;

		cl_entity_t *pEnt = gEngfuncs.GetEntityByIndex( iCurrent );

		if ( !IsActivePlayer( pEnt ) )
			continue;

		// MOD AUTHORS: Add checks on target here.

		m_iObserverTarget = iCurrent;
		break;

	} while ( iCurrent != iStart );

	// Did we find a target?
	if ( m_iObserverTarget )
	{
		// Store the target in pev so the physics DLL can get to it
		if ( m_iMainMode != MAIN_ROAMING )
		{
			g_iUser2 = m_iObserverTarget;
			g_iUser3 = 0;
		}	
		
		gEngfuncs.Con_Printf("Now Tracking %s\n", g_PlayerInfoList[m_iObserverTarget].name );
	}
	else
	{
		gEngfuncs.Con_Printf( "No observer targets.\n" );
	}
}

void CHudSpectator::HandleButtonsDown( int ButtonPressed )
{
	double time = gEngfuncs.GetClientTime();
	int newMainMode		= m_iMainMode;
	int newInsetMode	= m_iInsetMode;


	// gEngfuncs.Con_Printf(" HandleButtons:%i\n", ButtonPressed );

	// Slow down mouse clicks
	if ( m_flNextObserverInput > time || gEngfuncs.IsSpectateOnly()!=1  )
		return;

	// changing target or chase mode not in overviewmode without inset window

	// Jump changes main window modes
	if ( ButtonPressed & IN_JUMP )
	{
		newMainMode+=1;
		if (newMainMode > MAIN_MAP_FREE )
			newMainMode = MAIN_CHASE_FREE;	// Main window can't be turned off
	}

	// Duck changes inset window mode
	if ( ButtonPressed & IN_DUCK )
	{
		newInsetMode+=1;
		if ( newInsetMode > INSET_MAP_FREE )
			newInsetMode = INSET_OFF;	// inset window can be turned off
	}
	
	// Attack moves to the next player
	if ( ButtonPressed & (IN_ATTACK | IN_ATTACK2) )
	{ 
		// in any mode change now from directed to users mode
		g_iUser1 = OBS_CHASE_FREE;	// leave directed sub mode

		FindNextPlayer( (ButtonPressed & IN_ATTACK2) ? true:false );

		if ( m_iMainMode == MAIN_ROAMING && m_iObserverTarget )
		{
			cl_entity_t * ent = gEngfuncs.GetEntityByIndex( m_iObserverTarget );
			VectorCopy ( ent->origin, vJumpOrigin );
			VectorCopy ( ent->angles, vJumpAngles );
			gEngfuncs.SetViewAngles( vJumpAngles );
			iJumpSpectator = 1;
			 
		}
		
	}

	if ( ButtonPressed & IN_FORWARD )
		m_zoomDelta =  0.01f;

	if ( ButtonPressed & IN_BACK )
		m_zoomDelta = -0.01f;
	
	if ( ButtonPressed & IN_MOVELEFT )
		m_moveDelta = -12.0f;

	if ( ButtonPressed & IN_MOVERIGHT )
		m_moveDelta =  12.0f;

	if ( newMainMode != m_iMainMode || newInsetMode	!= m_iInsetMode )
		SetModes(newMainMode, newInsetMode);

	m_flNextObserverInput = time + 0.2;
}

void CHudSpectator::HandleButtonsUp( int ButtonPressed )
{
	if ( gEngfuncs.IsSpectateOnly() != 1  )
		return;

	if ( ButtonPressed & (IN_FORWARD | IN_BACK) )
		m_zoomDelta = 0.0f;
	
	if ( ButtonPressed & (IN_MOVELEFT | IN_MOVERIGHT) )
		m_moveDelta = 0.0f;
}
void CHudSpectator::SetModes(int iNewMainMode, int iNewInsetMode)
{
	char string[32];
	static wrect_t	crosshairRect;

	if ( iNewMainMode < MAIN_CHASE_LOCKED || iNewMainMode > MAIN_MAP_FREE )
	{
		gEngfuncs.Con_Printf("Invalid spectator mode.\n");
		return;
	}

	// Just abort if we're changing to the mode we're already in
	if (iNewInsetMode != m_iInsetMode)
	{
		m_iInsetMode = iNewInsetMode;
		sprintf(string, "%c#Spec_Mode_Inset%d", HUD_PRINTCENTER, m_iInsetMode);
		gHUD.m_TextMessage.MsgFunc_TextMsg(NULL, strlen(string)+1, string );
	}

	// main modes ettings will override inset window settings
	if ( iNewMainMode != m_iMainMode )
	{
		switch ( iNewMainMode )
		{
			case MAIN_CHASE_FREE :	g_iUser1 = OBS_DIRECTED;
									break;

			case MAIN_ROAMING	:	g_iUser1 = OBS_ROAMING;
									
									if ( m_iMainMode == MAIN_CHASE_FREE )
									{
										VectorCopy ( vecNewViewOrigin, vJumpOrigin );
										VectorCopy ( vecNewViewAngles, vJumpAngles );
										gEngfuncs.SetViewAngles( vJumpAngles );
										iJumpSpectator = 1;
									}

									if ( m_iMainMode == MAIN_IN_EYE )
									{
										V_GetInEyePos( m_iObserverTarget, vJumpOrigin, vJumpAngles );
										gEngfuncs.SetViewAngles( vJumpAngles );
										iJumpSpectator = 1;
									}

									g_iUser2 = m_iObserverTarget = 0;
									g_iUser3 = 0;
									break;

			case MAIN_IN_EYE	:	g_iUser1 = OBS_DIRECTED;
									break;

			case MAIN_MAP_FREE	:	g_iUser1 = OBS_DIRECTED;
									// reset user values
									m_mapZoom = m_OverviewData.zoom;
									m_mapOrigin = m_OverviewData.origin;
									break;
		}

		m_iMainMode = iNewMainMode;
		sprintf(string, "%c#Spec_Mode%d", HUD_PRINTCENTER, m_iMainMode);
		gHUD.m_TextMessage.MsgFunc_TextMsg(NULL, strlen(string)+1, string );

		if ( g_iUser1 == OBS_DIRECTED && m_iObserverTarget == 0 )
		{
			// choose last Director object if still available
			if ( IsActivePlayer( gEngfuncs.GetEntityByIndex( m_lastPrimaryObject ) ) )
			{
				g_iUser2 = m_iObserverTarget = m_lastPrimaryObject;
				g_iUser3 = m_lastSecondaryObject;
			}
		}

		// enable or disable crosshair 
		if (  m_iMainMode == MAIN_ROAMING || m_iMainMode == MAIN_IN_EYE ) 
		{
			crosshairRect.left	 = 24;
			crosshairRect.top	 = 0;
			crosshairRect.right	 = 48;
			crosshairRect.bottom = 24;
						
			SetCrosshair( m_hCrosshair, crosshairRect, 255, 255, 255 );
		}
		else
		{
			memset( &crosshairRect,0,sizeof(crosshairRect) );
			SetCrosshair( 0, crosshairRect, 0, 0, 0 );
		} 

	}

	// disallow same inset mode as main mode:
	
	if ( ( m_iMainMode != MAIN_MAP_FREE ) && ( m_iInsetMode == INSET_CHASE_FREE || m_iInsetMode == INSET_IN_EYE ) )
	{
		// both would show in World picures
		SetModes( m_iMainMode, INSET_MAP_FREE );
	}

	if ( ( m_iMainMode == MAIN_MAP_FREE ) && ( m_iInsetMode == INSET_MAP_FREE ) )
	{
		// both would show map views
		SetModes( m_iMainMode, INSET_OFF );
	}
	gViewPort->UpdateSpectatorMenu();

}

bool CHudSpectator::IsActivePlayer(cl_entity_t * ent)
{
	return ( ent && 
			 ent->player && 
			 ent->curstate.solid != SOLID_NOT &&
			 ent != gEngfuncs.GetLocalPlayer() &&
			 g_PlayerInfoList[ent->index].name != NULL
			);
}


bool CHudSpectator::ParseOverviewFile( )
{
	char filename[255];
	char levelname[255];
	char token[1024];
	float height;
	
	char *pfile  = NULL;

	memset( &m_OverviewData, 0, sizeof(m_OverviewData));

	// fill in standrd values
	m_OverviewData.insetWindowX = 4;	// upper left corner
	m_OverviewData.insetWindowY = 4;
	m_OverviewData.insetWindowHeight = 180;
	m_OverviewData.insetWindowWidth = 240;
	m_OverviewData.origin[0] = 0.0f;
	m_OverviewData.origin[1] = 0.0f;
	m_OverviewData.origin[2] = 0.0f;
	m_OverviewData.zoom	= 1.0f;
	m_OverviewData.layers = 0;
	m_OverviewData.layersHeights[0] = 0.0f;
	strcpy(levelname, gEngfuncs.pfnGetLevelName() + 5);
	levelname[strlen(levelname)-4] = 0;
	
	sprintf(filename, "overviews/%s.txt", levelname );

	pfile = (char *)gEngfuncs.COM_LoadFile( filename, 5, NULL);

	if (!pfile)
	{
		gEngfuncs.Con_Printf("Couldn't open file %s. Using default values for overiew mode.\n", filename );
		return false;
	}
	else
	{
		while (true)
		{
			pfile = gEngfuncs.COM_ParseFile(pfile, token);

			if (!pfile)
				break;

			if ( !stricmp( token, "global" ) )
			{
				// parse the global data
				pfile = gEngfuncs.COM_ParseFile(pfile, token);
				if ( stricmp( token, "{" ) ) 
				{
					gEngfuncs.Con_Printf("Error parsing overview file %s. (expected { )\n", filename );
					return false;
				}

				pfile = gEngfuncs.COM_ParseFile(pfile,token);

				while (stricmp( token, "}") )
				{
					if ( !stricmp( token, "zoom" ) )
					{
						pfile = gEngfuncs.COM_ParseFile(pfile,token);
						m_OverviewData.zoom = atof( token );
					} 
					else if ( !stricmp( token, "origin" ) )
					{
						pfile = gEngfuncs.COM_ParseFile(pfile, token); 
						m_OverviewData.origin[0] = atof( token );
						pfile = gEngfuncs.COM_ParseFile(pfile,token); 
						m_OverviewData.origin[1] = atof( token );
						pfile = gEngfuncs.COM_ParseFile(pfile, token); 
						m_OverviewData.origin[2] = atof( token );
					}
					else if ( !stricmp( token, "rotated" ) )
					{
						pfile = gEngfuncs.COM_ParseFile(pfile,token); 
						m_OverviewData.rotated = atoi( token );
					}
					else if ( !stricmp( token, "inset" ) )
					{
						pfile = gEngfuncs.COM_ParseFile(pfile,token); 
						m_OverviewData.insetWindowX = atof( token );
						pfile = gEngfuncs.COM_ParseFile(pfile,token); 
						m_OverviewData.insetWindowY = atof( token );
						pfile = gEngfuncs.COM_ParseFile(pfile,token); 
						m_OverviewData.insetWindowWidth = atof( token );
						pfile = gEngfuncs.COM_ParseFile(pfile,token); 
						m_OverviewData.insetWindowHeight = atof( token );

					}
					else
					{
						gEngfuncs.Con_Printf("Error parsing overview file %s. (%s unkown)\n", filename, token );
						return false;
					}

					pfile = gEngfuncs.COM_ParseFile(pfile,token); // parse next token

				}
			}
			else if ( !stricmp( token, "layer" ) )
			{
				// parse a layer data

				if ( m_OverviewData.layers == OVERVIEW_MAX_LAYERS )
				{
					gEngfuncs.Con_Printf("Error parsing overview file %s. ( too many layers )\n", filename );
					return false;
				}

				pfile = gEngfuncs.COM_ParseFile(pfile,token);

					
				if ( stricmp( token, "{" ) ) 
				{
					gEngfuncs.Con_Printf("Error parsing overview file %s. (expected { )\n", filename );
					return false;
				}

				pfile = gEngfuncs.COM_ParseFile(pfile,token);

				while (stricmp( token, "}") )
				{
					if ( !stricmp( token, "image" ) )
					{
						pfile = gEngfuncs.COM_ParseFile(pfile,token);
						strcpy(m_OverviewData.layersImages[ m_OverviewData.layers ], token);
						
						
					} 
					else if ( !stricmp( token, "height" ) )
					{
						pfile = gEngfuncs.COM_ParseFile(pfile,token); 
						height = atof(token);
						m_OverviewData.layersHeights[ m_OverviewData.layers ] = height;
					}
					else
					{
						gEngfuncs.Con_Printf("Error parsing overview file %s. (%s unkown)\n", filename, token );
						return false;
					}

					pfile = gEngfuncs.COM_ParseFile(pfile,token); // parse next token
				}

				m_OverviewData.layers++;

			}
		}
	}

	m_mapZoom = m_OverviewData.zoom;
	m_mapOrigin = m_OverviewData.origin;

	return true;

}

void CHudSpectator::LoadMapSprites()
{
	// right now only support for one map layer
	if (m_OverviewData.layers > 0 )
	{
		m_MapSprite = gEngfuncs.LoadMapSprite( m_OverviewData.layersImages[0] );
	}
	else
		m_MapSprite = NULL; // the standard "unkown map" sprite will be used instead
}

void CHudSpectator::DrawOverviewLayer()
{
	float screenaspect, xs, ys, xStep, yStep, x,y,z;
	int ix,iy,i,xTiles,yTiles,frame;

	qboolean	hasMapImage = m_MapSprite?TRUE:FALSE;
	model_t *   dummySprite = (struct model_s *)gEngfuncs.GetSpritePointer( m_hsprUnkownMap);

	if ( hasMapImage)
	{
		i = m_MapSprite->numframes / (4*3);
		i = sqrt(i);
		xTiles = i*4;
		yTiles = i*3;
	}
	else
	{
		xTiles = 8;
		yTiles = 6;
	}


	screenaspect = 4.0f/3.0f;	


	xs = m_OverviewData.origin[0];
	ys = m_OverviewData.origin[1];
	z  = ( 90.0f - m_mapAngles[0] ) / 90.0f;		
	z *= m_OverviewData.layersHeights[0]; // gOverviewData.z_min - 32;	

	// i = r_overviewTexture + ( layer*OVERVIEW_X_TILES*OVERVIEW_Y_TILES );

	gEngfuncs.pTriAPI->RenderMode( kRenderTransTexture );
	gEngfuncs.pTriAPI->CullFace( TRI_NONE );
	gEngfuncs.pTriAPI->Color4f( 1.0, 1.0, 1.0, 1.0 );

	frame = 0;
	

	// rotated view ?
	if ( m_OverviewData.rotated )
	{
		xStep = (2*4096.0f / m_OverviewData.zoom ) / xTiles;
		yStep = -(2*4096.0f / (m_OverviewData.zoom* screenaspect) ) / yTiles;

		y = ys + (4096.0f / (m_OverviewData.zoom * screenaspect));

		for (iy = 0; iy < yTiles; iy++)
		{
			x = xs - (4096.0f / (m_OverviewData.zoom));

			for (ix = 0; ix < xTiles; ix++)
			{
				if (hasMapImage)
					gEngfuncs.pTriAPI->SpriteTexture( m_MapSprite, frame );
				else
					gEngfuncs.pTriAPI->SpriteTexture( dummySprite, 0 );

				gEngfuncs.pTriAPI->Begin( TRI_QUADS );
					gEngfuncs.pTriAPI->TexCoord2f( 0, 0 );
					gEngfuncs.pTriAPI->Vertex3f (x, y, z);

					gEngfuncs.pTriAPI->TexCoord2f( 1, 0 );
					gEngfuncs.pTriAPI->Vertex3f (x+xStep ,y,  z);

					gEngfuncs.pTriAPI->TexCoord2f( 1, 1 );
					gEngfuncs.pTriAPI->Vertex3f (x+xStep, y+yStep, z);

					gEngfuncs.pTriAPI->TexCoord2f( 0, 1 );
					gEngfuncs.pTriAPI->Vertex3f (x, y+yStep, z);
				gEngfuncs.pTriAPI->End();

				frame++;
				x+= xStep;
			}

			y+=yStep;
		}
	} 
	else
	{
		xStep = -(2*4096.0f / m_OverviewData.zoom ) / xTiles;
		yStep = -(2*4096.0f / (m_OverviewData.zoom* screenaspect) ) / yTiles;

				
		x = xs + (4096.0f / (m_OverviewData.zoom * screenaspect ));

		
		
		for (ix = 0; ix < yTiles; ix++)
		{
			
			y = ys + (4096.0f / (m_OverviewData.zoom));	
						
			for (iy = 0; iy < xTiles; iy++)	
			{
				if (hasMapImage)
					gEngfuncs.pTriAPI->SpriteTexture( m_MapSprite, frame );
				else
					gEngfuncs.pTriAPI->SpriteTexture( dummySprite, 0 );

				gEngfuncs.pTriAPI->Begin( TRI_QUADS );
					gEngfuncs.pTriAPI->TexCoord2f( 0, 0 );
					gEngfuncs.pTriAPI->Vertex3f (x, y, z);

					gEngfuncs.pTriAPI->TexCoord2f( 0, 1 );
					gEngfuncs.pTriAPI->Vertex3f (x+xStep ,y,  z);

					gEngfuncs.pTriAPI->TexCoord2f( 1, 1 );
					gEngfuncs.pTriAPI->Vertex3f (x+xStep, y+yStep, z);

					gEngfuncs.pTriAPI->TexCoord2f( 1, 0 );
					gEngfuncs.pTriAPI->Vertex3f (x, y+yStep, z);
				gEngfuncs.pTriAPI->End();

				frame++;
				
				y+=yStep;
			}

			x+= xStep;
			
		}
	}
}



void CHudSpectator::GetMapPosition( float * returnvec )
{
	vec3_t forward;
	vec3_t zScaledTarget;

	zScaledTarget[0] = m_mapOrigin[0];
	zScaledTarget[1] = m_mapOrigin[1];
	zScaledTarget[2] = m_mapOrigin[2] * (( 90.0f - m_mapAngles[0] ) / 90.0f );
	

	AngleVectors(m_mapAngles, forward, NULL, NULL);

	VectorNormalize(forward);
	VectorScale(forward, -( 4096.0f / m_mapZoom ), forward );

	VectorAdd( zScaledTarget, forward, returnvec )
}


void CHudSpectator::DrawOverviewEntities()
{
	int				i,ir,ig,ib;
	struct model_s *hSpriteModel;
	vec3_t			origin,point, forward, right, left, up, world, screen, offset;
	float			x,y,z, r,g,b, sizeScale = 4.0f;
	cl_entity_t *	ent;
	float rmatrix[3][4];	// transformation matrix
	
	float			zScale = (90.0f - m_mapAngles[0] ) / 90.0f;
	

	z = m_OverviewData.layersHeights[0] * zScale;
	// get yellow/brown HUD color
	UnpackRGB(ir,ig,ib, RGB_YELLOWISH);
	r = (float)ir/255.0f;
	g = (float)ig/255.0f;
	b = (float)ib/255.0f;
	
	gEngfuncs.pTriAPI->CullFace( TRI_NONE );

	for (i=0; i < MAX_PLAYERS; i++ )
		m_vPlayerPos[i][2] = -1;	// mark as invisible 

	// draw all players
	for (i=0 ; i < MAX_OVERVIEW_ENTITIES ; i++)
	{
		if ( !m_OverviewEntities[i].hSprite )
			continue;

		hSpriteModel = (struct model_s *)gEngfuncs.GetSpritePointer( m_OverviewEntities[i].hSprite );
		ent = m_OverviewEntities[i].entity;
		
		gEngfuncs.pTriAPI->SpriteTexture( hSpriteModel, 0 );
		gEngfuncs.pTriAPI->RenderMode( kRenderTransTexture );

		// see R_DrawSpriteModel
		// draws players sprite

		AngleVectors(ent->angles, right, up, NULL );

		VectorCopy(ent->origin,origin);

		gEngfuncs.pTriAPI->Begin( TRI_QUADS );

		gEngfuncs.pTriAPI->Color4f( 1.0, 1.0, 1.0, 1.0 );
		
		gEngfuncs.pTriAPI->TexCoord2f (1, 0);
		VectorMA (origin,  16.0f * sizeScale, up, point);
		VectorMA (point,   16.0f * sizeScale, right, point);
		point[2] *= zScale;
		gEngfuncs.pTriAPI->Vertex3fv (point);

		gEngfuncs.pTriAPI->TexCoord2f (0, 0);
		
		VectorMA (origin,  16.0f * sizeScale, up, point);
		VectorMA (point,  -16.0f * sizeScale, right, point);
		point[2] *= zScale;
		gEngfuncs.pTriAPI->Vertex3fv (point);

		gEngfuncs.pTriAPI->TexCoord2f (0,1);
		VectorMA (origin, -16.0f * sizeScale, up, point);
		VectorMA (point,  -16.0f * sizeScale, right, point);
		point[2] *= zScale;
		gEngfuncs.pTriAPI->Vertex3fv (point);

		gEngfuncs.pTriAPI->TexCoord2f (1,1);
		VectorMA (origin, -16.0f * sizeScale, up, point);
		VectorMA (point,   16.0f * sizeScale, right, point);
		point[2] *= zScale;
		gEngfuncs.pTriAPI->Vertex3fv (point);

		gEngfuncs.pTriAPI->End ();

		
		if ( !ent->player)
			continue;
		// draw line under player icons
		origin[2] *= zScale;

		gEngfuncs.pTriAPI->RenderMode( kRenderTransAdd );
		
		hSpriteModel = (struct model_s *)gEngfuncs.GetSpritePointer( m_hsprBeam );
		gEngfuncs.pTriAPI->SpriteTexture( hSpriteModel, 0 );
		
		gEngfuncs.pTriAPI->Color4f(r, g, b, 0.3);

		gEngfuncs.pTriAPI->Begin ( TRI_QUADS );
		gEngfuncs.pTriAPI->TexCoord2f (1, 0);
		gEngfuncs.pTriAPI->Vertex3f (origin[0]+4, origin[1]+4, origin[2]-zScale);
		gEngfuncs.pTriAPI->TexCoord2f (0, 0);
		gEngfuncs.pTriAPI->Vertex3f (origin[0]-4, origin[1]-4, origin[2]-zScale);
		gEngfuncs.pTriAPI->TexCoord2f (0, 1);
		gEngfuncs.pTriAPI->Vertex3f (origin[0]-4, origin[1]-4,z);
		gEngfuncs.pTriAPI->TexCoord2f (1, 1);
		gEngfuncs.pTriAPI->Vertex3f (origin[0]+4, origin[1]+4,z);
		gEngfuncs.pTriAPI->End ();

		gEngfuncs.pTriAPI->Begin ( TRI_QUADS );
		gEngfuncs.pTriAPI->TexCoord2f (1, 0);
		gEngfuncs.pTriAPI->Vertex3f (origin[0]-4, origin[1]+4, origin[2]-zScale);
		gEngfuncs.pTriAPI->TexCoord2f (0, 0);
		gEngfuncs.pTriAPI->Vertex3f (origin[0]+4, origin[1]-4, origin[2]-zScale);
		gEngfuncs.pTriAPI->TexCoord2f (0, 1);
		gEngfuncs.pTriAPI->Vertex3f (origin[0]+4, origin[1]-4,z);
		gEngfuncs.pTriAPI->TexCoord2f (1, 1);
		gEngfuncs.pTriAPI->Vertex3f (origin[0]-4, origin[1]+4,z);
		gEngfuncs.pTriAPI->End ();

		// calculate screen position for name and infromation in hud::draw()
		if ( gEngfuncs.pTriAPI->WorldToScreen(origin,screen) )
			continue;	// object is behind viewer

		screen[0] = XPROJECT(screen[0]);
		screen[1] = YPROJECT(screen[1]);
		screen[2] = 0.0f;

		// calculate some offset under the icon
		origin[0]+=32.0f;
		origin[1]+=32.0f;
		
		gEngfuncs.pTriAPI->WorldToScreen(origin,offset);

		offset[0] = XPROJECT(offset[0]);
		offset[1] = YPROJECT(offset[1]);
		offset[2] = 0.0f;
			
		VectorSubtract(offset, screen, offset );

		int playerNum = ent->index - 1;

		m_vPlayerPos[playerNum][0] = screen[0];	
		m_vPlayerPos[playerNum][1] = screen[1] + Length(offset);	
		m_vPlayerPos[playerNum][2] = 1;	// mark player as visible 
	}

	if ( m_iInsetMode == INSET_OFF )
		return;

	if ( m_iInsetMode == INSET_IN_EYE )
	{ 
		V_GetInEyePos(m_iObserverTarget, vecNewViewOrigin, vecNewViewAngles );
	}

	// draw camera sprite

	x = vecNewViewOrigin[0];
	y = vecNewViewOrigin[1];
	z = vecNewViewOrigin[2];

	hSpriteModel = (struct model_s *)gEngfuncs.GetSpritePointer( m_hsprCamera );
	gEngfuncs.pTriAPI->RenderMode( kRenderTransAdd );
	gEngfuncs.pTriAPI->SpriteTexture( hSpriteModel, 0 );
	
	gEngfuncs.pTriAPI->Color4f( r, g, b, 1.0 );

	AngleVectors(vecNewViewAngles, forward, NULL, NULL );
	VectorScale (forward, 512.0f, forward);
	
	offset[0] =  0.0f; 
	offset[1] = 45.0f; 
	offset[2] =  0.0f; 

	AngleMatrix(offset, rmatrix );
	VectorTransform(forward, rmatrix , right );

	offset[1]= -45.0f;
	AngleMatrix(offset, rmatrix );
	VectorTransform(forward, rmatrix , left );

	gEngfuncs.pTriAPI->Begin (TRI_TRIANGLES);
		gEngfuncs.pTriAPI->TexCoord2f( 0, 0 );
		gEngfuncs.pTriAPI->Vertex3f (x+right[0], y+right[1], (z+right[2]) * zScale);

		gEngfuncs.pTriAPI->TexCoord2f( 0, 1 );
		gEngfuncs.pTriAPI->Vertex3f (x, y, z  * zScale);
		
		gEngfuncs.pTriAPI->TexCoord2f( 1, 1 );
		gEngfuncs.pTriAPI->Vertex3f (x+left[0], y+left[1], (z+left[2]) * zScale);
	gEngfuncs.pTriAPI->End ();

}

extern void VectorAngles( const float *forward, float *angles );
extern "C" void NormalizeAngles( float *angles );


void CHudSpectator::DrawOverview()
{
	// don't draw it in developer mode
	if ( gEngfuncs.IsSpectateOnly() != 1)
		return;

	// Only draw the overview if Map Mode is selected for this view
	if ( m_iDrawCycle == 0 &&  m_iMainMode != MAIN_MAP_FREE ) 
		return;

	if ( m_iDrawCycle == 1 &&  m_iInsetMode != INSET_MAP_FREE )
		return;

	DrawOverviewLayer();
	DrawOverviewEntities();
	CheckOverviewEntities();
}
void CHudSpectator::CheckOverviewEntities()
{
	double time = gEngfuncs.GetClientTime();

	// removes old entities from list
	for ( int i = 0; i< MAX_OVERVIEW_ENTITIES; i++ )
	{
		// remove entity from list if it is too old
		if ( m_OverviewEntities[i].killTime < time )
		{
			memset( &m_OverviewEntities[i], 0, sizeof (overviewEntity_t) );
		}
	}
}

bool CHudSpectator::AddOverviewEntity( int type, struct cl_entity_s *ent, const char *modelname)
{
	HSPRITE	hSprite = 0;
	double  duration = -1.0f;	// duration -1 means show it only this frame;

	if ( !ent )
		return false;

	if ( type == ET_PLAYER )
	{
		if ( ent->curstate.solid != SOLID_NOT)
		{
			switch ( g_PlayerExtraInfo[ent->index].teamnumber )
			{
				// blue and red teams are swapped in CS and TFC
				case 1 : hSprite = m_hsprPlayerBlue; break;
				case 2 : hSprite = m_hsprPlayerRed; break;
				default : hSprite = m_hsprPlayer; break;
			}
		}
		else
			return false;	// it's an spectator
	}
	else if (type == ET_NORMAL)
	{
		return false;
	}
	else
		return false;	

	return AddOverviewEntityToList(hSprite, ent, gEngfuncs.GetClientTime() + duration );
}

void CHudSpectator::DeathMessage(int victim)
{
	// find out where the victim is
	cl_entity_t *pl = gEngfuncs.GetEntityByIndex(victim);

	if (pl && pl->player)
		AddOverviewEntityToList(m_hsprPlayerDead, pl, gEngfuncs.GetClientTime() + 2.0f );
}

bool CHudSpectator::AddOverviewEntityToList(HSPRITE sprite, cl_entity_t *ent, double killTime)
{
	for ( int i = 0; i< MAX_OVERVIEW_ENTITIES; i++ )
	{
		// find empty entity slot
		if ( m_OverviewEntities[i].entity == NULL)
		{
			m_OverviewEntities[i].entity = ent;
			m_OverviewEntities[i].hSprite = sprite;
			m_OverviewEntities[i].killTime = killTime;
			return true;
		}
	}

	return false;	// maximum overview entities reached
}
