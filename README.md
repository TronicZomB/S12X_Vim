# S12X_Vim

Vim language/syntax highlighting for Freescale S12X series MCUs

This is a vim language for the Freescale S12X series MCU assembly language, with support for PEMicro assembler and compiler keywords and formatting. 

In order to add the syntax highlighting, either uncomment all `hi def link` lines at the bottom of the S12X.vim file or add the following to your vimrc file:

    syntax on
    "personal colorscheme choice is slate and this coloring was designed with that in mind
    "comment out the next line if slate colorscheme is not desired
    colorscheme slate
    au BufRead,BufNewFile *.asm set filetype=S12X
    au! Syntax S12X source $VIM\vim74\syntax\S12X.vim
    
    "S12X custom colors that work best with slate theme, personally
    :hi sxKeywords gui=bold term=bold cterm=bold guifg=#0080c0 ctermfg=blue
    :hi sxInhKeywords gui=italic term=italic cterm=italic guifg=#0080c0 ctermfg=blue
    :hi pemicroKeywords gui=bold term= bold cterm=bold guifg=#00bfb6 ctermfg=cyan
    :hi sxPEMicro gui=bold term= bold cterm=bold guifg=#00bfb6 ctermfg=cyan
    :hi sxTodo guifg=yellow ctermfg=yellow
    :hi sxComment guifg=grey40 ctermfg=gray
    :hi sxNumber guifg=#ffa000  
    :hi sxImmediate guifg=#ff7000
    
Now simply copy S12X.vim to your '$VIM\vim74\syntax' directory (for Windows).
