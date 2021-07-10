syntax enable
set nowrap
set noswapfile
set number
set splitbelow
set splitright
set noshowmode


set updatetime=300
set timeoutlen=200

" Indent
set expandtab
set tabstop=4
set shiftwidth=4
set cinkeys-=:

" Enable the mouse
set mouse=a

set autochdir
set clipboard=unnamedplus

"My Additional settings
" set path+=**


inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap (( (
inoremap {} {}
inoremap jj <Esc>
inoremap <C-p> <Esc>=Gi
nnoremap <C-p> =G

autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
"autocmd filetype cpp nnoremap <C-F> :!paste > in <CR>
autocmd filetype cpp nnoremap <F6> :!paste > in <CR>
"autocmd filetype cpp nnoremap <F6> :w <bar> !clang++ -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG % && start "Sanitize" cmd /k "a.exe" <CR>
"autocmd filetype cpp nnoremap <F7> :w <bar> !g++ -g -std=c++14 % -Wl,--stack,268435456 && paste > in && start "Build and Run, Input from Clipboard" cmd /c "a.exe < in && pause && exit" <CR>
autocmd filetype cpp nnoremap <F7> :!a.exe < in > myout && mydiff out myout <CR>
autocmd filetype cpp nnoremap <F8> :!start "Run only, Input from clipboard" cmd /c "a.exe < in && pause && exit" <CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -g -std=c++14 % -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!start "Run only, Input from keyboard" cmd /k "a.exe && pause && exit" <CR>
"autocmd filetype cpp nnoremap <F11> :w <bar> !g++ -g -std=c++14 % -Wl,--stack,268435456 && start "Build and Run, Input from keyboard" cmd /c "a.exe && pause && exit" <CR>
autocmd filetype cpp nnoremap <F11>  :!paste > out <CR>
autocmd filetype cpp nnoremap <F12> :%y+ <CR>

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

set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END