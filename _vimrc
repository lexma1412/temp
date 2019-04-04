if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=$HOME/vimfiles/bundle/neobundle.vim/
set runtimepath+=$HOME/ruby240/bin
call neobundle#begin(expand('$HOME/vimfiles/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

NeoBundle 'Shougo/unite.vim'

NeoBundle 'Shougo/denite.nvim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set nocompatible

source $VIMRUNTIME/vimrc_example.vim
set encoding=utf-8
set nu
set tabstop=2
set nowrap
set shiftwidth=2
set softtabstop=2
set expandtab
set listchars+=space:·
set listchars+=tab:>-
"set list
set shell=C:\Windows\SysWOW64\cmd.exe

set textwidth=79

"set colorcolumn=80

"" Yank and paste to/from clipboar2
set clipboard=unnamed

"" NO undo file
set noundofile

"" NO backup
set nobackup
set nowritebackup

"Set default folder when tabedit command
cd D:01_GIT\

"Set font of VIM
set guifont=Source_Code_Pro:h12:cANSI

filetype plugin on

syntax on

"set noautoindent

"" Folding
set foldmethod=syntax "fold based on ident
set foldnestmax=10    "deepest fold is 10
set nofoldenable      "do not fold by default
set foldlevel=1       "personal setting
autocmd BufRead,BufNewFile *.mak set noexpandtab tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.py set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd BufRead,BufNewFile *.pl set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd BufRead,BufNewFile *.pm set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd BufRead,BufNewFile *.c set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd BufRead,BufNewFile *.h set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd BufRead,BufNewFile *.arxml set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set background=dark
set colorcolumn=
"au BufWinEnter *.c,*.h,*.pm,*.pl let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
au FileType c,cpp,perl let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)
au FileType c,cpp,perl set colorcolumn=81
au FileType make,vim,text,arxml,markdown,sh,python,dosbatch,nerdtree set colorcolumn=
au FileType make,vim,text,arxml,markdown,sh,python,dosbatch,nerdtree call clearmatches()
"autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

if exists("syntax_on")
    syntax reset
endif
"" Set color
hi LineNr		   ctermfg=grey
hi Comment		 ctermfg=cyan
hi PreProc		 ctermfg=Magenta
hi Constant		 ctermfg=green
hi Normal		   ctermfg=grey
hi Special		 ctermfg=Magenta
hi Identifier	 ctermfg=yellow
hi Type     	 ctermfg=yellow
hi Statement 	 ctermfg=yellow

hi ColorColumn ctermbg=yellow

let g:pythoncomplete_completions = 0
let g:acp_behaviorPythonOmniLength = 0

let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

" Auto repeat setting
nmap <Space>. <Plug>(autorepeat)
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"Grep.vim config================================================================
"This configuration should be set as default, this config is reference
"let Grep_Path = 'D:\02_Cygwin64\bin\grep.exe'
"let Fgrep_Path = 'D:\02_Cygwin64\bin\fgrep.exe'
"let Egrep_Path = 'D:\02_Cygwin64\bin\egrep.exe'
"let Agrep_Path = 'D:\02_Cygwin64\bin\agrep.exe'
"let Grep_Find_Path = 'D:\02_Cygwin64\bin\find.exe'
"let Grep_Xargs_Path = 'D:\02_Cygwin64\bin\xargs.exe'

"let Grep_Default_Filelist = '*.c *.h *.cpp *.hpp *.asm *.py *.arxml *.pm *.pl'
"let Grep_Options = '-i'
"let Grep_Skip_Dirs = ''
"let Grep_Skip_Files = '*.bak *~'
"let Grep_OpenQuickfixWindow = 1
"let Grep_Find_Use_Xargs = 0
"let Grep_Xargs_Options = '--null'
"let Grep_Cyqwin_Find = 1
"let Grep_Null_Device = 'NUL'
"let Grep_Shell_Escape_Char = ''
"let Grep_Shell_Quote_Char = ''
"===============================================================================

"winmanager setting
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>
map <c-w><c-t> :WMToggle<cr>

"" Trinity setting
" Open and close all the three plugins on the same time
nmap <F8>   :TrinityToggleAll<CR>
" Open and close the srcexpl.vim separately
nmap <F9>   :TrinityToggleSourceExplorer<CR>
" Open and close the taglist.vim separately
nmap <F10>  :TrinityToggleTagList<CR>
" Open and close the NERD_tree.vim separately
nmap <F11>  :TrinityToggleNERDTree<CR>

" Toggle tags list
nmap <F2>   :TlistToggle<CR>

" Open NERDtree
nmap <F3>   :NERDTree<CR>

" Open NERDtree
nmap <F3><F3>   :NERDTreeClose<CR>
let NERDTreeShowHidden = 1
let NERDTreeWinSize = 45
let g:nerdtree_open_cmd = 'powershell -c'
nnoremap `<Down> <C-W><C-J>
nnoremap `<Up> <C-W><C-K>
nnoremap `<Right> <C-W><C-L>
nnoremap `<Left> <C-W><C-H>
noremap <S-F1> :set list!<CR>
inoremap <S-F1> <C-o>:set list!<CR>
cnoremap <S-F1> <C-c>:set list!<CR>
noremap <S-F2> :set expandtab!<CR>
inoremap <S-F2> <C-o>:set expandtab!<CR>
cnoremap <S-F2> <C-c>:set expandtab!<CR>
nnoremap <C-h> :noh<CR>
nnoremap ff :Rgrep<CR>
nnoremap fs :Rfindstring<CR>
nnoremap tn :tabnew<CR>
nnoremap fv :vnew<CR>
nnoremap fn :new<CR>

"Cscope mapping
" Hitting CTRL-space *twice* before the search type does a vertical
" split instead of a horizontal one

"nmap <C-Space><C-Space>s
"	\:vert scs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space><C-Space>g
"	\:vert scs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space><C-Space>c
"	\:vert scs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space><C-Space>t
"	\:vert scs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space><C-Space>e
"	\:vert scs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space><C-Space>i
"	\:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-Space><C-Space>d
"	\:vert scs find d <C-R>=expand("<cword>")<CR><CR>

""""" Using 'CTRL-spacebar' then a search type makes the vim window
""""" split horizontally, with search result displayed in
""""" the new window.

"nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE settings for vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" This file contains some boilerplate settings for vim's cscope interface,
" plus some keyboard mappings that I've found useful.
"
" USAGE:
" -- vim 6:     Stick this file in your ~/.vim/plugin directory (or in a
"               'plugin' directory in some other directory that is in your
"               'runtimepath'.
"
" -- vim 5:     Stick this file somewhere and 'source cscope.vim' it from
"               your ~/.vimrc file (or cut and paste it into your .vimrc).
"
" NOTE:
" These key maps use multiple keystrokes (2 or 3 keys).  If you find that vim
" keeps timing you out before you can complete them, try changing your timeout
" settings, as explained below.
"
" Happy cscoping,
"
" Jason Duell       jduell@alumni.princeton.edu     2002/3/7
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim...
"if has("cscope")
""
""    """"""""""""" Standard cscope/vim boilerplate
""
""    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
""    set cscopetag
""
""    " check cscope for definition of a symbol before checking ctags: set to 1
""    " if you want the reverse search order.
""    set csto=0
""
""    " add any cscope database in current directory
""    if filereadable("cscope.out")
""        cs add cscope.out
""    " else add the database pointed to by environment variable
""    elseif $CSCOPE_DB != ""
""        cs add $CSCOPE_DB
""    endif
""
""    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
""   nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
""    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
""    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>

""    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
""    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
""    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>


    " Hitting CTRL-space *twice* before the search type does a vertical
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

""    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
""    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
""    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
""    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
"endif

"" XML folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
au FileType arxml setlocal foldmethod=syntax
nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>


"" CLANG complete
command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78
" air-line
let g:airline_powerline_fonts = 1

"" Vim Redmine
let g:redmine_auth_site = 'http://172.29.143.164'
let g:redmine_auth_key  = '7435f27f06c158c115b44340d53059c3bd46c39e'
let g:redmine_author_id = '393'
let g:redmine_project_id = 'rvc-prj-00835'

let g:unite_yarm_server_url = 'http://172.29.143.164'
let g:unite_yarm_access_key = '7435f27f06c158c115b44340d53059c3bd46c39e'
let g:unite_yarm_limit = 25
let g:unite_yarm_backup_dir = 'D:\tmp\'

autocmd BufWritePre * :%s/\s\+$//e
autocmd vimenter * NERDTree

"au BufNewFile,BufRead *.n3,*.ttl setlocal filetype=n3
" Unite configuration ====================================================================
"if(exists("g:acp_behavior"))
"    let g:acp_behavior.unite=[]
"else
"    let g:acp_behavior={'unite':[]}
"endif

"autocmd FileType unite AcpLock
"autocmd FileType unite AcpUnlock

let g:unite_redraw_hold_candidates = 100000
"let g:unite_update_time = 1000
let g:unite_source_rec_unit = 4000
let g:unite_source_rec_max_cache_files = 0
call unite#custom#source('file_rec/git,file_rec/async,file_rec/git', 'max_candidates', 0)

call unite#custom#source('file,file/new,buffer,file_rec,file_rec/async',
     \ 'matchers', ['converter_relative_word', 'matcher_fuzzy'])

"call unite#custom#source('buffer,file,file_rec,file_rec/async',
"     \ 'sorters', 'sorter_rank')

"call unite#custom#source('file_rec/async,file_rec', 'required_pattern_length', 2)

call unite#custom#profile('default', 'context', {
      \ 'winheight': 20,
      \ 'direction': 'botright'
      \ })

call unite#custom_source('file_rec,file_rec/git,file_rec/async,grep',
      \ 'ignore_pattern', '\.git\|\.o\|\.d\|\.htm\|\.srec\|\.md\|\.xlsx\|\.xls\|\.htm\|\.out\|\.log\|\.axf')

call unite#custom_source('file,file_rec,file_rec/async,file_rec/git',
      \ 'ignore_globs', [])

let g:unite_enable_start_insert = 1

let g:unite_source_rec_async_command = ['pt', '--follow', '--nocolor', '--nogroup', '--hidden', '-g:', '']
"    \ ['ag', '--follow', '--nocolor', '--nogroup', '~/.agignore',
"    \  '-g', '-L', '""']

" Denite configuration====================================================================
set wildignore=*.o,*.d,*.srec,*.htm,*.md,*.out,*.xlsx,*.log,*.axf,*.swp
call denite#custom#var('file_rec', 'command', ['scantree.py'])
call denite#custom#source('file_rec', 'matchers', ['matcher_substring'])
call denite#custom#source('buffer', 'matchers', ['matcher_substring'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '*~', '*.o', '*.exe', '*.bak',
      \ '.DS_Store', '*.pyc', '*.sw[po]', '*.class',
      \ '.hg/', '.git/', '.bzr/', '.svn/',
      \ 'node_modules/', 'bower_components/', 'tmp/', 'log/', 'vendor/ruby',
      \ '.idea/', 'dist/',
      \ 'tags', 'tags-*'])
call denite#custom#map('insert', '<Down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<Up>', '<denite:move_to_previous_line>', 'noremap')
nnoremap <silent> <space>f :<C-u>Denite file_rec -split=vertical -winwidth=120<cr>
nnoremap <silent> <space>b :<C-u>Denite buffer -split=vertical -winwidth=120<cr>
" configuration for a.vim
"nnoremap of <C-u>:IHV<cr>
"nnoremap or <C-u>:AV<cr>
