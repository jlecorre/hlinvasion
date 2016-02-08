/************************************************************************
*																		*
*			vgui_OrdiControl.cpp , par Julien							*
*																		*
************************************************************************/
// menu vgui pour le contrôle de l ordinateur

#include "vgui_int.h"
#include "VGUI_Font.h"
#include "VGUI_ScrollPanel.h"
#include "VGUI_TextImage.h"
#include "hud.h"
#include "cl_util.h"
#include "vgui_TeamFortressViewport.h"





class CHandler_Conveyor : public InputSignal
{
private:
	int m_iConveyor;	
	COrdiControlPanel *p;


public:
	CHandler_Conveyor( COrdiControlPanel *pPanel, int i )
	{
		p = pPanel;
		m_iConveyor = i;
	}
		
	void cursorEntered(Panel *panel) {};
	void mouseReleased(MouseCode code,Panel* panel) {};
	void mouseDoublePressed(MouseCode code,Panel* panel) {};
	void cursorExited(Panel* panel) {};
	void mouseWheeled(int delta,Panel* panel) {};
	void keyPressed(KeyCode code,Panel* panel) {};
	void keyTyped(KeyCode code,Panel* panel) {};
	void keyReleased(KeyCode code,Panel* panel) {};
	void keyFocusTicked(Panel* panel) {};

	void cursorMoved(int x,int y,Panel* panel) {};
	void mousePressed(MouseCode code,Panel* panel);

};


void CHandler_Conveyor :: mousePressed(MouseCode code,Panel* panel)
{

	if ( p->m_ibitConveyor & ( 1 << m_iConveyor ) )
	{
		p->m_ibitConveyor &= ~( 1 << m_iConveyor );
	}
	else
	{
		p->m_ibitConveyor |= ( 1 << m_iConveyor );
	}


	p->Initialize ();

	gEngfuncs.pfnClientCmd("ordimenu 1" );
}




COrdiControlPanel :: COrdiControlPanel(int iTrans, int iRemoveMe, int x,int y,int wide,int tall) : CMenuPanel(iTrans, iRemoveMe, x,y,wide,tall)
{
	//constructeur du vgui - initialise les elements sans les afficher
	//fonction appelée a chaque chargement de niveau


	//===================================
	// chargement des polices
	//===================================

	pSchemes = gViewPort->GetSchemeManager();

	hTitleScheme = pSchemes->getSchemeHandle( "Title Font" );
	hInfoText = pSchemes->getSchemeHandle( "Briefing Text" );

	pTitleFont = pSchemes->getFont( hTitleScheme );
	pTextFont = pSchemes->getFont( hInfoText );

	pSchemes->getFgColor( hTitleScheme, r[0], g[0], b[0], a[0] );
	pSchemes->getBgColor( hTitleScheme, r[1], g[1], b[1], a[1] );

	pSchemes->getFgColor( hInfoText, r[2], g[2], b[2], a[2] );
	pSchemes->getBgColor( hInfoText, r[3], g[3], b[3], a[3] );



	//====================================
	// éléments des menus
	//====================================

	// fenetre

	m_pWindow = new CTransparentPanel( 255, XRES(10), YRES(10), XRES(620), YRES(460) );
    m_pWindow->setParent( this );
    m_pWindow->setBorder( new LineBorder( Color(255*0.7,170*0.7,0,0 )) );

	// boutton quitter

    m_pCancelButton = new CommandButton( "Appliquer", XRES(20), YRES(400), XRES(150), YRES(20) );
    m_pCancelButton->setParent( m_pWindow );
//  m_pCancelButton->addActionSignal( new CMenuHandler_TextWindow(HIDE_TEXTWINDOW) );
	m_pCancelButton->addActionSignal( new CMenuHandler_OrdiControl( this ) );


	// image

	m_pImage = new 	CImageLabel( "conveyor",XRES(0), YRES(0) );
	m_pImage->setParent( m_pWindow );

	// boutons

	int posY = XRES(60);

	for ( int i = 0; i < 4 ; i++ )
	{
		char sz[16];
		sprintf( sz, "Tapis %i", i+1 );
		m_pButton[i] = new TextPanel( sz, XRES ( 450 ), posY, XRES(120), YRES(20) );
		m_pButton[i]->setParent( m_pWindow );

		m_pButton[i]->setFont( pTextFont );
		m_pButton[i]->setFgColor( r[2], g[2], b[2], a[2] );
		m_pButton[i]->setBgColor( r[3], g[3], b[3], a[3] );

		posY += 70;
	}


	posY = XRES(55);

	for ( i = 0; i < 4 ; i++ )
	{
		m_pFleche[i] = new CImageLabel( "boutR",  XRES ( 500 ), posY );
		m_pFleche[i]->setParent( m_pWindow );
		m_pFleche[i]->addInputSignal ( new CHandler_Conveyor ( this, i ) );
		posY += 70;
	}


	// texte

	m_pText = new TextPanel( "PANNEAU DE CONTROLE\nGENERAL\n\nVeuillez avertir le responsable du personnel avant de changer la direction des tapis menant au compresseur.", XRES ( 380 ),YRES ( 320 ), XRES ( 200 ), YRES ( 80 ) );
	m_pText->setParent( m_pWindow );
	m_pText->setFont( pTextFont );
	m_pText->setFgColor( r[2], g[2], b[2], a[2] );
	m_pText->setBgColor( r[3], g[3], b[3], a[3] );
	m_pText->setBorder( new LineBorder( Color(255*0.7,170*0.7,0,0 )) );


	// bordure du texte
/*
	m_pBorder = new TextPanel( " ", XRES ( 370 ),YRES ( 310 ), XRES ( 200 ), YRES ( 95 ) );
	m_pBorder->setParent( m_pWindow );
	m_pBorder->setBorder( new LineBorder( Color(255*0.7,170*0.7,0,0 )) );
	m_pBorder->setFgColor( r[2], g[2], b[2], a[2] );
	m_pBorder->setBgColor( r[3], g[3], b[3], a[3] );
*/
	Initialize();	// ?


}


void CMenuHandler_OrdiControl :: actionPerformed(Panel* panel)		// fonction declenchee lors de l'appui sur un boutton
{
	char sz[16];
	sprintf( sz, "ordicontrol %i", m_pPanel->m_ibitConveyor );

	gEngfuncs.pfnClientCmd( sz );			// conveyor
	gEngfuncs.pfnClientCmd("ordimenu 2" );	// blip

	gViewPort->HideTopMenu();

}


//===============
//====================================================


void COrdiControlPanel::Initialize( void )
{

	for ( int i=0; i<4; i++ )
	{
		if (m_ibitConveyor & ( 1 << i ) )
		{
			m_pFleche[i]->m_pTGA = LoadTGAForRes("boutR");
			m_pFleche[i]->setImage( m_pFleche[i]->m_pTGA );
		}
		else
		{
			m_pFleche[i]->m_pTGA = LoadTGAForRes("boutL");
			m_pFleche[i]->setImage( m_pFleche[i]->m_pTGA );
		}
	}
}

void COrdiControlPanel::Reset( void )
{
    CMenuPanel::Reset();
}










