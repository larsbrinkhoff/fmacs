variable 'c
create 'message 64 allot

: x   point @ 63 and ;
: y   point @ 6 rshift  window-line @ + ;
: .cursor   x y at-xy ;

: 0message   'message 64 blank ;
0message
: message?   window-line @ 16 < ;
: .message   message? if 0 17 at-xy 'message 63 type then ;
: message   format 0message 'message swap cmove .message .cursor ;

: .c   'c @ c@ emit  1 'c +! ;
: .line   64 0 do .c loop .nl ;
: .mode   .rev ." -UUU:----F1  *scratch*  All  (Fundamental) ---------------------" .unrev ;
: .screen   0 window-line @ at-xy  'text @ 'c !
   window-height @ 0 do .line loop .mode .message ;

: reset-terminal   restore-tty  0 17 at-xy ;
: keyboard-quit   s" Quit" message ;

: redisplay   page .screen .cursor ;
