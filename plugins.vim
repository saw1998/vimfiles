call plug#begin('~/Appdata/Local/nvim/autoload/plugged')

    Plug 'morhetz/gruvbox'
    "Plug 'mhinz/vim-startify'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    
Plug 'jiangmiao/auto-pairs'
    "Plug 'octol/vim-cpp-enhanced-highlight'
    "Plug 'mhinz/vim-signify'
    "Plug 'tpope/vim-unimpaired'
    Plug 'liuchengxu/vim-which-key'
    "Plug 'ryanoasis/vim-devicons'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
	Plug 'mattn/emmet-vim'
	"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
	
	"Debugger plugin
	"Plug 'puremourning/vimspector'   
	" <- doesn't work for windows
	"Plug 'szw/vim-maximizer'
	"Plug 'epheien/termdbg'
	
	"for python
	Plug 'davidhalter/jedi-vim'
	
	"C++ formatter
	"Plug 'kana/vim-operator-user'
	"Plug 'Shougo/vimproc.vim', {'do' : 'make'}
	"Plug 'rhysd/vim-clang-format'
	
	"Commenter
	Plug 'preservim/nerdcommenter'
	
	"Stopwatch
	Plug 'EVODelavega/vim-eazy-timer'
  
    
call plug#end() 



