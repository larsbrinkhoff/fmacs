: .c   char postpone literal postpone emit ; immediate
: .d   (.) ;
: .;   .c ; ;
: esc[   27 emit  .c [ ;

: .clear   esc[ .c 2 .c J ;
: .home    esc[ .c H ;
: page     .clear .home ;
: at-xy    esc[ 1+ .d .; 1+ .d .c H ;
