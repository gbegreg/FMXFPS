unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Math.Vectors, FMX.Types3D, FMX.Objects, GBEPlayerPosition,
  FMX.Objects3D, GBEHeightmap, FMX.MaterialSources, FMX.Controls3D,
  GBEJoystick, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  FMX.Viewport3D, GBEViewport3D, FMX.Ani, Generics.collections, uGBEUtils3D,
  GBEClouds, GBEPlaneExtend, uGBEImageUtils, System.IOUtils,
  FMX.Filter.Effects, GBEGrass, system.Threading, uGameUtils, uGBEOptionsUtils,
  FMX.Effects, FMX.ListBox, FMX.Edit, FMX.EditBox, FMX.SpinBox, inifiles,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, system.DateUtils;

type
  TfMain = class(TForm)
    GBEViewport3D: TGBEViewport3D;
    layDroit: TLayout;
    layGauche: TLayout;
    layInfos: TLayout;
    lblFPS: TLabel;
    lblEnnemis: TLabel;
    lblMunitions: TLabel;
    GBEJoystick1: TGBEJoystick;
    dmyMonde: TDummy;
    Light1: TLight;
    lmsSol: TLightMaterialSource;
    hSol: TGBEHeightmap;
    GBEPlayerPosition: TGBEPlayerPosition;
    imgViseur: TImage;
    aniPrincipale: TFloatAnimation;
    cmsBalle: TColorMaterialSource;
    dmyEnnemis: TDummy;
    lmsEnnemi: TLightMaterialSource;
    tmsNuage1: TTextureMaterialSource;
    tmsNuage2: TTextureMaterialSource;
    tmsNuage3: TTextureMaterialSource;
    GBEClouds: TGBEClouds;
    tmsMEr: TTextureMaterialSource;
    pleMer: TGBEPlaneExtend;
    blaEnnemi: TBitmapListAnimation;
    dmyArbres: TDummy;
    arbre: TModel3D;
    lmsArbre: TLightMaterialSource;
    cameraCarte: TCamera;
    imgCarte: TImage;
    Circle1: TCircle;
    dmyHerbe: TDummy;
    pistolet: TModel3D;
    pistoletMat41: TLightMaterialSource;
    pistoletMat01: TLightMaterialSource;
    pistoletMat21: TLightMaterialSource;
    pistoletMat31: TLightMaterialSource;
    pistoletMat11: TLightMaterialSource;
    aniPistolet: TFloatAnimation;
    tmsHerbe: TTextureMaterialSource;
    rVie: TRectangle;
    rPointsVie: TRectangle;
    tmsHerbe3: TTextureMaterialSource;
    tmsHerbe2: TTextureMaterialSource;
    rCarte: TRectangle;
    lmsEnnemiOrange: TLightMaterialSource;
    blaEnnemiOrange: TBitmapListAnimation;
    lmsEnnemiRouge: TLightMaterialSource;
    blaEnnemiRouge: TBitmapListAnimation;
    layGame: TLayout;
    layEcranMenu: TLayout;
    imgTitre: TImage;
    lblGBE: TLabel;
    rAccueil: TRectangle;
    layMenu: TLayout;
    rJouer: TRectangle;
    lblJouer: TLabel;
    GlowEffect1: TGlowEffect;
    rOptions: TRectangle;
    lblOptions: TLabel;
    GlowEffect3: TGlowEffect;
    rScores: TRectangle;
    lblScores: TLabel;
    GlowEffect4: TGlowEffect;
    rAide: TRectangle;
    lblAide: TLabel;
    GlowEffect2: TGlowEffect;
    layEcranOptions: TLayout;
    layOptionsBas: TLayout;
    rOptionsOk: TRectangle;
    lblOptionsOK: TLabel;
    GlowEffect5: TGlowEffect;
    rEcranOptions: TRectangle;
    rGroupeOptions: TRectangle;
    layOptionsGauche: TLayout;
    Label1: TLabel;
    ShadowEffect1: TShadowEffect;
    Label2: TLabel;
    cbFiltre: TComboBox;
    layBoutons: TLayout;
    imgRetourMenu: TImage;
    GlowEffect6: TGlowEffect;
    cmsLigne: TColorMaterialSource;
    layVictoire: TLayout;
    Label3: TLabel;
    ShadowEffect2: TShadowEffect;
    layVictoireBas: TLayout;
    Rectangle1: TRectangle;
    Label4: TLabel;
    GlowEffect7: TGlowEffect;
    layGameover: TLayout;
    Label5: TLabel;
    ShadowEffect3: TShadowEffect;
    Layout2: TLayout;
    Rectangle2: TRectangle;
    Label6: TLabel;
    GlowEffect8: TGlowEffect;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    layAide: TLayout;
    Rectangle5: TRectangle;
    Label7: TLabel;
    ShadowEffect4: TShadowEffect;
    Layout3: TLayout;
    Rectangle6: TRectangle;
    Label8: TLabel;
    GlowEffect9: TGlowEffect;
    Memo1: TMemo;
    StyleBook1: TStyleBook;
    lblChrono: TLabel;
    dmyBonus: TDummy;
    lmsBonusMunition: TLightMaterialSource;
    lmsBonusPointDeVie: TLightMaterialSource;
    aniPistoletRecharge: TFloatAnimation;
    lblVictoireMessage: TLabel;
    layActions: TLayout;
    imgHaut: TImage;
    imgBas: TImage;
    imgGauche: TImage;
    imgDroite: TImage;
    imgTir: TImage;
    cbAnimerMer: TSwitch;
    lblAnimerMer: TLabel;
    lblAnimerNuage: TLabel;
    cbAnimerNuages: TSwitch;
    sbNbNuage: TSpinBox;
    Label9: TLabel;
    cbAfficherFPS: TSwitch;
    Label10: TLabel;
    cbAfficherCarte: TSwitch;
    Label11: TLabel;
    cbAnimerHerbe: TSwitch;
    Label12: TLabel;
    cbHerbe: TSwitch;
    sbNbHerbe: TSpinBox;
    layOptionsDroite: TLayout;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cbAfficherBoutons: TSwitch;
    layHighScores: TLayout;
    Rectangle7: TRectangle;
    Label17: TLabel;
    ShadowEffect5: TShadowEffect;
    Layout4: TLayout;
    Rectangle8: TRectangle;
    Label18: TLabel;
    GlowEffect10: TGlowEffect;
    lblRecord: TLabel;
    Layout1: TLayout;
    Rectangle9: TRectangle;
    Label19: TLabel;
    GlowEffect11: TGlowEffect;
    Viewport3D1: TViewport3D;
    Sphere1: TSphere;
    Light2: TLight;
    aniMenu1: TFloatAnimation;
    aniMenu2: TFloatAnimation;
    layIntro: TLayout;
    Rectangle10: TRectangle;
    Viewport3D2: TViewport3D;
    Text3D1: TText3D;
    lmsGBESoft: TLightMaterialSource;
    Light3: TLight;
    aniIntro: TFloatAnimation;
    Label13: TLabel;
    cbAfficherLignes: TSwitch;
    aniIntroGradient: TGradientAnimation;
    Image1: TImage;
    GlowEffect12: TGlowEffect;
    imgBtnCarte: TImage;
    GlowEffect13: TGlowEffect;
    aniPointeurJoueur: TFloatAnimation;
    aniIntro2: TFloatAnimation;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure aniPrincipaleProcess(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure rJouerClick(Sender: TObject);
    procedure rOptionsClick(Sender: TObject);
    procedure rOptionsOkClick(Sender: TObject);
    procedure imgRetourMenuClick(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
    procedure rAideClick(Sender: TObject);
    procedure imgDroiteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure imgDroiteMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure imgGaucheMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure imgGaucheMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure imgHautMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure imgHautMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure imgBasMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure imgBasMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure imgTirMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure imgTirMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure rScoresClick(Sender: TObject);
    procedure Rectangle9Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure imgBtnCarteClick(Sender: TObject);
  private
    procedure TournerADroite;
    procedure TournerAGauche;
    procedure Avancer;
    procedure Reculer;
    procedure GererTouches;
    procedure GererDeplacementJoueur;
    procedure GererTir;
    procedure Tirer;
    procedure ChargerEnnemis;
    procedure deplacerEnnemi(Sender: TObject);
    function DetecterCollisionBalleEnnemis(balle: TSphere): TGBECollisionRetour;
    procedure ChargerNuages;
    procedure ChargerArbres;
    procedure decalerDroite;
    procedure decalerGauche;
    procedure gererHerbe;
    procedure GenererHerbe(nombre: integer);
    procedure GererPointsVie;
    procedure RetournerPositionPrecedente;
    procedure ReplacerHerbe(objet: TGBEGrass);
    procedure LancerNouvellePartie;
    procedure AppliquerConfig;
    procedure EnregistrerConfig;
    procedure AfficherJeu;
    procedure AfficherAide;
    procedure AfficherGameOver;
    procedure AfficherHighScores;
    procedure AfficherIntro;
    procedure AfficherMenu;
    procedure AfficherOptions;
    procedure AfficherVictoire;
    procedure MasquerLayouts;
    procedure ChargerConfig;
    procedure ChargerBonus;
    procedure detecterCollisionBonus;
    procedure GererVitesseTouche(sensibilite: single);
    { Déclarations privées }
  public
    { Déclarations publiques }
    vitesse, vitesseTouche, demiHauteur, demiHauteurEnnemi, demiHauteurArbre, demiDistanceAffichageHerbe, pointsVie, demiHauteurHerbe : single;
    toucheDroite, toucheGauche, toucheAvancer, toucheReculer, toucheTir, tirPossible, toucheCoteDroit, toucheCoteGauche : boolean;
    listeBalles : TList<TTir>;
    nbBalles, nbEnnemisRestants : integer;
    listeAnimations : TList<TFloatAnimation>;
    OptionsCommunes : TGBEOptions;
    SceneJeu : TSceneJeu;
    fichierOptions : string;
    heureFin, heureDebut, heureTerminee, meilleurTemps : TTime;
  end;

var
  fMain: TfMain;

implementation

{$R *.fmx}

procedure TfMain.aniPrincipaleProcess(Sender: TObject);
begin
  case SceneJeu of
    intro: AfficherIntro;
    menu: AfficherMenu;
    jeu: AfficherJeu;
    options: AfficherOptions;
    gameover: AfficherGameOver;
    victoire: AfficherVictoire;
    aide: AfficherAide;
    highScores: AfficherHighScores;
  end;
end;

procedure TfMain.AfficherJeu;
begin
  if not(layGame.Visible) then begin
    masquerLayouts;
    LancerNouvellePartie;
    layGame.Visible := true;
    heureFin := incMinute(now,5);
    heureDebut := now;
  end;

  if OptionsCommunes.afficherFPS then lblFPS.Text := 'FPS : '+ GBEViewport3D.FPS.ToString;
  lblMunitions.Text := 'Munitions : '+ nbBalles.ToString;
  lblEnnemis.Text := 'Ennemis : '+ nbEnnemisRestants.ToString;
  lblChrono.Text := formatdatetime('nn:ss', heureFin -now);

  if rCarte.Visible then begin
    imgCarte.Bitmap := GBEViewport3D.getBitmapFromView(cameraCarte);
    if not(aniPointeurJoueur.Running) then aniPointeurJoueur.Start;
  end;
  GererTouches;
  GererTir;
  GererDeplacementJoueur;
  GererPointsVie;
  if OptionsCommunes.activerNuages then GBEClouds.moveClouds;
  if OptionsCommunes.activerHerbe then gererHerbe;

  if vitesse = 0 then aniPistolet.StopAtCurrent
  else begin
    if not(aniPistolet.Running) then aniPistolet.Start;
  end;

  if nbEnnemisRestants = 0 then begin
    heureTerminee := now;
    SceneJeu := TSceneJeu.victoire;
  end;
  if (pointsVie = 0) or (heurefin-now < 0) then SceneJeu := TSceneJeu.gameover;
end;

procedure TfMain.AfficherIntro;
begin
  if not(layIntro.Visible) then begin
    masquerLayouts;
    aniIntro.Start;
    aniIntroGradient.Start;
    aniIntro2.Start;
  end;
  layIntro.Visible := true;
end;

procedure TfMain.AfficherMenu;
begin
  if not(layEcranMenu.Visible) then begin
    masquerLayouts;
    aniMenu1.Start;
    aniMenu2.Start
  end;
  layEcranMenu.Visible := true;
end;

procedure TfMain.AfficherOptions;
begin
  if not(layEcranOptions.Visible) then begin
    MasquerLayouts;
    layEcranOptions.Visible := true;
  end;
end;

procedure TfMain.AfficherGameOver;
begin
  masquerLayouts;
  layGameover.Visible := true;
end;

procedure TfMain.AfficherVictoire;
var
  ficini : Tinifile;
begin
  masquerLayouts;

  if (heureTerminee - heureDebut) < meilleurTemps then begin
    meilleurTemps := heureTerminee - heureDebut;
    ficini := TInifile.Create(fichierOptions);
    ficini.WriteTime('RECORD','meilleurTemps', meilleurTemps);
    ficini.WriteString('RECORD', 'os', TOSVersion.ToString);
    ficini.WriteDate('RECORD', 'date', now);
    ficini.Free;
  end;
  lblVictoireMessage.Text := 'Félicitations !!! Vous avez réussi en ' + formatdatetime('nn:ss', heureTerminee - heureDebut) +#13#10+
                             'Votre record est de '+formatDateTime('nn:ss',meilleurTemps)+'.';
  layVictoire.Visible := true;
end;

procedure TfMain.AfficherAide;
begin
  MasquerLayouts;
  layAide.Visible := true;
end;

procedure TfMain.AfficherHighScores;
begin
  MasquerLayouts;
  lblRecord.Text := 'Votre record est : ' + FormatDateTime('nn:ss',meilleurTemps);
  layHighScores.Visible := true;
end;

procedure TfMain.MasquerLayouts;
begin
  layIntro.Visible := false;
  layEcranMenu.Visible := false;
  layGame.Visible := false;
  layEcranOptions.visible := false;
  layVictoire.Visible := false;
  layGameover.Visible := false;
  layAide.Visible := false;
  layHighScores.Visible := false;
  aniMenu1.Stop;
  aniMenu2.Stop;
  aniIntro.Stop;
  aniIntroGradient.Stop;
  aniPointeurJoueur.Stop;
  aniIntro2.Stop;
end;

procedure TfMain.rAideClick(Sender: TObject);
begin
  SceneJeu := TSceneJeu.aide;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  {$IFDEF ANDROID}
    FullScreen := true;
  {$ENDIF}

  GBEJoystick1.MouseCapture := true;
  randomize;
  tmsMer.Texture := tileImage(tmsMer.Texture, 4, 4);
  ChargerConfig;
  AppliquerConfig;
  SceneJeu := TSceneJeu.intro;
  aniPrincipale.Start;
end;

procedure TfMain.FormDestroy(Sender: TObject);
begin
  listeBalles.Free;
  listeAnimations.Free;
end;

procedure TfMain.FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if (keyChar = 'D') or (keyChar = 'd') or (key = 39) then tournerADroite;
  if (keyChar = 'Q') or (keyChar = 'q') or (key = 37) then tournerAGauche;
  if (keyChar = 'Z') or (keyChar = 'z') or (key = 38) then Avancer;
  if (keyChar = 'S') or (keyChar = 's') or (key = 40) then Reculer;
  if keyChar = ' ' then toucheTir := true;
  if (keyChar = 'A') or (keyChar = 'a') then decalerGauche;
  if (keyChar = 'E') or (keyChar = 'e') then decalerDroite;

  if key = 27 then vitesse := 0;
end;

procedure TfMain.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  vitesseTouche := 0;
  if (keyChar = 'D') or (keyChar = 'd') or (key = 39) then toucheDroite := false;
  if (keyChar = 'Q') or (keyChar = 'q') or (key = 37) then toucheGauche := false;
  if (keyChar = 'Z') or (keyChar = 'z') or (key = 38) then toucheAvancer := false;
  if (keyChar = 'S') or (keyChar = 's') or (key = 40) then toucheReculer := false;
  if keyChar = ' ' then begin
    toucheTir := false;
    tirPossible := true;
  end;
  if (keyChar = 'A') or (keyChar = 'a') then begin
    toucheCoteGauche := false;
    vitesse := 0;
  end;
  if (keyChar = 'E') or (keyChar = 'e') then begin
    toucheCoteDroit := false;
    vitesse := 0;
  end;
end;

procedure TfMain.TournerADroite;
begin
  toucheGauche := false;
  GererVitesseTouche(1);
  toucheDroite := true;
end;

procedure TfMain.TournerAGauche;
begin
  toucheDroite := false;
  GererVitesseTouche(1);
  toucheGauche := true;
end;

procedure TfMain.Avancer;
begin
  toucheReculer := false;
  GererVitesseTouche(0.1);
  toucheAvancer := true;
end;

procedure TfMain.Rectangle1Click(Sender: TObject);
begin
  SceneJeu := TSceneJeu.menu;
end;

procedure TfMain.Rectangle9Click(Sender: TObject);
var ficini : TInifile;
begin
  meilleurTemps := incMinute(now, 10) - now;
  ficini := TInifile.Create(fichierOptions);
  ficini.WriteTime('RECORD','meilleurTemps', meilleurTemps);
  ficini.free;
end;

procedure TfMain.Reculer;
begin
  toucheAvancer := false;
  GererVitesseTouche(0.1);
  toucheReculer := true;
end;

procedure TfMain.decalerGauche;
begin
  toucheCoteDroit := false;
  GererVitesseTouche(0.1);
  toucheCoteGauche := true;
end;

procedure TfMain.decalerDroite;
begin
  toucheCoteGauche := false;
  GererVitesseTouche(0.1);
  toucheCoteDroit := true;
end;

procedure TfMain.GererTouches;
begin
  vitesse := GBEJoystick1.OrientationKeyManagement(toucheDroite, toucheGauche, toucheAvancer, toucheReculer, false, false, toucheCoteDroit, toucheCoteGauche, vitesseTouche, vitesse, vitesseMax);
  if toucheTir  then Tirer;
end;

procedure TfMain.Image1Click(Sender: TObject);
begin
  SceneJeu := TSceneJeu.menu;
end;

procedure TfMain.imgBasMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  reculer;
end;

procedure TfMain.imgBasMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  toucheReculer := false;
end;

procedure TfMain.imgBtnCarteClick(Sender: TObject);
begin
  rCarte.Visible := not(rCarte.Visible);
  if rCarte.Visible then begin
    GBEViewport3D.DoClearListView;
    GBEViewport3D.DoAddView(cameraCarte);
  end else begin
    GBEViewport3D.DoClearListView;
  end;
end;

procedure TfMain.imgDroiteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  decalerDroite;
end;

procedure TfMain.imgDroiteMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  toucheCoteDroit := false;
  vitesse := 0;
end;

procedure TfMain.imgGaucheMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  decalerGauche;
end;

procedure TfMain.imgGaucheMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  toucheCoteGauche := false;
  vitesse := 0;
end;

procedure TfMain.imgHautMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  Avancer;
end;

procedure TfMain.imgHautMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  toucheAvancer := false;
end;

procedure TfMain.imgRetourMenuClick(Sender: TObject);
begin
  sceneJeu := TSceneJeu.menu;
end;

procedure TfMain.imgTirMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  toucheTir := true;
end;

procedure TfMain.imgTirMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  toucheTir := false;
  tirPossible := true;
end;

procedure TfMain.GererDeplacementJoueur;
begin
  GBEViewport3D.BeginUpdate;

  if toucheCoteDroit then GBEPlayerPosition.NextPosition.Position.Point := GBEPlayerPosition.Position.Point - GBEJoystick1.directionSidewayRight * vitesse
  else
  begin
    if toucheCoteGauche then GBEPlayerPosition.NextPosition.Position.Point := GBEPlayerPosition.Position.Point - GBEJoystick1.directionSidewayLeft * vitesse
    else GBEPlayerPosition.NextPosition.Position.Point := GBEPlayerPosition.Position.Point - GBEJoystick1.direction * vitesse;
  end;

  GBEPlayerPosition.NextPosition.Position.Y := hSol.GetHeight(GBEPlayerPosition.NextPosition.Position.Point) + tailleJoueur  + demiHauteur;

  if not(collisionDummyChilds(dmyEnnemis, GBEPlayerPosition.NextPosition).bool) then begin
      if not(collisionDummyChilds(dmyArbres, GBEPlayerPosition.NextPosition).bool) then begin
        GBEPlayerPosition.Position.Point := GBEPlayerPosition.NextPosition.Position.Point;
        detecterCollisionBonus;
      end else RetournerPositionPrecedente;
  end else begin
    RetournerPositionPrecedente;
    pointsVie := pointsVie - 2;
  end;

  GBEViewport3D.EndUpdate;
end;

procedure TfMain.RetournerPositionPrecedente;
begin
  GBEPlayerPosition.Position.Point := GBEPlayerPosition.Position.Point + GBEJoystick1.direction * vitesse;
  vitesse := 0;
end;

procedure TfMain.GererTir;
var balle : TTir;
    balleADetruire : boolean;
begin
  for balle in listeBalles do begin
    balleADetruire := false;
    balle.balle.Position.Point := balle.balle.Position.Point + balle.direction;
    if (balle.balle.Position.Point.X > (balle.positionDepart.X + balle.porteeTir)) or
       (balle.balle.Position.Point.X < (balle.positionDepart.X - balle.porteeTir)) or
       (balle.balle.Position.Point.Z > (balle.positionDepart.Z + balle.porteeTir)) or
       (balle.balle.Position.Point.Z < (balle.positionDepart.Z - balle.porteeTir)) then balleADetruire := true;
    if balle.balle.Position.Y < hSol.GetHeight(balle.balle.Position.Point) then balleADetruire := true;

    if DetecterCollisionBalleEnnemis(balle.balle).bool then balleADetruire := true;
    if collisionDummyChilds(dmyArbres, balle.Balle).bool then balleADetruire := true;

    if balleADetruire then begin
      balle.balle.Visible := false;
      listeBalles.Remove(balle);
    end;
  end;
end;

procedure TfMain.Tirer;
var balle : TTir;
begin
  if tirPossible then begin
    if nbBalles > 0 then begin
      tirPossible := false;
      balle.balle := TSphere.Create(nil);
      balle.balle.Parent := hSol;
      balle.vitesseTir := vitesseTir;
      balle.porteeTir := porteeTir;
      balle.balle.MaterialSource := cmsBalle;
      balle.balle.SubdivisionsAxes := 6;
      balle.balle.SubdivisionsHeight := 4;
      balle.balle.Width := 0.2;
      balle.balle.Depth := 0.2;
      balle.balle.Height := 0.2;
      balle.positionDepart := GBEPlayerPosition.Position.Point;
      balle.direction := GBEJoystick1.direction * balle.vitesseTir;
      balle.balle.Position.Point := balle.positionDepart;
      listeBalles.Add(balle);
      dec(nbBalles);
    end;
  end;
end;

procedure TfMain.ChargerEnnemis;
var i : integer;
    uneAnimation : TFloatAnimation;
    unObjet : TFmxObject;
    ennemi : TEnnemi;
begin
  dmyEnnemis.DeleteChildren;
  for I := 0 to maxEnnemis -1 do begin
    ennemi.corps := TSphere.Create(nil);
    ennemi.corps.Parent := dmyEnnemis;
    ennemi.corps.Width := tailleEnnemi;
    ennemi.corps.Height := tailleEnnemi;
    ennemi.corps.Depth := tailleEnnemi;
    ennemi.corps.RotationAngle.Z := 180;
    ennemi.Corps.Position.Point := Point3D(random(360)-180, 0, random(400)-200);
    if ennemi.Corps.Position.X = GBEPlayerPosition.Position.x then ennemi.Corps.Position.X := 25;
    if ennemi.Corps.Position.Z = GBEPlayerPosition.Position.x then ennemi.Corps.Position.Z := 25;

    ennemi.Corps.Position.Y := hSol.GetHeight(ennemi.corps.Position.Point) + demiHauteurEnnemi;
    ennemi.Corps.RotationAngle.Y := random(360);
    ennemi.Corps.Visible := true;
    ennemi.Corps.MaterialSource := lmsEnnemi;
    ennemi.Corps.Tag := maxEnnemiPointDeVie;
    ennemi.Corps.name := 'ennemi'+i.toString;
  end;

  for unObjet in dmyEnnemis.Children do begin
    uneAnimation := TFloatAnimation.Create(nil);
    uneAnimation.parent := unObjet;
    uneAnimation.Interpolation := TInterpolationType.Linear;
    uneAnimation.AutoReverse := true;
    uneAnimation.Loop := true;
    uneAnimation.Duration := random(8)*6+3;
    uneAnimation.OnProcess := deplacerEnnemi;
    if random(10) mod 2 = 0 then begin
      uneAnimation.PropertyName := 'Position.X';
      uneAnimation.StartValue := ennemi.corps.Position.Point.X;
    end else begin
      uneAnimation.PropertyName := 'Position.Z';
      uneAnimation.StartValue := ennemi.corps.Position.Point.Z;
    end;
    uneAnimation.StartValue := (unObjet as TSphere).Position.Point.X;
    uneAnimation.StopValue := random(360)-180;

    uneAnimation.Start;
    listeAnimations.Add(uneAnimation);
  end;
end;

procedure TfMain.deplacerEnnemi(Sender: TObject);
begin
  if (sender is TFloatAnimation) then begin
    ((sender as TFloatAnimation).Parent as TSPhere).Position.y := hSol.GetHeight(((sender as TFloatAnimation).Parent as TSPhere).Position.Point) + demiHauteurEnnemi;
  end;
end;

function TfMain.DetecterCollisionBalleEnnemis(balle : TSphere): TGBECollisionRetour;
var animation: TFloatAnimation;
begin
  result := collisionDummyChilds(dmyEnnemis, balle);
  if result.bool then begin
    result.objet.Tag := result.objet.Tag -1;
    case result.objet.Tag of
      2: (result.objet as TSphere).MaterialSource := lmsEnnemiOrange;
      1: (result.objet as TSphere).MaterialSource := lmsEnnemiRouge;
      0: begin
           listeAnimations[listeAnimations.IndexOfItem((result.objet.Children[0] as TFloatanimation), TDirection.FromBeginning)].StopAtCurrent;
           (result.objet as TSphere).Visible := false;
           dec(nbEnnemisRestants);
      end;
    end;
  end;
end;

procedure TfMain.ChargerNuages;
begin
  GBEClouds.addTextureCloud(tmsNuage1);
  GBEClouds.addTextureCloud(tmsNuage2);
  GBEClouds.addTextureCloud(tmsNuage3);
  GBEClouds.NbClouds := OptionsCommunes.nbNuages;
  GBEClouds.WindSpeed := 0.1;
  GBEClouds.Limits := 2000;
  GBEClouds.Position.Y := -(hSol.height * 0.5) - 15;
  GBEClouds.ActiveWind := true;
end;

procedure TfMain.ChargerArbres;
var I: Integer;
begin
  arbre.Position.Point := Point3D(random(280)-140,0, random(300)-150);
  {$IFDEF MACOS}
    arbre.WrapMode := TMeshWrapMode.original;
    arbre.Scale.Y := 0.5;
    arbre.Position.Y := hSol.GetHeight(arbre.Position.Point) + demiHauteurArbre - arbre.Height * 0.5;
  {$ELSE}
    arbre.Position.Y := hSol.GetHeight(arbre.Position.Point) + demiHauteurArbre;
  {$ENDIF}


  arbre.RotationAngle.Y := random(360);
  arbre.Visible := true;
  arbre.Tag := 1;
  arbre.Parent := hSol;
  dmyArbres.DeleteChildren;
  arbre.Parent := dmyArbres;

  for I := 2 to MaxArbres do begin
    with (arbre.Clone(self) as TModel3D) do begin
      parent := dmyArbres;
      Position.Point := Point3D(random(280)-140,0, random(300)-150);
      {$IFDEF MACOS}
        Position.Y := hsol.GetHeight(Position.Point) + demiHauteurArbre - arbre.Height * 0.5;
      {$ELSE}
        Position.Y := hsol.GetHeight(Position.Point) + demiHauteurArbre;
      {$ENDIF}


      RotationAngle.Y := random(360);
      Visible := true;
      name := 'arbre'+i.ToString;
      Tag := 1;
    end;
  end;
end;

procedure TfMain.gererHerbe;
var distance : TPoint3D;
    aFaire : boolean;
begin
  aFaire := dmyHerbe.ChildrenCount = 0;
  if aFaire then genererHerbe(maxHerbe - dmyHerbe.ChildrenCount);

  TParallel.for(0, dmyHerbe.ChildrenCount -1, procedure (i: integer)
     begin
       distance := TGBEGrass(dmyHerbe.Children[i]).Position.Point - GBEPlayerPosition.Position.Point;
       if (abs(distance.X) > distanceAffichageHerbe) or
          (abs(distance.Y) > distanceAffichageHerbe) or
          (abs(distance.Z) > distanceAffichageHerbe) then
          ReplacerHerbe(TGBEGrass(dmyHerbe.children[i]));
     end);
end;

procedure TfMain.ReplacerHerbe(objet : TGBEGrass);
begin
  objet.Visible := false;
  objet.Position.Point := GBEPlayerPosition.Position.Point + GBEJoystick1.direction * (demiDistanceAffichageHerbe+2);
  objet.Position.X := objet.Position.X + random(distanceAffichageHerbe-4) -demiDistanceAffichageHerbe;
  objet.Position.Z := objet.Position.Z + random(distanceAffichageHerbe-4) -demiDistanceAffichageHerbe;
  objet.rotationAngle.Y := random(180);
  objet.position.Y := hSol.GetHeight(objet.Position.Point) + objet.height * demiHauteurHerbe;
  objet.Visible := true;
end;

procedure TfMain.rJouerClick(Sender: TObject);
begin
  SceneJeu := TSceneJeu.jeu;
end;

procedure TfMain.rOptionsClick(Sender: TObject);
begin
  SceneJeu := TSceneJeu.options;
end;

procedure TfMain.rOptionsOkClick(Sender: TObject);
begin
  EnregistrerConfig;
  AppliquerConfig;
  SceneJeu := TSceneJeu.menu;
end;

procedure TfMain.rScoresClick(Sender: TObject);
begin
  SceneJeu := TSceneJeu.highScores;
end;

procedure TfMain.GenererHerbe(nombre : integer);
var i : integer;
    p: Tpoint3D;
begin
  for I := 1 to nombre do begin
    with TGBEGrass.Create(nil) do begin
      visible := false;
      parent := dmyHerbe;
      p.X := GBEPlayerPosition.Position.X + demiDistanceAffichageHerbe - random(distanceAffichageHerbe);
      p.Z := GBEPlayerPosition.Position.Z + demiDistanceAffichageHerbe - random(distanceAffichageHerbe);

      rotationAngle.Y := random(180);
      RotationAngle.X := 180;
      case i mod 9 of
        1: MaterialSource := tmsHerbe2;
        2, 5: MaterialSource := tmsHerbe3;
        else MaterialSource := tmsHerbe;
      end;

      depth := 0;
      width := 1;
      height := width;
      demiHauteurHerbe := height * 0.5;
      p.Y := hSol.GetHeight(p) + demiHauteurHerbe;
      position.point := p;
      zWrite := true;
      visible := true;
      wind := OptionsCommunes.activerHerbeVent;
      temps := random(30);
    end;
  end;
end;

procedure TfMain.GererPointsVie;
begin
  rPointsVie.Width := pointsVie * (rVie.Width - rPointsVie.Margins.Left - rPointsVie.Margins.Right)* 0.01;
end;

procedure TfMain.LancerNouvellePartie;
var
  Mesh : TMesh;
begin
  GBEJoystick1.Width := 0;
  GBEViewport3D.UsingDesignCamera := false;
  GBEViewport3D.Camera := GBEPlayerPosition.getCamera;

  hSol.loadHeightmapFromResource('heightmap');
  vitesse := 0;
  demiHauteur := GBEPlayerPosition.Height * 0.5;
  GBEJoystick1.deplacement := Point3D(-1,1,1);

  toucheDroite := false;
  toucheGauche := false;
  toucheAvancer := false;
  toucheReculer := false;
  toucheTir := false;
  tirPossible := true;

  nbBalles := maxBalles;
  listeBalles := TList<TTir>.create;
  listeAnimations := TList<TFloatAnimation>.create;
  nbEnnemisRestants := maxEnnemis;
  demiHauteurEnnemi := tailleEnnemi * 0.5;
  chargerEnnemis;
  ChargerBonus;

  if OptionsCommunes.activerNuages then chargerNuages;

  demiHauteurArbre := (arbre.Height) * 0.5;
  for Mesh in arbre.MeshCollection do
    Mesh.MaterialSource := lmsArbre;
  ChargerArbres;

  cameraCarte.position.Z := 0;

  pistolet.Parent := GBEPlayerPosition.getDummyOrientation;

  toucheCoteDroit := false;
  toucheCoteGauche := false;
  demiDistanceAffichageHerbe := distanceAffichageHerbe * 0.5;
  dmyHerbe.DeleteChildren;

  GBEPlayerPosition.Position.point := Point3D(0,0,0);

  pointsVie := maxVie;
end;

procedure TfMain.AppliquerConfig;
begin
  GBEViewport3D.Multisample := OptionsCommunes.filtre;
  pleMer.ActiveWaves := OptionsCommunes.activerVagues;
  maxHerbe := OptionsCommunes.nbHerbe;
  pleMer.SubdivisionsHeight := 30;
  pleMer.SubdivisionsWidth := 30;
  rCarte.Visible := cbAfficherCarte.IsChecked;
  GBEViewport3D.ActiveFPS := OptionsCommunes.afficherFPS;
  lblFPS.Visible := GBEViewport3D.ActiveFPS;
  if rCarte.Visible then begin
    GBEViewport3D.DoClearListView;
    GBEViewport3D.DoAddView(cameraCarte);
  end;

  hSol.ShowLines := OptionsCommunes.afficherLignes;
  layActions.Visible := cbAfficherBoutons.IsChecked;

  case cbFiltre.ItemIndex of
    0: GBEViewport3D.Multisample := TMultisample.None;
    1: GBEViewport3D.Multisample := TMultisample.TwoSamples;
    2: GBEViewport3D.Multisample := TMultisample.FourSamples;
  end;
end;

procedure TfMain.EnregistrerConfig;
begin
  OptionsCommunes.activerVagues := cbAnimerMer.IsChecked;
  OptionsCommunes.activerNuages := cbAnimerNuages.IsChecked;
  OptionsCommunes.afficherFPS := cbAfficherFPS.IsChecked;
  case cbFiltre.ItemIndex of
    0: OptionsCommunes.filtre := TMultisample.None;
    1: OptionsCommunes.filtre := TMultisample.TwoSamples;
    2: OptionsCommunes.filtre := TMultisample.FourSamples;
  end;
  OptionsCommunes.activerHerbe := cbHerbe.IsChecked;
  OptionsCommunes.activerHerbeVent := cbAnimerHerbe.IsChecked;
  OptionsCommunes.nbHerbe := Round(sbNbHerbe.Value);
  OptionsCommunes.nbNuages := Round(sbNbNuage.Value);
  OptionsCommunes.afficherLignes := cbAfficherLignes.IsChecked;

  OptionsCommunes.sauverConfig(fichierOptions);
  if cbAfficherCarte.IsChecked then OptionsCommunes.sauverOption(fichierOptions, 'options', 'afficherCarte', '1')
  else OptionsCommunes.sauverOption(fichierOptions, 'options', 'afficherCarte', '0');
  if cbAfficherBoutons.IsChecked then OptionsCommunes.sauverOption(fichierOptions, 'options', 'afficherBoutons', '1')
  else OptionsCommunes.sauverOption(fichierOptions, 'options', 'afficherBoutons', '0');
end;

procedure TfMain.ChargerConfig;
var ficini : TInifile;
begin
  fichierOptions := TPath.GetHomePath + PathDelim + 'FPSDemo.cfg';
  OptionsCommunes.chargerConfig(fichierOptions);
  cbAnimerMer.IsChecked := OptionsCommunes.activerVagues;
  cbAnimerNuages.IsChecked := OptionsCommunes.activerNuages;
  cbAfficherFPS.IsChecked := OptionsCommunes.afficherFPS;
  cbAfficherCarte.IsChecked := OptionsCommunes.chargerOption(fichierOptions, 'options', 'afficherCarte') = '1';
  cbAfficherBoutons.IsChecked := OptionsCommunes.chargerOption(fichierOptions, 'options', 'afficherBoutons') = '1';
  {$IFDEF ANDROID}
    cbAfficherBoutons.IsChecked := true;
  {$ENDIF}
  cbHerbe.IsChecked := OptionsCommunes.activerHerbe;
  cbAfficherLignes.IsChecked := OptionsCommunes.afficherLignes;
  cbAnimerHerbe.IsChecked := OptionsCommunes.activerHerbeVent;
  sbNbHerbe.Value := OptionsCommunes.nbHerbe;
  sbNbNuage.Value := OptionsCommunes.nbNuages;
  ficini := TInifile.Create(fichierOptions);
  meilleurTemps := ficini.ReadTime('RECORD','meilleurTemps', incMinute(now, 10) - now);
  ficini.Free;
  case OptionsCommunes.filtre of
    TMultisample.None: cbFiltre.ItemIndex := 0;
    TMultisample.TwoSamples: cbFiltre.ItemIndex := 1;
    TMultisample.FourSamples: cbFiltre.ItemIndex := 2;
  end;
end;

procedure TfMain.ChargerBonus;
var i : integer;
    bonusMunition, bonusPointDeVie : TBonus;
begin
  dmyBonus.DeleteChildren;

  for i := 0 to nbBonusMunition-1 do begin
    bonusMunition.boite := TCube.Create(nil);
    bonusMunition.boite.Parent := dmyBonus;
    bonusMunition.boite.Width := taileBonus;
    bonusMunition.boite.Height := taileBonus;
    bonusMunition.boite.Depth := taileBonus;
    bonusMunition.boite.RotationAngle.Z := 180;
    bonusMunition.boite.Position.Point := Point3D(random(360)-180, 0, random(400)-200);
    bonusMunition.boite.tag := 2;
    bonusMunition.boite.Position.Y := hSol.GetHeight(bonusMunition.boite.Position.Point) + (taileBonus * 0.5);
    bonusMunition.boite.RotationAngle.Y := random(360);
    bonusMunition.boite.Visible := true;
    bonusMunition.boite.MaterialSource := lmsBonusMunition;
    bonusMunition.boite.name := 'bonusMunition'+i.toString;
  end;

  for i := 0 to nbBonusPointDeVie-1 do begin
    bonusPointDeVie.boite := TCube.Create(nil);
    bonusPointDeVie.boite.Parent := dmyBonus;
    bonusPointDeVie.boite.Width := taileBonus;
    bonusPointDeVie.boite.Height := taileBonus;
    bonusPointDeVie.boite.Depth := taileBonus;
    bonusPointDeVie.boite.RotationAngle.Z := 180;
    bonusPointDeVie.boite.Position.Point := Point3D(random(360)-180, 0, random(400)-200);
    bonusPointDeVie.boite.tag := 1;
    bonusPointDeVie.boite.Position.Y := hSol.GetHeight(bonusPointDeVie.boite.Position.Point) + (taileBonus * 0.5);
    bonusPointDeVie.boite.RotationAngle.Y := random(360);
    bonusPointDeVie.boite.Visible := true;
    bonusPointDeVie.boite.MaterialSource := lmsBonusPointDeVie;
    bonusPointDeVie.boite.name := 'bonusMunition'+i.toString;
  end;
end;

procedure TfMain.detecterCollisionBonus;
var retour : TGBECollisionRetour;
begin
  retour := collisionDummyChilds(dmyBonus, GBEPlayerPosition);
  if retour.bool then begin
     retour.objet.visible := false;
     case retour.objet.tag of
       1: pointsVie := maxVie;
       2: begin
            nbBalles := maxBalles;
            aniPistoletRecharge.Start;
          end;
     end;
  end;
end;

procedure TfMain.GererVitesseTouche(sensibilite: single);
begin
  if vitesseTouche < maxAccelerationTouche then vitesseTouche := vitesseTouche + accelerationTouche * sensibilite;
end;

end.
