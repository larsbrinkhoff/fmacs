variable 'text
variable 'c

: .c   char postpone literal postpone emit ; immediate
: .d   (.) ;
: .;   .c ; ;
: esc[   27 emit  .c [ ;

: .clear   esc[ .c 2 .c J ;
: .home    esc[ .c H ;
: at-xy    esc[ .d .; .d .c H ;

: .c   'c @ @ emit  1 'c +! ;
: .line   0 64 do .c loop ;
: .screen   'text @ 'c !  16 0 do .line loop ;

: x   point @ 63 and ;
: y   point @ 6 rshift ;
: .cursor   x y at-xy ;

: redisplay   page .screen .cursor ;
