.include "header.inc"

; DIV should stay at $XX for N cycles.

.ifdef AGS
	.define NOPS 24
	.define PASS 38
.endif

.ifdef DMG
	.define NOPS 5
	.define PASS 171
.endif

main:
.repeat NOPS
 	nop
.endr
	ldh a, ($04)
	add $55 - PASS
end:
	ld ($8000), a
	jr end
