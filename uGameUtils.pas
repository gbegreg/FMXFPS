unit uGameUtils;

interface
uses Generics.Collections, FMX.Objects3D, FMX.Types3d, System.Math.Vectors, System.UITypes;

type
  TSceneJeu = (intro, menu, jeu, options, gameover, victoire, aide, highScores);

  TEnnemi = record
    corps : TSphere;
  end;
  TBonus = record
    boite : TCube;
    tag : integer;
  end;
  TTir = record
    porteeTir, vitesseTir : single;
    balle : TSphere;
    direction, positionDepart : TPoint3D;
  end;

const
  tailleJoueur = 2;
  accelerationTouche = 0.1;
  maxAccelerationTouche = 2;
  vitesseMax = 0.2;
  maxBalles = 10;
  vitesseTir = 1.5;
  porteeTir = 100;
  maxEnnemis = 10;
  MaxArbres = 30;
  distanceAffichageHerbe = 50;
  maxVie = 100;
  tailleEnnemi = 5;
  maxEnnemiPointDeVie = 3;
  nbBonusMunition = 5;
  taileBonus = 1.5;
  nbBonusPointDeVie = 3;

var
  maxHerbe : integer;

implementation

end.
