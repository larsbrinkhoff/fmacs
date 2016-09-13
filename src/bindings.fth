\ Copyright 2016 Lars Brinkhoff

wordlist constant global-map
wordlist constant ctl-x-map
wordlist constant esc-map

: control ( "name" -- c ) char 31 and ;

' quit control C ctl-x-map define-key
' exchange-point-and-mark control X ctl-x-map define-key

' beginning-of-line control A global-map define-key
' end-of-line       control E global-map define-key
' forward-char      control F global-map define-key
' backward-char     control B global-map define-key
' next-line         control N global-map define-key
' previous-line     control P global-map define-key
:noname s" C-x-" message  key ctl-x-map lookup-key ;
  control X global-map define-key

: self-insert-command   last-command-event @ s" Insert %c" message ;
: newline   s" Newline" message ;

: define-ascii   127 32 do ['] self-insert-command i global-map define-key loop ;
define-ascii

' newline 10 global-map define-key
' newline 13 global-map define-key
