<img src='http://taino.fr/xplduino/xplduino_banner2.png' />

# Introduction #

Le projet xPLDuino se décompose en 3 parties:
  * xPLDuino Core
  * xPLDuino Manager
  * xPLDuino Master



## [xPLDuino Core](xPLDuino_Core_fr.md) ##


> xPLDuino Core est le coeur du projet. Il est constitué:
    * une partie matérielle modulaire sur base d'Arduino
      * une carte principale (Atmega12848p + ethernet ENC28J60)
      * de multiples cartes d'interfaces (entrées digitale, relais, dimmers)
    * une partie software en langage C/C++ pour microcontrôleur:
      * gestion bas niveau (matériel)
      * gestion applicative (éclairage, volets roulants, bouttons...)
      * gestion de scenarios

## [xPLDuino Manager](xPLDuino_Manager_fr.md) ##

> Le manager est un logiciel multiplateforme destinée à aider à la configuration applicative des xplduinos


### Exemple d'architecture ###

  * des modules xPLDuino
  * un xPLDuino Master (scénarios évolués)
  * un PC éxécutant xPLDuino Manager (configuration du système)
  * un serveur domotique libre Domogik et son IHM web Domoweb
  * l'appli Domodroïd (IHM mobile Domogik sous androïd)

<img src='http://xplduino.googlecode.com/files/XPLDUINO - Global Overview - v0.jpg'>