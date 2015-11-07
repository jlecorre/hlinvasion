/************************************************************************
*																		*
*			vgui_OrdiControl.h , par Julien								*
*																		*
************************************************************************/
// menu vgui pour le contrôle de l ordinateur



class COrdiControlPanel : public CMenuPanel
{
public:
	CTransparentPanel *m_pWindow;	// cadre

	CommandButton *m_pCancelButton;	//boutton d' annulation
	TextPanel *m_pButton [ 4 ];	//bouttons de droite

	CImageLabel *m_pFleche [4];


	int m_ibitConveyor;



	TextPanel *m_pText;				//texte
	TextPanel *m_pBorder;			//cadre contenant le txt ( menu deroulant en option )

	CSchemeManager *pSchemes;		//polices de caractères
	SchemeHandle_t hTitleScheme;
	SchemeHandle_t hInfoText;
	Font *pTitleFont;
	Font *pTextFont;
	int r[4], g[4], b[4], a[4];

	CImageLabel *m_pImage;			//pointeur vers l'image


	COrdiControlPanel(int iTrans, int iRemoveMe, int x,int y,int wide,int tall);	//constructeur
	virtual void Initialize( void );	//aucun intéret
	virtual void Reset( void );			//idem
};
