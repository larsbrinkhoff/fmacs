\ Copyright 2016 Lars Brinkhoff

\ WARNING FOR SENSITIVE READERS:
\ This file contains verbatim control characters.  Your editor or web
\ browswer may not display them correctly.

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
