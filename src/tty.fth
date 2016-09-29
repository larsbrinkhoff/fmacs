\ Access TTY settings in Linux/i386.

require targets/x86/asm.fth
require targets/x86/next.fth

\ Linux ioctl syscall.
code linux-ioctl ( arg fd cmd -- )
   eax push,
   ebx push,
   ecx push,
   edx push,
   
   24 esp )# edx mov, \ arg
   16 esp )# ecx mov, \ cmd
   20 esp )# ebx mov, \ fd
   54 # eax mov,
   128 # int,

   edx pop,
   ecx pop,
   ebx pop,
   eax pop,

   12 # esp add,
   next,
end-code

\ TCGETS and TCSETS ioctl calls.
21505 constant tcgets
21506 constant tcsets
: tcgetattr   tcgets linux-ioctl ;
: tcsetattr   tcsets linux-ioctl ;

\ termios
60 constant /termios
create saved-termios  /termios allot
: raw-termios   here /termios erase  1 here 23 + c!  here ;

\ Handle TTY settings.
: save-tty   saved-termios 0 tcgetattr ;
: raw-tty   raw-termios 0 tcsetattr ;
: init-tty   save-tty raw-tty ;
: restore-tty   saved-termios 0 tcsetattr ;
