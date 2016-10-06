variable point
variable mark

: goto-char   point ! ;
: set-mark   mark ! ;

: point-min   0 ;
: point-max   1023 ;

: exchange-point-and-mark   point @ mark @ goto-char set-mark ;

: forward-char    1 point +! ;
: backward-char   -1 point +! ;
: next-line       64 point +! ;
: previous-line   -64 point +! ;

: beginning-of-line   point @ -64 and goto-char ;
: end-of-line   point @ -64 and 63 + goto-char ;

: beginning-of-buffer   point-min goto-char ;
: end-of-buffer   point-max goto-char ;
