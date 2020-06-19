call plug#begin('~/.vim/pack')

" General enhancements
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/grep.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-rooter'

if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-projectionist'

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'mhinz/vim-startify'


Plug 'nelstrom/vim-visual-star-search'
Plug 'godlygeek/tabular'
Plug 'mhinz/vim-signify'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax checking
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

if !has('nvim')
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" A collection of language packs for Vim.
Plug 'sheerun/vim-polyglot'

" For Vimscript
Plug 'tpope/vim-scriptease'
Plug 'tweekmonster/helpful.vim'
Plug 'nelstrom/vim-docopen'

" Markdown
Plug 'tpope/vim-markdown'
Plug 'nelstrom/vim-markdown-folding'
Plug 'junegunn/vim-emoji'

" JavaScript
Plug 'jelera/vim-javascript-syntax'

" Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

" Elm
Plug 'elmcast/elm-vim'

" Erlang
Plug 'jimenezrick/vimerl'

" Haskell
Plug 'eagletmt/neco-ghc'
Plug 'dag/vim2hs'
Plug 'pbrisbin/vim-syntax-shakespeare'

" Lisp
Plug 'vim-scripts/slimv.vim'

" Rust
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'

" Python
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
"Plug 'ambv/black'

" Scala
if has('python')
    Plug 'ktvoelker/sbt-vim'
endif
Plug 'derekwyatt/vim-scala'

" Support for rare and exotic languages

" Colorschemes
Plug 'dracula/vim', {'as':'dracula'}

" Plugins for either Vim8 or NeoVim
if has('nvim')
  Plug 'Shougo/denite.nvim'
  Plug 'machakann/vim-highlightedyank'
  Plug 'kassio/neoterm'
  Plug 'Shougo/neomru.vim'
else
  Plug 'Shougo/unite.vim'
endif

call plug#end()