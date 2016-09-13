\ Copyright 2016 Lars Brinkhoff

create out  128 allot
variable 'out
variable nout
variable 'in
variable nin

: in!   nin !  'in ! ;
: in?   nin @ ;
: in@+   'in @ c@  1 'in +!  -1 nin +! ;
: 0out   out 'out !  0 nout ! ;
: out!+   'out @ c!  1 'out +!  1 nout +! ;
: >out   bounds ?do i c@ out!+ loop ;
: out>   out nout @ ;

: percent:   create , does> perform ;

vocabulary percent
also percent definitions
:noname out!+ ;                                         percent: c
:noname >out ;                                          percent: s
:noname base @ >r decimal 0 <# #s #> >out r> base ! ;   percent: d
:noname base @ >r hex     0 <# #s #> >out r> base ! ;   percent: x
previous definitions

variable tmp
: >str ( c -- a 1 ) tmp c!  tmp 1 ;

: percent   in@+ >str also percent evaluate previous ;

: process   in@+ dup [char] % = if drop percent else out!+ then ;
: format ( n*x a1 u1 -- a2 u2 ) in! 0out begin in? while process repeat out> ;
