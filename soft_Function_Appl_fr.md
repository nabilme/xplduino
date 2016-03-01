


# Les fonctions applicatives #

## Introduction ##

L’objectif de ce document est de décrire chaque fonction d’un point de vue utilisateur. La description détaillée (variables d’entrée, de sortie...) de chaque fonction est (sera) faite dans un autre document.

xPLduino apporte des fonctions génériques pour gérer les entrées (bouton poussoir, détecteur PIR, compteur d'eau), l'éclairage et les volets roulants. Il fonctionne en 2 modes:
  * centralisé: les commandes se font à distance (via une central domotique xPL, IHM type Domogik, un autre xPLduino…).
  * décentralisé: chaque xPLduino peut fonctionner en toute autonomie. Dans ce mode, les entrées locales commandes les sorties locales. Ce mode est automatiquement activé si le module ne détecte pas de maître sur le réseau.


Les fonctions de bases sont:
  * éclairage (lighting)
  * entrées TOR (switch)
  * volets roulants (shutter)
  * température/hygrométrie (oneWire)

## Eclairage _(LIGHTING)_ ##
**Fonctions**:
  * 0-100% d'intensité lumineuse avec mémorisation du dernier niveau demandé.
  * rampe d'allumage et d'extinction réglable et désactivable (pour les néons ou lampe à économie d'énergie par exemple)
  * extinction automatique avec alerte d’extinction imminente: baisse du niveau d’éclairage si variation disponible, brève extinction dans les autres cas. Possibilité d’annuler l’extinction automatique si appui sur un bouton par exemple.
  * restriction d’éclairage permettant de limiter à un seuil entre 0 et 100%


**Commandes**:
  * nouvelle consigne (0-100%, rampe)
  * télévariateur (allumage sur la dernière valeur demandé si éteint, ou extinction si déjà allumé), augmentation/diminution lente pour réglage fin de la consigne (en restant appuyé sur le bouton poussoir et en le relachant une fois que le niveau d’éclairage souhaité est atteint)

**Retour d’état**:
niveau d’éclairage renvoyé sur demande ou sur changement

## Entrées TOR _(SWITCH)_ ##
Information d'état Tout Ou Rien en provenance:
d'un ou plusieurs multiplexeurs 74HC165. Le nombre d'entrée répond à la régle: Nmux x 8
ou de tout autre moyen (interrupteur RF, bus…)

Cette information d'état TOR est traité afin de générer des événements transmis sur xPL et disponible également localement via une macro:
  * impulsion
  * double impulsion
  * maintenu
  * relâché


Note: Il suffit d'associer un de ces état à une commande locale ou distante (via xpl)
exemple:
  * si impulsion sur entrée bp\_cuisine alors basculement consigne lumière sur On ou Off (en fonction de l'état actuel)
  * si maintien sur l'entrée bp\_cuisine alors demande variation de la lumière tant que l'arrêt n'est pas demandé si relachement sur appui long alors on fige l'état de la lumière

## Volets roulants _(SHUTTER)_ ##
Cette fonction gère les 2 types de volets les plus répandus:
  * volets à commande 230V et arrêt sur butées électromécanique
  * volets à commande par impulsion et arrêt sur butées électronique (bubbendorf)

En fonction du type de volets, la carte d'interface pourra être à relais ou à optocoupleurs.

**Fonction**:
  * 0-100% d'ouverture

**Commandes**:
  * nouvelle consigne (0-100%, rampe)
  * basculement (ouverture partielle sur la dernière valeur demandé si fermé, ou fermeture si déjà ouvert)

**Retour d’état:
  * position théorique du volet renvoyé sur demande ou sur changement**


Note: Un scénario pourra lancer une commande d’ouverture partielle selon l’ensoleillement