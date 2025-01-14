; ---------- ---------- EDIT THESE VALUES FOR YOUR MACHINE ---------- ----------
; 
; https://github.com/pRINTERnOODLE/Auto-Z-calibration-for-RRF-3.3-or-later-and-Klicky-Probe/tree/main/autoz
; 
; ---------- Mesh Setting ----------


set global.comptomesh = 1 ; 1 for compensation to the mesh 2 for compensation to the actual bed


; ---------- Pin Names ----------


; THIS IS THE NAME OF THE PIN YOUR CLICKY PROBE IS CONNECTED TO
set global.clickypinname = "121.io2.in" ; < edit leaving quotes


; THIS IS THE NAME OF THE PIN YOUR Z PIN IS CONNECTED TO
set global.zpinname = "0.io2.in" ; < edit leaving quotes

; ---------- Probe ----------
; Set the type of the probe, clicky and euclid are supported. 
set global.probetype = "euclid"

; ---------- Coordinates ----------


; THIS IS THE DISTANCE FROM THE BODY OF THE CLICKY PROBE TO IT'S OWN TRIGGER POINT 
set global.clickyoffset = 0.45 ; larger values here means nozzle closer to the bed after autoz
 ;global clickyoffset = 0.46 ; larger values here means nozzle closer to the bed after autoz


; THIS IS THE ABSOLUTE X LOCATION OF THE CLICKY WHILE DOCKED
set global.clickydockx = 0


; THIS IS THE ABSOLUTE Y LOCATION OF THE CLICKY WHILE DOCKED
set global.clickydocky = 259


; THIS IS THE RELATIVE DISTANCE AND DIRECTION OF THE CLICKY DOCKING MOVE
set global.clickywipe = 30 ; -30 for a left wipe 30 for a right wipe


; THIS IS THE ABSOLUTE X LOCATION OF THE MECHANICAL Z PIN 
set global.zpinx = 21


; THIS IS THE ABSOLUTE Y LOCATION OF THE MECHANICAL Z PIN
set global.zpiny = 256.5
 

; --------- Z Drive Electrical Params ----------


; THIS IS THE DRIVE CURRENT USED DURING AUTO Z
set global.autozdrivecurrent = 255 


; THIS IS THE MAXIMUM SPEED FOR ALL Z MOVES DURING AUTOZ
set global.autozdrivespeed = 500 


; THIS IS THE MAXIMUM ACCEL FOR ALL Z MOVES DURING AUTOZ
set global.autozdriveaccel = 2500 


; THIS IS THE MAXIMUM JERK FOR ALL Z MOVES DURING AUTOZ
set global.autozdrivejerk = 150 
