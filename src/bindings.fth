\ Copyright 2016 Lars Brinkhoff

wordlist constant global-map
wordlist constant ctl-x-map
wordlist constant esc-map

: control ( "name" -- c ) char 31 and ;

' quit control C ctl-x-map define-key
:noname point @ mark @ point ! mark ! ; control X ctl-x-map define-key

:noname point @ -64 and point ! ; control A global-map define-key
:noname point @ -64 and 63 + point ! ; control E global-map define-key
:noname 1 point +! ; control F global-map define-key
:noname -1 point +! ; control B global-map define-key
:noname 64 point +! ; control N global-map define-key
:noname -64 point +! ; control P global-map define-key
:noname key ctl-x-map lookup-key ; control X global-map define-key

: self-insert-command   ." INSERT:" last-command-event @ emit ;
: newline   ." NEWLINE" ;

: define-ascii   127 32 do ['] self-insert-command i global-map define-key loop ;
define-ascii

' newline 10 global-map define-key
