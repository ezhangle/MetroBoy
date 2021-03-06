; pass - ags, dmg

.ifdef DMG
.define DELAY 8
.else
.define DELAY 7
.endif

.include "header.inc"

main:
  di
  clear_if

  lcd_off_unsafe
  lcd_on

  nops 114

  set_stat_int_hblank
  set_ie_stat
  ei

  ldh (DIV), a
  halt
  nop


  test_fail

.org STAT_INT_VECTOR
  nops DELAY
  test_finish_div 1
