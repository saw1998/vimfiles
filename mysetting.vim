set pythonthreedll="C:\Python39\python39.dll"
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:python3_host_prog="C:/Python39/python.exe"

"Gruv box
set t_Co=256
let g:airline_theme='gruvbox'

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme gruvbox
""""""""""end"""""""""""""""