# XPLDUINO – LIGHTING DEVICE #

## 1.	General ##

To communicate with an xplduino lighting device, you must specify a target, defined by:

  * vendor\_id (max 8) : xplduino
  * device\_id (max 8): lighting (can not be changed)
  * instance\_id (max 16): location of the xplduino (garage, house...)

To use lighting library, please include it:
```
#include <lighting_core.h>
```

To use xpl for lighting library, please include it:
```
#include <lighting_xpl.h>
```

To use lighting interfacing with hardware, please include it:
```
#include <lighting_hard.h>
```

## 2.	Supported commands: ##

#### 1.	Change the current level of a device. ####

It allows devices to be controlled. Sending a command that results in the devices state being changed will generate a trigger message, but a command that results in no change (turning off a light that is already off) will not generate a trigger message in response to the command.

Parameters:
```
	command=goto
	device_name: device name to change (max 16)
	level: integer between -1 and 100 %. -1 is a toggle command, 0-100 is a new value in %
	fade: should be anything (not support yet)
```
Layout:

> xpl-cmd
> {
> hop=1
> source=anyvendor-anydevice.anyinstance
> target=xplduino-lighting.instance\_id
> }
> lighting.basic
> {
> command=goto
> device=device\_name
> level={-1-100}
> fade={0-100}
> }