: .c   char postpone literal postpone emit ; immediate
: .d   (.) ;
: .;   .c ; ;
: esc[   27 emit  .c [ ;

: .clear   esc[ .c 2 .c J ;
: .home    esc[ .c H ;
: .rev     esc[ .c 7 .c m ;
: .unrev   esc[ .c m ;
: .nl      13 emit cr ;
: page     .clear .home ;
: at-xy    esc[ 1+ .d .; 1+ .d .c H ;
