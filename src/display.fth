variable 'text
variable 'c
create 'message 64 allot

: x   point @ 63 and ;
: y   point @ 6 rshift ;
: .cursor   x y at-xy ;

: 0message   'message 64 blank ;
0message
: .message   0 17 at-xy 'message 63 type ;
: message   0message 'message swap cmove .message .cursor ;

: .c   'c @ @ emit  1 'c +! ;
: .line   64 0 do .c loop .nl ;
: .mode   .rev ." -UUU:----F1  *scratch*  All  (Fundamental) ----" .unrev ;
: .screen   'text @ 'c !  16 0 do .line loop .mode .message ;

: redisplay   page .screen .cursor ;
