

# Fonction SWITCH #

---

## Présentation ##


Cette fonction permet de traiter l’information d'état Tout Ou Rien en provenance:
  * d'un ou plusieurs multiplexeurs 74HC165. Le nombre d'entrée répond à la régle: Nmux x 8
  * d’un entrée DI du microcontrôleur
  * ou de tout autre moyen (interrupteur RF, bus…)


Cette information d'état TOR est traité afin de générer des événements transmis sur xPL et disponible également localement via une macro:
  * impulsion _(pulse)_
  * double impulsion _(dpulse)_
  * maintenu _(on)_
  * relâché _(off)_

<img src='http://xplduino.googlecode.com/hg/software/documentation/switch/switch-chronogram.png' />

**Note**:	Il suffit d'associer un de ces état à une commande locale ou distante (via xpl)

exemple:
  * si impulsion sur entrée “bp\_cuisine” alors basculement consigne lumière sur On ou Off (en fonction de l'état actuel)
  * si maintien sur l'entrée “bp\_cuisine” alors demande variation de la lumière “lum\_cuisine” tant que l'arrêt n'est pas demandé si relâchement sur appui long alors on fige l'état de la lumière
  * si impulsion sur l'entrée “monter\_volet” alors demande ouverture volet à 100%. Une nouvelle impulsion commande l’arrêt du volet.


---

## compatibilité matérielle ##

Cette fonction est actuellement compatible avec:
  * carte 16 entrées digitales multiplexées
  * entrée DI de l'arduino


---

## Structure des données ##

```
class Switch
{
    char   name[16+1];            // nom du switch
    byte   DI_address;            // entrée numérique de la fonction de pré-traitement
    byte   status;                // octet contenant les états calculés (cf détails)
    byte   parameter;             // octet contenant un ensemble de paramètres (cf détails)
    byte   maintained_delay;      // délai en ms button pour considérer comme maintenu
    byte   timer_maintained;      // compteur de temps incrémenté tant que l’entrée est à 1 (x100ms)
    byte   timer_doublepulse;     // compteur de temps décrémenté dès qu'une impulsion est détecté
};
// *=variable mémorisé en eeprom
```



---

### Détails des variables: ###

variable “**parameter”**| **nom** | **pos** | **description** |
|:--------|:--------|:----------------|
| ADDR\_HIGH | 0       | 1=LOW, inverse le sens de l’entrée |
| ADDR\_PRE0 | 4       | fonction de pré-traitement associé (cf tableau) |
| ADDR\_PRE1 | 5       | fonction de pré-traitement associé (cf tableau) |
| ADDR\_PRE2 | 6       | fonction de pré-traitement associé (cf tableau) |
| ADDR\_PRE3 | 7       | fonction de pré-traitement associé (cf tableau) |

**Note:**
> Etant donné qu’il y a potentiellement plusieurs types de source possible (carte MUX, une entrée de l'arduino, une information provenant d'un bus onewire...), la fonction applicative _switch_ a besoin de savoir à quelle fonction de prétraitement correspond la _DI\_address_ qu'elle a en mémoire. C’est l’objet des bits de codage _PRE0_ à _PRE4_, détaillés ci-dessous:

|         | **PRE3** | **PRE2** | **PRE1** | **PRE0** |
|:--------|:---------|:---------|:---------|:---------|
| PIN     | 0        | 0        | 0        | 0        |
| MUX     | 0        | 0        | 0        | 1        |
| réserve | 0        | 0        | 1        | 0        |
| réserve | 0	       | 0        | 1        | 1        |
| réserve | 0	       | 1        | 0        | 0        |
| réserve | 0	       | 1        | 0        | 1        |
| réserve | 0	       | 1        | 1        | 0        |
| réserve | 0	       | 1        | 1        | 1        |

variable “**DI\_address”**

Cette variable contient l'adresse de l'entrée physique. En fonction de l'origine de l'entrée, définie par la combinaison ADDR\_PRE0/ADDR\_PRE1, le format interne change.
  * Si l'origine de l'entrée est une entrée digital de xplduino, alors la valeur sera le n° de broche.
  * Si l'origine de l'entrée est une entrée digital d'un multuplexeur, alors la valeur sera la combinaison du n° du multiplexeur et du n° de ligne:
    * 4 bits de poids forts = n° du multiplexeur
    * 4 bits de poids faible = n° de ligne
![http://xplduino.googlecode.com/files/ex_diadress.png](http://xplduino.googlecode.com/files/ex_diadress.png)

> soit le 3eme multiplexeur, 4 entrées.

variable “**status”**| **nom**| **pos**| **description** |
|:-------|:-------|:----------------|
|ADDR\_PULSE | 0      | 1=appui pulse   |
|ADDR\_DPULSE| 1      | 1=appui double pulse |
|ADDR\_ON\_OSR| 2      | 1=appui maintenu, sur un cycle |
|ADDR\_ON\_OSF| 3      | 1=switch relaché, sur un cycle |
|ADDR\_ON| 4      | 1=appui maintenu |
|ADDR\_TEMP | 5      | 1=nouveau niveau de l'entree |
|ADDR\_LEVEL | 6      | 1=niveau precedent de l'entree |

---

/!\ les adresses seront à mettre à jour dans la prochaine version !

## Méthodes ##
**init**
```
init(char *_name, byte _parameter, byte _DI_address, byte _maintained_delay)
```
Cette méthode permet d'initialiser l’instance en fonction des données contenus dans l’eeprom

**update**
```
update(byte _new_level)
```
Cette méthode, à appeler tous les 100ms, permet de calculer le nouvel état de l’entrée.


---


Les méthodes suivantes permettent de récupérer l'état du switch. Elles sont typiquement utilisées dans les scénarios.

**isOff**
```
int isOff()
```
Cette méthode renvoie "1" tant que le switch est "off"

**isOn**
```
int isOn()
```
Cette méthode renvoie "1" tant que le switch est "on"


**isOnOSR**
```
int isOnOSR()
```
Cette méthode renvoie "1" si le switch est "on" pendant un seul cycle programme

**isOnOSF**
```
int isOnOSF()
```
Cette méthode renvoie "1" si le switch est "off" pendant un seul cycle programme


---

## Macros ##


des macros permettent d’accéder simplement à l’état de l’entrée mémorisé dans l’octet “status”