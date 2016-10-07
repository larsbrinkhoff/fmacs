create 'kill  1024 allot
variable #kill  0 #kill !
variable 'kill-region

: >text   'text @ + ;
: region   point @ >text mark @ >text 2dup max >r min r> ;
: kill-new   over - dup #kill !  'kill swap cmove ;
: kill-end   'kill #kill @ + ;
: kill-append   over - >r kill-end r@ cmove  r> #kill +! ;
: append?   last-command @ 'kill-region @ = ;
: !kill   'kill-region @ this-command ! ;
: kill   append? if kill-append else kill-new then !kill ;
: kill-region ( TODO ) ;
' kill-region 'kill-region !
: kill-ring-save   region kill ;
: yank   'kill #kill @ bounds ?do i c@ insert-char loop ;
