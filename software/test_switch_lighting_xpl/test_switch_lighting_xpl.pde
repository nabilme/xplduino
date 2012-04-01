//**************************************************************//
//  Name    : test.pde                                          //
//  Author  : R .TISSOT                                         //
//  Date    : 23/02/2012                                        //
//  Version : 0.0                                               //
//  Notes   : Code for testing library                          //
//          :                                                   //
//****************************************************************

#include "switch_core.h"
#include "switch_hard.h"
#include "mux_input.h"


#include "lighting_xpl.h"
#include "lighting_core.h"
#include "lighting_hard.h"

#include "EtherShield_broadcast.h"
#include "clock.h"
#include "MemoryFree.h"

/// à remplacer gromain par xplduino
char vendor_id[8+2]={"gromain\0"};		// vendor id
char device_id[8+2]={"lighting\0"};		// device id
char instance_id[18+1]={"garage\0"};	// instance id

Lighting LIGHTING[LIGHTING_MAX];


Switch SWITCH[SWITCH_MAX];

//~ #define R_DPRE0(i)              bitRead(SWITCH[i].parameter, ADDR_PRE0)
//~ #define R_DPRE1(i)              bitRead(SWITCH[i].parameter, ADDR_PRE1)
long temp=0;

extern byte pulse_100ms;
extern byte pulse_1000ms;
extern byte pulse_500ms;

//~ #define High 0
//~ #define Low 1

//~ // Packet udpPayload, must be big enough to packet and payload
//~ #define udpPayload_SIZE 300
//~ uint8_t buf[udpPayload_SIZE+1];


void setup() {

    //start serial
    Serial.begin(115200);

    delay(1000);

    setup_udp();

    mux_setup();

    clock_setup();

    SWITCH[0].init("bp_salon", 0x11, 0x00, 10); // bp_salon, origine carte MUX et type "on" si l'entrée est à 1, d'adresse "0x01", "on" si entrée à 1 plus de 10*100ms, sinon pulse.
    SWITCH[1].init("bp_cuisine", 0x11, 0x01, 10); 
    SWITCH[2].init("bp_2", 0x11, 0x02, 10); 
    SWITCH[3].init("bp_3", 0x11, 0x03, 10); 
    SWITCH[4].init("bp_4", 0x11, 0x04, 10); 
    SWITCH[5].init("bp_5", 0x11, 0x05, 10); 
    SWITCH[6].init("bp_6", 0x11, 0x06, 10); 
    SWITCH[7].init("bp_7", 0x11, 0x07, 5); 
    SWITCH[8].init("bp_8", 0x11, 0x10, 10); 
    SWITCH[9].init("bp_9", 0x11, 0x11, 10); 
    SWITCH[10].init("bp_10", 0x11, 0x12, 10); 
    SWITCH[11].init("bp_11", 0x11, 0x13, 10); 
    SWITCH[12].init("bp_12", 0x11, 0x14, 10); 
    SWITCH[13].init("bp_13", 0x11, 0x15, 10); 
    SWITCH[14].init("bp_14", 0x11, 0x16, 10); 
    SWITCH[15].init("bp_15", 0x11, 0x17, 10); 

    LIGHTING[0].init("grange", 0, 0x00, 10);
    LIGHTING[1].init("cuisine", 0, 0x04, 10);
    LIGHTING[2].init("wc", 0, 0x04, 10);
    LIGHTING[3].init("lum3", 0, 0x05, 10);
    LIGHTING[4].init("lum4", 0, 0x06, 10);
    LIGHTING[5].init("lum5", 0, 0x05, 10);
    LIGHTING[6].init("lum6", 0, 0x06, 10);
    LIGHTING[7].init("lum7", 0, 0x05, 10);
    
    lighting_hard_init();

    Serial.print("free RAM in kB: ");
    Serial.println(freeMemory());



    LIGHTING[0].toggle(20,50,10,60);
    LIGHTING[1].toggle(0,100,10,60);
    
    //test envoi d'une commande lighting vers un autre xplduino
    lighting_xpl_cmdlighting("grange", "grenier", -1, 2);

}

void loop() {

    clock_update();

    loop_udp();
    
    if(pulse_100ms){
        //~ temp=millis();
        /* recupere les valeurs des multiplexeurs */
        mux_update();

        /* update des switchs */
        switch_hard();
        //~ Serial.println(millis()-temp);
        //~ Serial.println(millis());
        
        
        /* update des lighting */
        lighting_hard();
        
        lighting_hard_status();
    }

}





