$ vim --version
VIM - Vi IMproved 7.4 (2013 Aug 10, compiled Aug 26 2014 15:12:00)
MacOS X (unix) version
Included patches: 1-335
Compiled by Homebrew
Huge version without GUI.  Features included (+) or not (-):
+acl             +farsi           +mouse_netterm   +syntax
+arabic          +file_in_path    +mouse_sgr       +tag_binary
+autocmd         +find_in_path    -mouse_sysmouse  +tag_old_static
-balloon_eval    +float           +mouse_urxvt     -tag_any_white
-browse          +folding         +mouse_xterm     -tcl
++builtin_terms  -footer          +multi_byte      +terminfo
+byte_offset     +fork()          +multi_lang      +termresponse
+cindent         -gettext         -mzscheme        +textobjects
-clientserver    -hangul_input    +netbeans_intg   +title
+clipboard       +iconv           +path_extra      -toolbar
+cmdline_compl   +insert_expand   -perl            +user_commands
+cmdline_hist    +jumplist        +persistent_undo +vertsplit
+cmdline_info    +keymap          +postscript      +virtualedit
+comments        +langmap         +printer         +visual
+conceal         +libcall         +profile         +visualextra
+cryptv          +linebreak       +python          +viminfo
+cscope          +lispindent      -python3         +vreplace
+cursorbind      +listcmds        +quickfix        +wildignore
+cursorshape     +localmap        +reltime         +wildmenu
+dialog_con      -lua             +rightleft       +windows
+diff            +menu            +ruby            +writebackup
+digraphs        +mksession       +scrollbind      -X11
-dnd             +modify_fname    +signs           -xfontset
-ebcdic          +mouse           +smartindent     -xim
+emacs_tags      -mouseshape      -sniff           -xsmp
+eval            +mouse_dec       +startuptime     -xterm_clipboard
+ex_extra        -mouse_gpm       +statusline      -xterm_save
+extra_search    -mouse_jsbterm   -sun_workshop    -xpm
   system vimrc file: "$VIM/vimrc"
     user vimrc file: "$HOME/.vimrc"
 2nd user vimrc file: "~/.vim/vimrc"
      user exrc file: "$HOME/.exrc"
  fall-back for $VIM: "/usr/local/share/vim"
Compilation: /usr/bin/clang -c -I. -Iproto -DHAVE_CONFIG_H   -DMACOS_X_UNIX  -Os -w -pipe -march=native -mmacosx-version-min=10.9 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1
Linking: /usr/bin/clang   -L. -L/usr/local/lib -L/usr/local/lib -Wl,-headerpad_max_install_names -o vim        -lm  -lncurses -liconv -framework Cocoa    -framework Python   -lruby.2.0.0 -lobjc
$ ack --version
ack 2.12
Running under Perl 5.18.2 at /usr/bin/perl

Copyright 2005-2013 Andy Lester.

This program is free software.  You may modify or distribute it
under the terms of the Artistic License v2.0.
