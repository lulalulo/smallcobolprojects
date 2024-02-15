# Small cobol projects
These are just cobol projects I did for fun and to learn a bit of how it works.

# GNUCobol environment

``` sh
# cobc -i
cobc (GnuCOBOL)cobc - 3.2.0
Copyright (C) 2023 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
Written by Keisuke Nishida, Roger While, Ron Norman, Simon Sobisch, Edward Hart
Built     Sep 13 2023 18:16:26
Packaged  Jul 28 2023 17:02:56 UTC
C version "13.2.1 20230801"

build information
build environment        : x86_64-pc-linux-gnu
CC                       : gcc
C version                : "13.2.1 20230801"
CPPFLAGS                 : 
CFLAGS                   : -march=x86-64 -mtune=generic -O2 -pipe
                           -fno-plt -fexceptions -Wp,-D_FORTIFY_SOURCE=2
                           -Wformat -Werror=format-security
                           -fstack-clash-protection -fcf-protection -g
                           -ffile-prefix-map=/build/gnucobol/src=/usr/src/debug/gnucobol
                           -flto=auto -pipe -finline-functions
                           -fsigned-char -Wall -Wwrite-strings
                           -Wmissing-prototypes -Wno-format-y2k
LD                       : /usr/bin/ld -m elf_x86_64
LDFLAGS                  : -Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now
                           -flto=auto -Wl,-z,relro,-z,now,-O1

GnuCOBOL information
COB_CC                   : gcc
COB_CFLAGS               : -march=x86-64 -mtune=generic -pipe -fno-plt
                           -fexceptions -Wp,-D_FORTIFY_SOURCE=2 -Wformat
                           -Werror=format-security
                           -fstack-clash-protection -fcf-protection
                           -ffile-prefix-map=/build/gnucobol/src=/usr/src/debug/gnucobol
                           -flto=auto -pipe -Wno-unused -fsigned-char
                           -Wno-pointer-sign
COB_DEBUG_FLAGS          : -ggdb3 -fasynchronous-unwind-tables
COB_LDFLAGS              : -Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now
                           -flto=auto
COB_LIBS                 : -L/usr/lib -lcob
COB_CONFIG_DIR           : /usr/share/gnucobol/config
COB_COPY_DIR             : /usr/share/gnucobol/copy
COB_MSG_FORMAT           : GCC
COB_OBJECT_EXT           : o
COB_MODULE_EXT           : so
COB_EXE_EXT              : 
64bit-mode               : yes
BINARY-C-LONG            : 8 bytes
endianness               : little-endian
native EBCDIC            : no
extended screen I/O      : ncursesw
variable file format     : 0
sequential file handler  : built-in
indexed file handler     : BDB
mathematical library     : GMP
XML library              : libxml2
JSON library             : json-c

```

