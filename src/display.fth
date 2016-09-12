variable 'text
variable 'c

: .c   'c @ @ emit  1 'c +! ;
: .line   64 0 do .c loop .nl ;
: .mode   .rev ." -UUU:----F1  *scratch*  All  (Fundamental) ----" .unrev .nl ;
: .message   ;
: .screen   'text @ 'c !  16 0 do .line loop .mode .message ;

: x   point @ 63 and ;
: y   point @ 6 rshift ;
: .cursor   x y at-xy ;

: redisplay   page .screen .cursor ;
