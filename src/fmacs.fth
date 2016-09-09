\ Copyright 2016 Lars Brinkhoff

.( Fmacs isn't quite done yet )

include search.fth

variable point
variable mark

: key: create ] !csp  does> >r ;

variable tmp
: >str ( c -- a 1 ) tmp c!  tmp 1 ;

: ?execute   if execute else ." Undefined key" then ;
: lookup-key ( c wl -- ) swap >str rot search-wordlist ?execute ;

vocabulary esc-map
also esc-map definitions
previous definitions

vocabulary ctl-x-map
also ctl-x-map definitions
key:    quit ;
key:    point @ mark @ point ! mark ! ;
previous definitions

vocabulary global-map
also global-map definitions
key:    point @ -64 and point ! ;
key:    point @ -64 and 63 + point ! ;
key:    1 point +! ;
key:    -1 point +! ;
key:    64 point +! ;
key:    -64 point +! ;
key:    key ['] ctl-x-map lookup-key ;
previous definitions

: fmacs   begin key ['] global-map lookup-key again ;
