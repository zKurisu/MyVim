Vim�UnDo� �XW�Ƒ�����WC-oN�seU��a�Y�xxa   �                                   b�H_    _�                     Q        ����                                                                                                                                                                                                                                                                                                                                                             b��     �   Q   S   �       �   Q   S   �    5�_�                    R       ����                                                                                                                                                                                                                                                                                                                                                             b��     �   Q   S   �      "j"5�_�                    R       ����                                                                                                                                                                                                                                                                                                                                                             b��     �   Q   S   �      ""5�_�                    R       ����                                                                                                                                                                                                                                                                                                                                                             b��     �   Q   S   �      "5�_�                    R       ����                                                                                                                                                                                                                                                                                                                                                             b��    �   R   T   �      "�   R   T   �    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b��     �         �       �         �    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b��     �         �      ""5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             b��     �         �      "5�_�      
           	      "    ����                                                                                                                                                                                                                                                                                                                                                             b��    �         �       �         �    5�_�   	              
   /        ����                                                                                                                                                                                                                                                                                                                                                             b�!     �   /   1   �       �   /   1   �    5�_�   
                 0       ����                                                                                                                                                                                                                                                                                                                                                             b�!     �   /   1   �      ""5�_�                    0       ����                                                                                                                                                                                                                                                                                                                                                             b�!     �   /   1   �      "5�_�                    0       ����                                                                                                                                                                                                                                                                                                                                                             b�!     �   0   2   �       �   0   2   �    5�_�                    1       ����                                                                                                                                                                                                                                                                                                                                                             b�!&    �   0   2   �      nnoremap <F5>5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b�$�     �         �       �         �    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b�$�     �         �      ""5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b�$�     �         �      "5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b�%     �         �       �         �    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b�%!     �         �       �         �    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b�%5    �         �       �         �    5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             b�H^     �               �   "Basic Settings {{{   .set fileencodings=ucs-bom,utf-8,default,latin1   ?set foldlevel=99     "Open all the folder when the file is open   5set autoindent       "adjust the indent automatically   "set smartindent   "set cindent   0set ts=4             "set the Tap key is 4 space   Fset shiftwidth=4     "when switch to the next line, it will be 4 space   6set expandtab        "set the distance of tab is space   ,"To save the file when you switch the buffer   
set hidden   #"Recommend vim setting of vim-mundo   set undofile   set undodir=~/.vim/undo   "Tweak the behavior of Mundo   let g:mundo_width=60   let g:mundo_preview_hight=40   let g:mundo_right=1   "Set the theme of vim   set background=dark   colorscheme gruvbox   let g:airline_theme='gruvbox'   "End of the Basic Settings }}}   "Mapping{{{   "Kerboard begin   let maplocalleader = "'"   let mapleader = ";"   imap jk <esc>   nmap <space> :   &map <silent> <C-e> :NERDTreeToggle<CR>   inoremap ( ()<esc>i   inoremap [ []<esc>i   "inoremap < <><esc>i   inoremap <> <><esc>i   inoremap { {}<esc>i   inoremap ` ``<esc>i   inoremap ' ''<esc>i   inoremap " ""<esc>i   (nnoremap <leader>rc :vsplit $MYVIMRC<cr>   )nnoremap <leader>src :source $MYVIMRC<cr>   )"to enter a \n when in the mode of normal    nnoremap <leader><cr> i<cr><esc>   "inoremap { {<CR>}<esc>o   $onoremap in( :<c-u>normal! f(vi(<cr>   K"add '' to a word while leaving the cursor in place, 'mq' store the current   D"location in mark 'q', '`q' return to the exact location of mark 'q'   nnoremap 'w mqviwdi''<esc>hp`q    4"add \"" to a word while leaving the cursor in place   nnoremap "w mqviwdi""<esc>hp`q    -"add semicolon at the end of the current line   nnoremap ;; mqA;<esc>`   "Toggle the undo graph   nnoremap <F5> :MundoToggle<CR>   $"skip out the block like ) > ] } " '   inoremap )) <esc>f)a   inoremap }} <esc>f}a   inoremap >> <esc>f>a   inoremap ]] <esc>f]a   inoremap "" <esc>f"a   inoremap '' <esc>f'a   $"add \v automatically when i search    
nmap / /\v   "grep operator of one word   ^nnoremap <leader>g :execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>    nnoremap <leader>n :cnext<cr>   !nnoremap <leader>N :cprevious<cr>   "Keyboard en   "}}}   
"Plugin{{{   set nocompatible   filetype off       "vim-plug begin   call plug#begin()   Plug 'scrooloose/nerdtree'   XPlug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}    Plug 'vim-airline/vim-airline'   Plug 'godlygeek/tabular'   Plug 'preservim/vim-markdown'   Plug 'lervag/vimtex'   Plug 'ervandew/supertab'   *Plug 'joker1007/vim-markdown-quote-syntax'   Plug 'tamlok/vim-markdown'   >Plug 'yggdroot/leaderf', { 'do': ':LeaderfInstallCExtension' }   Plug 'morhetz/gruvbox'   2Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}   Plug 'junegunn/fzf.vim'   Plug 'mileszs/ack.vim'   H"To peek the contents of the register when you hit " or @ in normal mode   Plug 'junegunn/vim-peekaboo'    "Visualising the undo tree   Plug 'simnalamburt/vim-mundo'   call plug#end()   "vim-plug end   filetype plugin indent on   syntax enable   
set nomore   set noswapfile   set viminfo=   ""}}}   "Markdown config {{{   <let g:instant_markdown_logfile = '/tmp/instant_markdown.log'    "Uncomment to override defaults:    "let g:instant_markdown_slow = 1   $let g:instant_markdown_autostart = 1   -"let g:instant_markdown_open_to_the_world = 1   0"let g:instant_markdown_allow_unsafe_content = 1   2"let g:instant_markdown_allow_external_content = 0   "let g:instant_markdown_mathjax = 1   "let g:instant_markdown_mermaid = 1   &"let g:instant_markdown_autoscroll = 0   "let g:instant_markdown_port = 8888   ""let g:instant_markdown_python = 1   "End of markdown config   ""}}}   "vimtex config{{{   N" Viewer options: One may configure the viewer either by specifying a built-in   " viewer method:   $let g:vimtex_view_method = 'zathura'       " Or with a generic interface:   +let g:vimtex_view_general_viewer = 'okular'   Glet g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'       N" VimTeX uses latexmk as the default compiler backend. If you use it, which is   M" strongly recommended, you probably don't need to configure anything. If you   J" want another compiler backend, you can change it as follows. The list of   N" supported backends and further explanation is provided in the documentation,   " see ":help vimtex-compiler".   )let g:vimtex_compiler_method = 'latexrun'       K" Most VimTeX mappings rely on localleader and this can be changed with the   D" following line. The default is usually fine and is the symbol "\".   "let maplocalleader = ","   "End of the vimtex config   ""}}}   #"some personalize configuration {{{   "friendly ASCII-art    "echo "(>^.^<)"   "end of the ASCII-art   set nu   set hlsearch   set incsearch   "" }}}   "Abbreviation {{{   "copy right and qq mail   iabbrev qq@@ 2694783083@qq.com   >iabbrev mycopy Copyright 2022 Jie Orkarin, all rights reserved   "pretext of the shell script   iabbrev preshell #!/bin/bash<cr>#Program:<cr>#<tab><cr>#History:<cr>#time:<tab>author:<tab>modify<cr>PATH=<cr>export<space>PATH   "create a partition line   �iabbrev mkpl -----------------------------------------------------------------------------------------------------------------------------------------------------------    1"""the abbreviation using in the project work {{{   ""iabbrev O0 NOTE_O0,   ""   ""iabbrev L1 NOTE_L1,   ""iabbrev M1 NOTE_M1,   ""iabbrev H1 NOTE_H1,   ""   ""iabbrev L2 NOTE_L2,   ""iabbrev M2 NOTE_M2,   ""iabbrev H2 NOTE_H2,   ""   ""iabbrev L3 NOTE_L3,   ""iabbrev M3 NOTE_M3,   ""iabbrev H3 NOTE_H3,   ""   ""iabbrev L4 NOTE_L4,   ""iabbrev M4 NOTE_M4,   ""iabbrev H4 NOTE_H4,   ""   ""iabbrev L5 NOTE_L5,   ""iabbrev M5 NOTE_M5,   ""iabbrev H5 NOTE_H5,   ""   ""iabbrev V6 NOTE_V6,   ""iabbrev L6 NOTE_L6,   ""iabbrev M6 NOTE_M6,   ""iabbrev H6 NOTE_H6,   ""   ""iabbrev L7 NOTE_L7,   ""iabbrev M7 NOTE_M7,   ""iabbrev H7 NOTE_H7,   ""   ""iabbrev 32N THIRTEENT_NOTE,   ""iabbrev 16N SIXTEENTH_NOTE,   ""iabbrev 08N ____EIGHT_NOTE,   ""iabbrev 04N __QUARTER_NOTE,   ""iabbrev 02N _____HALF_NOTE,   ""iabbrev 00N ____WHOLE_NOTE,   ""   ""iabbrev 16P PSIXTEENT_NOTE,   ""iabbrev 08P ___PEIGHT_NOTE,   ""iabbrev 04P _PQUARTER_NOTE,   ""iabbrev 02P ____PHALF_NOTE,   ""iabbrev 00P ___PWHOLE_NOTE,   ""   ""iabbrev 16R SIXTEENTH_REST,   ""iabbrev 08R ____EIGHT_REST,   ""iabbrev 04R __QUARTER_REST,   ""iabbrev 02R _____HALF_REST,   ""iabbrev 00R ____WHOLE_REST,   ""End of the project part  }}}   #"End of the abbreviation part   }}}   "Autocommand {{{   3"Javascript file setting -----------------------{{{   augroup filetype_javascript   		autocmd!   M        autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>   augroup END   ""}}}   2"Python file setting --------------------------{{{   augroup filetype_python   		autocmd!   H        autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>   augroup END   "}}}   3""HTML file setting ----------------------------{{{   augroup filetype_html    		autocmd!   4        autocmd BufWrite,BufRead *.html :normal gg=G   augroup END   "}}}   6"Vimscript file setting ---------------------------{{{   augroup filetype_vim   		autocmd!   0	autocmd FileType vim setlocal foldmethod=marker   augroup END   "}}}    "End of the autocommand part }}}5��