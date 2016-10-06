\ Copyright 2016 Lars Brinkhoff

.( Fmacs isn't quite done yet )

include search.fth

variable last-command-event
variable 'text

wordlist constant global-map
wordlist constant ctl-x-map
wordlist constant esc-map
wordlist constant esc-[-map

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
'text @ 1024 blank

: th-line   64 * 'text @ + swap cmove ;
s" Welcome to Fmacs, one component of the Forth operating system."  0 th-line
s" Get help              C-h  (Hold down CTRL and press h)" 2 th-line
s" Undo changes          C-x u" 3 th-line
s" Exit Fmacs and Forth  C-x C-c" 4 th-line
s" Suspend to Forth      C-z" 5 th-line
s" (`C-' means use the CTRL key.  `M-' means use the Meta key." 6 th-line
s" Fmacs 0.0.1  Copyright (C) 2016 Lars Brinkhoff" 8 th-line
s" Fmacs comes with ABSOLUTELY NO WARRANTY; type C-h C-w for full" 9 th-line
s" details.  Fmacs is Free Software--Free as in Freedom--so you can" 10 th-line
s" redistribute copies of Fmacs and modify it; type C-h C-c to see" 11 th-line
s" the conditions." 12 th-line
