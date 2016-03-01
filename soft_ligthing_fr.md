

# Fonction LIGHTING #

---

## Présentation ##


Cette fonction permet de gérer la commande d’éclairage.

fonctions:
  * 0-100% d'intensité lumineuse avec mémorisation du dernier niveau.
  * rampe d'allumage et d'extinction réglable et désactivable (pour les néons ou lampe à économie d'énergie par exemple)
  * restriction d’éclairage permettant de limiter à un seuil entre 0 et 100%
  * extinction automatique avec pré-alerte


commandes:
  * nouvelle consigne (0-100%, rampe)
  * télévariateur (allumage sur la dernière valeur demandé si éteint, ou extinction si déjà allumé)


---

## compatibilité matérielle ##

Cette fonction est actuellement compatible avec:
  * carte 8 sorties relais multiplexées
  * carte 8 dimmers (gradateur)
  * sortie DO de l'arduino


---

## Structure des données ##

```
struct StructLighting
{
 char 	name[16+1];		// nom de l'instance
 int	setpoint;		// consigne demandee
 byte	last_setpoint;		// dernière consigne demandée
 byte	status;			// status (bit0: 1=changement de valeur  en cours)
 byte	parameter*;		// octet contenant un ensemble de paramètres (cf détails)
 byte	DO_address*;	// adresse Digital Output de la commande
 byte	fade*;			// fade rate par défaut (0=fade interdit)
 byte	max_setpoint;		// valeur maximum de la consigne (restriction)
};
// *=variable mémorisé en eeprom
```


---

### Détails des variables: ###

variable “**parameter”**| **nom** | **pos** | **description** |
|:--------|:--------|:----------------|
| ADDR\_POST0  | 6       | fonction de post-traitement associé (cf tableau) |
| ADDR\_POST1   | 7       | fonction de post-traitement associé (cf tableau) |

Note:  Etant donné qu’il y a potentiellement plusieurs types de destinataire de la commande possible (carte MUX, une sortie de l'arduino, une information en direction d'un bus...), la fonction applicative _lighting_ a besoin de savoir à quelle fonction de post-traitement correspond le _DO\_address_ qu'elle a en mémoire. C’est l’objet des bits de codage _POST0_ et _POST1_, détaillés ci-dessous:

|         | **POST0** | **POST1** |
|:--------|:----------|:----------|
| PIN     | 0         | 0         |
| MUX     | 0         | 1         |
| DIMMER  | 1         | 0         |
| réserve | 0	        | 1         |


variable “**status”**| **nom**             | **pos** | **description** |
|:--------------------|:--------|:----------------|
| ADDR\_FADE           |0        | 0= fade autorisé |
| ADDR\_LAST\_DIRECTION |1        |1=dernière direction était UP |
| ADDR\_STATUS         |2        |1=status a été envoyé |
| ADDR\_SP\_CHANGED         |3        |1=consigne a changée |


---

## Méthodes ##

**init**: initialise l’instance en fonction des données contenus dans l’eeprom

**new\_setpoint(consigne, fade)**: force une nouvelle consigne sans tenir compte de la consigne actuelle

**post**: commande les sorties en fonction de la consigne

**toggle(mini, maxi, fade)**: bascule la sortie sur une nouvelle consigne comprise entre mini et maxi en fonction de la consigne actuelle

**stop**: force l'arrêt de la variation

**new\_max\_setpoint(consigne max)**: applique une restriction d’éclairage


---

## Macros ##

N/A