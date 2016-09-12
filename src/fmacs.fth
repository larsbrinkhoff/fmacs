\ Copyright 2016 Lars Brinkhoff

.( Fmacs isn't quite done yet )

include search.fth

variable last-command-event

include vt100.fth
include point.fth
include display.fth
include keymap.fth
include bindings.fth

: get-event   key last-command-event ! ;
: command-execute   last-command-event @ global-map lookup-key ;

here 'text !
here 64 char 1 fill
here 64 + 64 char 2 fill
here 128 + 64 char 3 fill

: fmacs   redisplay  begin get-event 0message command-execute redisplay again ;
