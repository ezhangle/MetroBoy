.include "header.inc"

; LCD on -> OAM int while in a jr loop

;-------------------------------------------------------------------------------
  
main:

  lcd_off_unsafe
  set_stat_int_oam
  set_ie_stat
  clear_if
  ei

  ldh (DIV), a
  nops 0

  lcd_on
- jr -

  test_fail

.org STAT_INT_VECTOR
  test_finish_div 1

;-------------------------------------------------------------------------------