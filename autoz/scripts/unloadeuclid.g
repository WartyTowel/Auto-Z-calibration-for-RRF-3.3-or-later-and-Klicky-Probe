
; Home the needed axes if needed
if !move.axes[0].homed
  G28 X

if !move.axes[1].homed
  G28 Y

G90	      				; Absolute
if {move.axes[1].machinePosition >= 200}
    G1 Y200 F20000
	G1 X111 F20000

G1 Y225 F20000  ; move a bit out of the way
G1 X111 F20000  ; Next to the holder
G1 Y254 F20000  ; Drive next to the holder
G91     	    ; Relativ
G1 X-43 F5000   ; Drive into the holder
G4 S0.3       	; Wait a moment
G1 Y-30 F5000   ; Move away from the holder an keep Euclid behind


; EOF