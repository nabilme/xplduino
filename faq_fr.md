<img src='http://taino.fr/xplduino/xplduino_400.png' />

# FAQ #

### XPLDuino c’est compliqué, il faut connaître l’électronique et la programmation ###

→ Pas du tout! Une fois l’arduino assemblé, soit les appareils sont plug and play (poussoirs, détecteurs PIR, contacts d’ouverture, volets), soit il suffit de se référer au guide adéquat. La programmation n’est pas utile pour exploiter arduino. C’est un plus. Idem pour l’électronique.

### Ce n’est pas adapté pour ma maison, il n’y a plus de gaines disponibles ###

→ C’est vrai et faux. Le concept xPLDuino s'adapte davantage au neuf et à la rénovation lourde car le câblage idéal est de type “étoile”. Cependant, il est possible de répartir les modules xPLDuino au plus près des pièces à commander, réduisant d’autant le besoin en câblage. Une maison qui aurait un sous-sol et/ou un grenier, voire un faux plafond, peut souvent être équipée sans travaux lourds.

### Je ne vois pas d’interface web, mobile, tactile. C’est un projet déjà obsolète? ###

→ Au contraire : xPLDuino est orienté sur la gestion matérielle. Inspiré des automates industriels, il garantit un temps de réponse très court et s’intègre naturellement dans un tableau électrique. C’est un choix délibéré, notre équipe collabore avec le projet open source Domogik qui est le complément idéal pour gérer l’aspect interactif (interface web, android) et la persistance des données (graphiques de température, etc.). Le choix du protocole ouvert xPL facilite l’interfaçage avec des solutions compatibles, open source ou propriétaires (Homeseer ?).

### Je vois du matériel en vente : est-ce du commerce mal dissimulé? ###

→ Non. Le projet est et restera open source. Pour des raisons évidentes d’économies d’échelle, il est plus intéressant de faire des commandes groupées de matériel. La revente de kits prêts à souder facilite également la tâche à l’utilisateur qui voudrait tester XPlduino, mais ne constitue en aucun cas une source de revenus (zéro bénéfices).

### Il faut du matériel pour souder, je n’y connais rien et je n’ai pas envie de m’embêter avec ça ###

→ Dans ce cas il sera possible d’acheter un module déjà soudé, les modalités restent à voir.

### Si ma maison prend feu à cause de xplduino, mon assurance refusera la prise en charge ###

→ C’est vrai et faux. Les équipements domotiques ne sont a priori pas soumis à homologation ou à des normes spéciales. Cependant, si l’installation électrique dans lequel il s’insère est à la norme NF C15-100, et que les protections adéquates sont utilisées (fusibles...), il n’y a aucune raison qu’xPLDuino remette en cause la conformité de l’installation.

### J’ai déjà un RFXCom, l’arduino ne me servirait à rien ###

→ C’est vrai et faux.  Ce sont des systèmes très complémentaires, qui peuvent communiquer ensemble via XPL. L’arduino apporte la fiabilité (retour d’état) et l’accès à une infinité de capteurs issus du monde industriel accessibles à tarif imbattable. Le RFXCom apporte la facilité de mise en oeuvre. A noter que l’arduino peut également communiquer en émission / réception en RF433, et quelques protocoles domotiques sont déjà gérés (homeeasy / chacon). On peut imaginer l’arduino se substituer à un rfxcom pour certains appareils, et même faire communiquer xPLDuino et RFXCom et via ondes radio.

### Le choix de l’ethernet : Si je regarde la TV par l’ADSL, mes interrupteurs vont sûrement mettre 5s à réagir. Je n’ai aucune garantie sur le temps de réponse du système ###

→ C’est faux. Le routeur est là pour gérer le traffic. Il reste la possibilité de créer un VPN pour scinder le réseau domestique en un réseau PC et un réseau domotique, apportant également une sécurité supplémentaire.

### Si un pirate prend le contrôle de mon routeur, en observant le trafic réseau il peut ensuite contrôler facilement ma maison ###

→ C’est vrai car le protocole xPL n’est pas crypté. Il existe cependant des moyens simples de sécuriser le réseau (voir question précédente).

### Sans interface, comment gérer/paramétrer le système? ###

Nous  proposerons une application java, le xPLDuino Manager, compatible avec la majorité des OS du marché (Windows, Mac OS, Linux), qui permet une configuration complète des appareils xplduino.


### Si ça tombe en panne, je me retrouve avec une installation HS et pas de SAV. Encore plus si le projet est abandonné ###

→ C’est faux. Le projet est Open-Source, ce qui inclut le logiciel et le design du matériel. Ce qui permettra toujours de le maintenir et de le faire évoluer, contrairement aux solutions propriétaires également sujettes à un abandon prématuré. Tant que le projet sera supporté, l’équipe qui est derrière sera là pour accompagner l’utilisateur. En outre le projet est conçu pour rester à la portée des bidouilleurs, avec un peu de patience et de recherches il est toujours possible de maintenir son installation et surtout la faire évoluer.


### J'ai déjà un arduino et une carte relais, puis-je m'en servir pour en faire un xPLDuino ? ###

→ Oui, mais... xPLDuino, c'est à la fois du hardware, et du software.
Chacun est libre d'utiliser le hardware qu'il souhaite.
Mais il est bien entendu que le software est avant tout développé pour supporter le hardware xPLDuino. En aucun cas il ne pourra être reproché à l'équipe de ne pas modifier le software pour être compatible avec telle ou telle carte du marché. Un support technique est néanmoins possible, et le code est suffisamment bien découpé et documenté pour permettre l’ajout de nouveau hardware sans avoir à “tout casser”
Si vous modifiez le code pour supporter un nouveau hardware, merci d’en faire profiter la communauté ;-)