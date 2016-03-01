# Introduction #

La carte de commande est l'équivalent d'un arduino survitaminé (Atmega1284P, bootloader série et carte SD) délaissé de la passerelle usart-usb, mais avec un ethernet shield intégré (basé sur le contrôleur ethernet ENC28J60)
)
Voici la version v0.1, opérationnel:

![http://xplduino.org/images/pictures/smb_v01_tag.jpg](http://xplduino.org/images/pictures/smb_v01_tag.jpg)

  1. atmega1284 (128k flash, 16k de RAM), cadencé à 20 Mhz, 2 UART
  1. contrôleur Ethernet ENC28J60
  1. alimentation dc-dc 12v à 24v
  1. lecteur de carte uSD
  1. port RS485 half-duplex
  1. port OneWire hardware (DS2482)
  1. port I2C pour la connexion des cartes filles
  1. slot pour un module RTC
  1. slots pour un shield de personnalisation d'I/O disponible