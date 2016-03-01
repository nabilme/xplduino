

# Fonction SHUTTER #

---

## Présentation ##


Cette fonction permet de gérer la commande de volets roulants (ou stores).

Cette fonction gère les 2 types de volets les plus répandus:
  * volets à commande 230V et butées électromécanique
  * volets à commande 230V et butées électronique (bubbendorf)


En fonction du type de volets, la carte d'interface pourra être à relais ou à optocoupleurs.
Le mode de commande pourra varier (paramétrable):
  1. commande par impulsion (simule l'appuie sur un bp)
  1. commande direct du moteur: montée/baisse
  1. commande direct du moteur: on/off et choix montée/baisse


Fonction:
  * 0-100% d'ouverture

Commandes:
  * nouvelle consigne (0-100%)
  * ouverture totale
  * fermeture totale


---

## Compatibilité matérielle ##

Cette fonction est actuellement compatible avec:
  * carte à sorties relais I2C
  * Digital Output d'un arduino


---

## Structure des données ##

```
class Shutter
{
    char    name[16+1]*;            // nom du volet
    byte    parameter*;             // octet contenant un ensemble de paramètres (cf détails)
    byte    status;                // octet contenant les états calculés (cf détails)
    int     setpoint;              // consigne
    int     cycle_reference_time*;  // temps de reference pour une ouverture/fermeture totale (1=100ms)
    int     current;               // position actuelle
    byte    impulsion;             // timer pour l'impulsion
    byte    DO1*;                   // adresse de la sortie 1
    byte    DO2*;                   // adresse de la sortie 2
// *=variable mémorisé en eeprom
```


---

### Détails des variables: ###

variable **“parameter”**| **nom** | **pos** | **description** |
|:--------|:--------|:----------------|
| ADDR\_PULSE | 0       | 1=commande par impulsion |
| ADDR\_PERMANENT | 1       | 1=par maintien relais up et down |
| ADDR\_TYPE\_PERMANENT\_COMB | 2       | 1=par maintien relais: variante à 1 relais marche et 1 relais sélection up ou down |

Note:  Etant donné qu’il y a potentiellement plusieurs types de destinataire de la commande possible (carte I2C, une sortie de l'arduino, une information en direction d'un bus...), la fonction applicative _shutter_ a besoin de savoir à quelle fonction de post-traitement correspondent les _DO\_address\_up_ et _DO\_address\_down_ qu'elle a en mémoire. C’est l’objet des bits de codage _POST0_ et _POST1_, détaillés ci-dessous:

|         | **pos** | **POST0** | **POST1** |
|:--------|:--------|:----------|:----------|
| PIN	    | 4       | 0	        | 0         |
| MUX	    | 5       | 0	        | 1         |
| I2C     | 6       | 1	        | 0         |
| réserve | 7       | 0	        | 1         |


variable **“status”**| **nom**               | **pos** | **description** |
|:----------------------|:--------|:----------------|
| ADDR\_OPEN            | 0       | 1=commande ouverture volet |
| ADDR\_CLOSE           | 1       | 1=commande fermeture volet |
| ADDR\_OPEN\_PULSE     | 2       | 1=impulsion commande ouverture volet |
| ADDR\_CLOSE\_PULSE    | 3       | 1=impulsion commande fermeture volet |
| ADDR\_STATUS          | 4       | 1=status a été envoyé |
| ADDR\_CMD\_DO1         | 5       | 1=open the shutter |
| ADDR\_CMD\_DO2         | 6       | 1=close the shutter|


---

## Méthodes ##

**opening**: demande ouverture

**closing**: demande fermeture

**set\_current(consigne)**: force une nouvelle consigne

**controle**: traitement de la consigne

**stop**: force l'arrêt du volet

**post**: commande les sorties en fonction du type de commande (impulsion, maintien...)

**reset()**: lance un cycle d’initialisation du volet


---

## Macros ##

N/A