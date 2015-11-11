" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" Completion
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Raimondi/delimitMate'

" Snippet
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'honza/vim-snippets'

" Motion
NeoBundle 'easymotion/vim-easymotion'

" Text object
NeoBundle 'tpope/vim-surround'

" Syntax check
NeoBundle 'scrooloose/syntastic'

" Grep
NeoBundle 'rking/ag.vim'

" Git
NeoBundle 'tpope/vim-fugitive'

" Ruby
NeoBundle 'osyo-manga/vim-monster'

" Ruby
NeoBundle 'rodjek/vim-puppet'
NeoBundle 'vim-ruby/vim-ruby'

" Color scheme
NeoBundle 'tomasr/molokai'
NeoBundle 'sjl/badwolf'

" Comment
NeoBundle 'tpope/vim-commentary'

" Utility
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" UI
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tsukkee/unite-tag'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
