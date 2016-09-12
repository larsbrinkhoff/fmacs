\ Copyright 2016 Lars Brinkhoff

variable tmp
: >str ( c -- a 1 ) tmp c!  tmp 1 ;

: ?execute   if execute else ." Undefined key" then ;
: lookup-key ( c wl -- ) swap >str rot search-wordlist ?execute ;

: define-key ( xt c wl -- ) get-current >r set-current
   >str "create ,  r> set-current  does> perform ;
