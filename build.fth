\ Build an fmacs executable.

: h-[defined] postpone [defined] ;
include lib/save-image.fth
s" src/" searched
include fmacs.fth
' fmacs is turnkey
s" fmacs" save-image
.( Build-OK )
bye
