## Usage
On Home dir:

```sh
    $ git clone git://github.com/lsdr/vim.git .vim  
    $ cd .vim
    $ make install
```

To update:

```sh
    $ cd .vim
    $ git pull origin master
```

### Building vim
See [BUILD](https://github.com/lsdr/vim-folder/blob/master/BUILD.md) for
further instructions.

## Plugins, Colorschemes, Syntaxes et al
```VimL
" colorschemes
Bundle 'lsdr/monokai'
Bundle 'noahfrederick/vim-hemisu'

" plugins
Bundle 'AutoComplPop'
Bundle 'nginx.vim'
Bundle 'pythoncomplete'

Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'

Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'lsdr/octave.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'jimenezrick/vimerl'
Bundle 'Townk/vim-autoclose'
Bundle 'mattonrails/vim-mix'
Bundle 'elixir-lang/vim-elixir'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'puppetlabs/puppet-syntax-vim'
```

## Notes
On Vim updates, check which ruby interpreter it compiled against (a simple `vim --version`
should do) and be sure to recompile command-t using the same ruby version,
or else gVim might crash.

