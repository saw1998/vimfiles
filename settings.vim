syntax enable
set nowrap
set noswapfile
set number
set splitbelow
set splitright
set noshowmode
set scrolloff=7


set updatetime=300
set timeoutlen=200

" Indent
set expandtab
set tabstop=4
set shiftwidth=4
set cinkeys-=:

" Enable the mouse
set mouse=a

" Mouse behavior (the Windows way)
behave mswin

set autochdir
set clipboard=unnamedplus

"My Additional settings
" set path+=**
"cd  C:\Users\sachin saw\Desktop\coder\diamondRock

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {}
inoremap (( (
inoremap }  p<Esc>}<Esc>ls
inoremap {} {}
inoremap jj <Esc>
inoremap <C-p> <Esc>=Gi
nnoremap <C-p> =G
nnoremap <C-d> Gdggi

"Tabs
nnoremap <A-1> gt
nnoremap <A-2> gT
inoremap <A-1> gt
inoremap <A-2> gT
nnoremap <C-tab> <C-w>w
inoremap <C-tabs> <C-w>w






autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
"autocmd filetype cpp nnoremap <C-F> :!paste > in <CR>
autocmd filetype cpp nnoremap <F6> :!paste > in <CR>
"autocmd filetype cpp nnoremap <F6> :w <bar> !clang++ -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG % && start "Sanitize" cmd /k "a.exe" <CR>
"autocmd filetype cpp nnoremap <F7> :w <bar> !g++ -g -std=c++14 % -Wl,--stack,268435456 && paste > in && start "Build and Run, Input from Clipboard" cmd /c "a.exe < in && pause && exit" <CR>
autocmd filetype cpp nnoremap <F7> :!a.exe < in > myout && mydiff out myout <CR>
autocmd filetype cpp nnoremap <F8> :!start "Run only, Input from clipboard" cmd /c "a.exe < in && pause && exit" <CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -g -gdwarf-4 -DDEBUG -O0 -fno-omit-frame-pointer -std=c++14 % -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!start "Run only, Input from keyboard" cmd /k "a.exe && pause && exit" <CR>
"autocmd filetype cpp nnoremap <F11> :w <bar> !g++ -g -std=c++14 % -Wl,--stack,268435456 && start "Build and Run, Input from keyboard" cmd /c "a.exe && pause && exit" <CR>
autocmd filetype cpp nnoremap <F11>  :!paste > out <CR>
autocmd filetype cpp nnoremap <F12> :%y+ <CR>
autocmd filetype py nnoremap <F9> :w <bar> !python % <CR>

autocmd filetype cpp inoremap <C-C> <Esc>:s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
autocmd filetype cpp nnoremap <F6> :!paste > in <CR>
"autocmd filetype cpp inoremap <F6>  <Esc>:w <bar> !clang++ -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG % && start "Sanitize" cmd /k "a.exe" <CR>
"autocmd filetype cpp inoremap <F7>  <Esc>:w <bar> !g++ -g -std=c++14 % -Wl,--stack,268435456 && paste > in && start "Build and Run, Input from Clipboard" cmd /c "a.exe < in && pause && exit" <CR>
autocmd filetype cpp inoremap <F7>  <Esc>:!a.exe < in > myout && mydiff out myout <CR>
autocmd filetype cpp inoremap <F8>  <Esc>:!start "Run only, Input from clipboard" cmd /c "a.exe < in && pause && exit" <CR>
autocmd filetype cpp inoremap <F9>  <Esc>:w <bar> !g++ -g -std=c++14 % -Wl,--stack,268435456<CR>
autocmd filetype cpp inoremap <F10> <Esc>:!start "Run only, Input from keyboard" cmd /k "a.exe && pause && exit" <CR>
"autocmd filetype cpp inoremap <F11> <Esc>:w <bar> !g++ -g -std=c++14 % -Wl,--stack,268435456 && start "Build and Run, Input from keyboard" cmd /c "a.exe && pause && exit" <CR>
autocmd filetype cpp inoremap <F11>  <Esc>:!paste > out <CR>
autocmd filetype cpp inoremap <F12> <Esc>:%y+ <CR>
autocmd filetype py inoremap <F9> <Esc>:w <bar> !python % <CR>

"For C#
autocmd filetype cs nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
autocmd filetype cs nnoremap <F9> :w <bar> !csc % <CR>
autocmd filetype cs nnoremap <F10> :!start "Run only, Input from keyboard" cmd /k "a.exe && pause && exit" <CR>

autocmd filetype cs inoremap <C-C> <Esc>:s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
autocmd filetype cs inoremap <F9> <Esc>:w <bar> !csc % <CR>
autocmd filetype cs inoremap <F10> <Esc>:!start "Run only, Input from keyboard" cmd /k "a.exe && pause && exit" <CR>


"autocmd filetype cpp nnoremap <F12> :vert term <bar> <C-w> <C-r> <CR>
"autocmd filetype cpp inoremap <F12> <Esc>:vert term <bar> <C-w> <C-r> <CR> 
"start "MyWindow" cmd /c "ping localhost & ipconfig & pause"

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
"let g:UltiSnipsExpandTrigger="<tab>"
let g:BASH_Ctrl_j = 'off'
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:python3_host_prog="C:/Python39/python.exe"
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

" end My settings
set wildmenu
"set rnu
set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
set incsearch
set smartindent
set smartcase

"let g:ale_linters={'python':['flake8','pydocstyle','bandit','mypy']}
"let g:ale_fixers = {'*':[],'python':['black','isort']}
"let g:vimspector_enable_mappings = 'HUMAN'
"nmap <leader>dd :call vimspector#Launch()<CR>
"nmap <leader>dx :VimspectorReser<CR>
"nmap <leader>de :VimspectorEval
"nmap <leader>dw :VimspectorWatch
"nmap <leader>do :VimspectorShowOutput
"autocmd FileType java nmap <leader>dd :CocCommand java.debug.vimspector.start<CR>

"packadd! vimspector
"let g:vimspector_install_gadgets = ['vscode-cpptools', 'CodeLLDB' ]
let g:NERDTreeDirArrows=1

set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar
"autocmd FileType cpp ClangFormatAutoEnable
filetype plugin on

"for opengl
