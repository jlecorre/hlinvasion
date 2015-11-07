//========= Copyright © 1996-2001, Valve LLC, All rights reserved. ============
//
// Purpose: 
//
// $NoKeywords: $
//=============================================================================

#ifndef SPECTATOR_H
#define SPECTATOR_H
#pragma once

#include "cl_entity.h"

#define MAIN_CHASE_LOCKED		1
#define MAIN_CHASE_FREE			2
#define MAIN_ROAMING			3
#define MAIN_IN_EYE				4
#define MAIN_MAP_FREE			5


#define INSET_OFF				0
#define	INSET_CHASE_FREE		1
#define	INSET_IN_EYE			2
#define	INSET_MAP_FREE			3


#define OVERVIEW_TILE_SIZE		128		// don't change this
#define OVERVIEW_MAX_LAYERS		1

//-----------------------------------------------------------------------------
// Purpose: Handles the drawing of the spectator stuff (camera & top-down map and all the things on it )
//-----------------------------------------------------------------------------

typedef struct overviewInfo_s {
	vec3_t		origin;		// center of map
	float		zoom;		// zoom of map images
	int			layers;		// how may layers do we have
	float		layersHeights[OVERVIEW_MAX_LAYERS];
	char		layersImages[OVERVIEW_MAX_LAYERS][255];
	qboolean	rotated;	// are map images rotated (90 degrees) ?
	
	int			insetWindowX;
	int			insetWindowY;
	int			insetWindowHeight;
	int			insetWindowWidth;
} overviewInfo_t;

typedef struct overviewEntity_s {

	HSPRITE					hSprite;
	struct cl_entity_s *	entity;
	double					killTime;
} overviewEntity_t;

#define	 MAX_OVERVIEW_ENTITIES		128

class CHudSpectator : public CHudBase
{
public:
	bool AddOverviewEntityToList( HSPRITE sprite, cl_entity_t * ent, double killTime);
	void DeathMessage(int victim);
	bool AddOverviewEntity( int type, struct cl_entity_s *ent, const char *modelname );
	void CheckOverviewEntities();
	void DrawOverview();
	void DrawOverviewEntities();
	void GetMapPosition( float * returnvec );
	void DrawOverviewLayer();
	void LoadMapSprites();
	bool ParseOverviewFile();
	bool IsActivePlayer(cl_entity_t * ent);
	void SetModes(int iMainMode, int iInsetMode);
	void HandleButtonsDown(int ButtonPressed);
	void HandleButtonsUp(int ButtonPressed);
	void FindNextPlayer( bool bReverse );
	void DirectorEvent(unsigned char command, unsigned int firstObject, unsigned int secondObject, unsigned int flags);
	void SetSpectatorStartPosition();
	int Init();
	int VidInit();

	int Draw(float flTime);

	int m_iMainMode;	
	int m_iInsetMode;
	int m_iDrawCycle;
	overviewInfo_t		m_OverviewData;
	overviewEntity_t	m_OverviewEntities[MAX_OVERVIEW_ENTITIES];
	int					m_iObserverTarget;

	float				m_mapZoom;		// zoom the user currently uses
	vec3_t				m_mapOrigin;	// origin where user rotates around
	vec3_t				m_mapAngles;	// cuurent map view angles

private:
	cvar_t		* m_drawnames;
	vec3_t		m_vPlayerPos[MAX_PLAYERS];
	HSPRITE		m_hsprPlayerBlue;
	HSPRITE		m_hsprPlayerRed;
	HSPRITE		m_hsprPlayer;
	HSPRITE		m_hsprCamera;
	HSPRITE		m_hsprPlayerDead;
	HSPRITE		m_hsprViewcone;
	HSPRITE		m_hsprUnkownMap;
	HSPRITE		m_hsprBeam;
	HSPRITE		m_hCrosshair;
	struct model_s * m_MapSprite;	// each layer image is saved in one sprite, where each tile is a sprite frame
	float		m_flNextObserverInput;
	float		m_zoomDelta;
	float		m_moveDelta;
	int			m_lastPrimaryObject;
	int			m_lastSecondaryObject;
};

#endif // SPECTATOR_H
