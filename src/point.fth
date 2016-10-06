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

: >=   < 0= ;
: word?   point @ 'text @ + c@ [char] 0 >= ;
: forward-word   begin word? 0= while forward-char repeat
                 begin word? while forward-char repeat ;
: backward-word   backward-char begin word? 0= while backward-char repeat
                  begin word? while backward-char repeat forward-char ;

: beginning-of-line   point @ -64 and goto-char ;
: end-of-line   point @ -64 and 63 + goto-char ;

: beginning-of-buffer   point-min goto-char ;
: end-of-buffer   point-max goto-char ;
