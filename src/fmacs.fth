\ Copyright 2016 Lars Brinkhoff

.( Fmacs isn't quite done yet )

include search.fth

variable last-command-event
variable 'text

wordlist constant global-map
wordlist constant ctl-x-map
wordlist constant esc-map

include tty.fth
include vt100.fth
include point.fth
include format.fth
include window.fth
include display.fth
include text.fth
include keymap.fth
include minibuffer.fth
include bindings.fth

: get-event   key last-command-event ! ;
: command-execute   last-command-event @ global-map lookup-key ;
: command-loop   begin get-event 0message command-execute redisplay again ;

: fmacs   init-tty redisplay command-loop restore-tty ;

here 'text !  1024 allot
'text @ 64 char 1 fill
'text @ 64 + 64 char 2 fill
'text @ 128 + 64 char 3 fill
