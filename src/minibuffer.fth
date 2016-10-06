create 'minibuffer   128 allot
variable saved-point
variable saved-'text
variable callback

: 0minibuffer ( a u -- ) 'minibuffer 64 blank  'minibuffer swap move ;

: quit-minibuffer   0 window-line !  16 window-height !
   ['] newline 13 global-map define-key
   ['] keyboard-quit 7 global-map define-key
   saved-'text @ 'text !  saved-point @ point ! ;

: exit-minibuffer   quit-minibuffer  callback perform ;

: read-from-minibuffer ( xt a u -- ) point @ saved-point !  dup point !
   0minibuffer  'text @ saved-'text !  'minibuffer 'text !  1 window-height !
   17 window-line !  callback !  ['] exit-minibuffer 13 global-map define-key
   ['] quit-minibuffer 7 global-map define-key ;
