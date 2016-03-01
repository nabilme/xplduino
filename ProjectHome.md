<img src='http://www.xplduino.org/templates/favourite/images/logo/logo%20xplduino%20285x84.png' />

### ENGLISH ###
xPLDuino is a french home automation project. It relies on a network of electronic cards (based on Arduino open source design), each one having a microcontroller so that they can be totally or partially independant.
Each xPLDuino module can communicate over Ethernet,  with each other or with any xPL compatible device (Domogik, xPLHal, RFXCom, SqueezeBox, ...). Most of the documentation is in french at the moment. It will be translated in english later.

### FRENCH ###
xPLDuino est un projet de domotique. Il s'appuie sur un réseau de modules électroniques (basés sur la plate-forme Open Source Arduino), chacun doté d'un microcontrôleur le rendant partiellement ou totalement indépendant. Chaque module xPLDuino peut communiquer avec un autre xPLDuino, ou tout autre appareil compatible avec le protocole xPL (Domogik, xPLHal, RFXCom, SqueezeBox …).

Contact:
- xplduino at gmail.com
- IRC: #xplduino on freenode

### NEWS ###


#### 01/10/2012 ####

Today I finalized the first functionnal code of the dimmer board:
the variation of luminosity is fine
changing or reading the state of each channel via I2C is ok :)

#### 22/09/2012 ####

No news since a moment, but we works !

Yesterday, we ordered the PCB for the new main board and the dimmer board:


<img src='https://lh3.googleusercontent.com/-PbaZrhbKUPs/UF1ckE5ZlnI/AAAAAAAAB9o/ozkUjMy6Xpg/w218-h361-n-k/SMB.brd.png' />

<img src='https://lh3.googleusercontent.com/-6gxvKqO5Q28/UF1ck3bmKtI/AAAAAAAAB9o/UUPWqFD6ySw/w408-h361-n-k/dimmer.brd.png' />

Now, we are waiting about 3-4 weeks to receive PCB. The time for us to finalize the BOM and ordering the components...

#### 20/06/2012 ####

2x 8 relays boards linked to 1x 16 digitals inputs via I2C bus:

<img src='https://lh4.googleusercontent.com/-UhUdPQCCqws/T-InzX78SoI/AAAAAAAAB6I/bzxlOVjoWFc/s1024/2012-06-15%252010.05.01.jpg' />


... and a configuration of one 8 relays board linked to 1x 16 digitals inputs and to xplduino main board via I2C bus:

<img src='https://lh4.googleusercontent.com/-ke56m9_CzRc/T-In4_ySJcI/AAAAAAAAB6Q/RBEiq0I8dpU/s1024/2012-06-14%252011.46.19.jpg' />


<img src='https://lh5.googleusercontent.com/-HSL_USCSjZc/T-In-Ppu9-I/AAAAAAAAB6g/Qvh2ysrlsJ0/s1024/2012-06-14%252011.45.56.jpg' />

Not so bad ? :-)

#### 31/05/2012 ####
We are now waiting for the command of news PCB's (digitals inputs I2C board and 8 relays I2C boards).
We are thinking about the xPLDuino Manager. It's the software which will permit to configure each xPLDuino easily. It should be wrote in Java, to be multiplateforms.
Features:
- auto discovery of the module on network
- retreive the configuration of the module and modify it
- creation and modification of the scenarios dynamically and graphically
and more...
If a Java developper is interested to help us, he's (or she's !) welcome ;)


#### 03/04/2012 ####
First tests using xPL and two xPLDuino are successful. Domogik control and feedback are working as well. The lighting library was used together with a Relay board. Latency is not  perceptible.

#### 29/03/2012 ####
The Magjack issue is fixed ! the new reference (Hanrun) has been tested with success. The pcb will be modified for the next revision to take account the difference of pinout of the leds.

#### 15/03/2012 ####

The first prototype is alive!
After a minor fix, our prototype is fully fonctionnal. A first batch order should come soon. [Details here](main_board_fr.md). More boards coming soon!

<img src='http://xplduino.googlecode.com/files/xplduino_proto_1.png' />