\ Copyright 2016 Lars Brinkhoff

: control ( "name" -- c ) char 31 and ;

: no-find-file   s" Sorry, find-file is not implemented" message ;
: find-file   ['] no-find-file s" Find file: " read-from-minibuffer ;
: kill-emacs   reset-terminal bye ;
: suspend-emacs   reset-terminal ." Stopped" cr also quit ;
: help-prefix   s" Don't panic!" message ;
: extended-command  'minibuffer 4 + 50 evaluate ;
: execute-extended-command   ['] extended-command s" M-x " read-from-minibuffer ;

' kill-emacs control C ctl-x-map define-key
' exchange-point-and-mark control X ctl-x-map define-key
' find-file control F ctl-x-map define-key
' execute-extended-command char x esc-map define-key

variable d
: "%d" ( u1 -- a u2 ) 12 swap -3 * + s" %d %d %d %d" rot /string ;
: do-eval   depth d ! 'minibuffer 6 + 50 evaluate  depth d @ - "%d" message ;
: eval-expression   ['] do-eval s" Eval: " read-from-minibuffer ;
' eval-expression char : esc-map define-key

' beginning-of-line control A global-map define-key
' end-of-line       control E global-map define-key
' forward-char      control F global-map define-key
' forward-char      char C    esc-[-map define-key
' backward-char     control B global-map define-key
' backward-char     char D    esc-[-map define-key
' next-line         control N global-map define-key
' next-line         char B    esc-[-map define-key
' previous-line     control P global-map define-key
' previous-line     char A    esc-[-map define-key
' suspend-emacs     control Z global-map define-key
' help-prefix       control H global-map define-key
' undo              control _ global-map define-key
' undo              char u    ctl-x-map define-key
' quoted-insert     control Q global-map define-key
' keyboard-quit     control G global-map define-key

:noname s" C-x-" message  key s" " message ctl-x-map lookup-key ;
  control X global-map define-key
:noname s" ESC-" message  key s" " message esc-map lookup-key ;
  control [ global-map define-key

: esc-[   key esc-[-map lookup-key ;
' esc-[ char [ esc-map define-key
' esc-[ char O esc-map define-key
' beginning-of-buffer char < esc-map define-key
' end-of-buffer char > esc-map define-key

: define-ascii   127 32 do ['] self-insert-command i global-map define-key loop ;
define-ascii

' delete-char control D global-map define-key
' newline control J global-map define-key
' newline control M global-map define-key
' delete-backward-char 127 global-map define-key
