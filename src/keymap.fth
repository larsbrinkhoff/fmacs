\ Copyright 2016 Lars Brinkhoff

: key: create ] !csp  does> >r ;

variable tmp
: >str ( c -- a 1 ) tmp c!  tmp 1 ;

: ?execute   if execute else ." Undefined key" then ;
: lookup-key ( c wl -- ) swap >str rot search-wordlist ?execute ;
