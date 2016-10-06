create 'kill  1024 allot
variable #kill  0 #kill !

: >text   'text @ + ;
: region   point @ >text mark @ >text 2dup max >r min r> ;
: kill   over - dup #kill !  'kill swap cmove ;
: kill-end   'kill #kill @ + ;
: +kill   over - >r kill-end r@ cmove  r> #kill +! ;
: kill-ring-save   region kill ;
: yank   'kill #kill @ bounds ?do i c@ insert-char loop ;
