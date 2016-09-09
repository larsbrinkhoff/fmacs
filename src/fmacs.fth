\ Copyright 2016 Lars Brinkhoff

.( Fmacs isn't quite done yet )

include search.fth

variable point
variable mark

include keymap.fth
include bindings.fth

: fmacs   begin key ['] global-map lookup-key again ;
