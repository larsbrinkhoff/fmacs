variable point
variable mark

: exchange-point-and-mark   point @ mark @ point ! mark ! ;

: forward-char    1 point +! ;
: backward-char   -1 point +! ;
: next-line       64 point +! ;
: previous-line   -64 point +! ;

: beginning-of-line   point @ -64 and point ! ;
: end-of-line   point @ -64 and 63 + point ! ;
