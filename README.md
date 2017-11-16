Possibly a clone of Emacs, written in Forth.  
[![Build Status](https://travis-ci.org/larsbrinkhoff/fmacs.svg?branch=travis)](https://travis-ci.org/larsbrinkhoff/fmacs)
[![Build Status](https://app.wercker.com/status/49e81e84322987ebfe902c5ab09c832e/s/master "wercker status")](https://app.wercker.com/project/byKey/49e81e84322987ebfe902c5ab09c832e)
[![Build Status](https://api.shippable.com/projects/57e5100f7d2e3611000c2f2f/badge?branch=master)](https://app.shippable.com/projects/57e5100f7d2e3611000c2f2f) 

### Limitations
- Only runs in [lbForth](http://github.com/larsbrinkhoff/lbForth).
- It's a block editor, i.e. it's fixed to 16 lines by 64 characters.

### Installation
- Either load it into a running Forth (which the `fmacs.sh` script does),
- Or build a standalone executable with `make`.

### Key bindings
- `M-:` - Evaluate a Forth expression.
- `M-x` - Execute extended command.
- `C-f`, `C-b`, `C-p`, `C-n` - Cursor movement.
- `M-f`, `M-b` - Move forward/backward by word.
- `C-a`, `C-e` - Go to beginning/end of line.
- `M-<`, `M->` - Go to beginning/end of buffer.
- `C-d`, `DEL` - Delete character to the right/left.
- `M-w` - Copy region to kill ring.
- `M-d`, `M-DEL` - Delete word and copy to kill ring.
- `C-y` - Insert text from kill ring.
- `C-j`, `C-m` - Stub; does not break line.
- `C-x C-f` - Stub; does not load file.
- `C-h` - Stub; provide a helpful message.
- `C-x u`, `C-_` - Stub; does not undo.
- `C-q` - Quoted insert.
- `C-g` - Quit.
- `C-@`, `C-SPC` - Set mark.
- `C-x C-x` - Exchange point and mark.
- `C-z` - Return to Forth.  Type `fmacs` to get back to Fmacs.
- `C-x C-c` - Exit Forth.
