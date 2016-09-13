: 'point   'text @ point @ + ;
: #>end   63 point @ 63 and - ;
: 'end   'text @ point @ -64 and + 63 + ;
: insert-char ( c -- ) 'point dup 1+ #>end move  'point c!  forward-char ;
: delete-char   'point dup 1+ swap #>end move  bl 'end c! ;
: delete-backward-char   backward-char delete-char ;
