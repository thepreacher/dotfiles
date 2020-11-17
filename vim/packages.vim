"""" START vim-plug Configuration

call plug#begin('~/.vim/pack')

"" Utility
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
endif
Plug 'airblade/vim-rooter'
Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'
Plug 'vim-scripts/ZoomWin'

"" Session & Startup
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'mhinz/vim-startify'

"" Generic Programming Support
Plug 'janko-m/vim-test'
Plug 'w0rp/ale'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'craigemery/vim-autotag'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-abolish'

"" Markdown / Writing
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'
Plug 'dpelle/vim-LanguageTool'

"" Git Support
Plug 'kablamo/vim-git-log'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

"" Theme & Colorscheme
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'joshdick/onedark.vim'

"" Haskell Support
Plug 'eagletmt/neco-ghc'
Plug 'dag/vim2hs'
Plug 'pbrisbin/vim-syntax-shakespeare'

"" Lisp Support
Plug 'vim-scripts/slimv.vim'

"" Scala Support
if has('python')
    Plug 'ktvoelker/sbt-vim'
endif
Plug 'derekwyatt/vim-scala'

"" Python Support
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

"" Elixir Support
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

"" Elm Support
Plug 'elmcast/elm-vim'

"" Rust Support
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'

"" Lua Support


"" Javascript Support
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'


"" HTML / XML Support
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-ragtag'
Plug 'mattn/emmet-vim'

"" CSS Support


"" For Vimscript
Plug 'tpope/vim-scriptease'
Plug 'tweekmonster/helpful.vim'
Plug 'nelstrom/vim-docopen'

"" Misc
"Plug 'mattn/webapi-vim"

call plug#end()
"""" END vim-plug Configuration
