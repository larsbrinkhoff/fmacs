\ Copyright 2016 Lars Brinkhoff

.( Fmacs isn't quite done yet )

include search.fth

variable point
variable mark
variable last-command-event

include keymap.fth
include vt100.fth
include display.fth
include bindings.fth

: get-event   key last-command-event ! ;
: command-execute   last-command-event @ global-map lookup-key ;

here 'text !
: fmacs   redisplay  begin get-event command-execute redisplay again ;
