

;if global.clickystatus != "attached"
; M400
; M98 P"/macros/autoz/scripts/clickstage.g"
; M400
; G91
; G1 Y60 F6000
; G1 Y-60
; G90
; M400
;M400



; Home the needed axes if needed
if !move.axes[0].homed
  G28 X

if !move.axes[1].homed
  G28 Y

; move z up if not homed to avoid bed collisions
if move.axes[2].homed = false
  G91;relative positioning
  G1 H2 Z15 F1800;unhomed move up                
else
  G91;relative positioning
  G1 Z15 F1800;homed move up
  

G90 		        ; Absolute
G1 X71 Y234 F20000	; Drive in front of the probe
G1 Y254 F6000     	; Pick up the probe
G4 S0.3       		; Wait a moment 
G91                 ; Relative
G1 X40 F5000      	; Move out of the holder
G1 Y-30 F20000      ; Move away from the holder

;EOF