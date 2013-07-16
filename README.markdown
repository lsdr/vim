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
See [BUILD](https://github.com/lsdr/vim-folder/blob/master/BUILD.markdown) for
further instructions.

## Plugins, Colorschemes, Syntaxes et al
```VimL
" colorschemes
Bundle 'lsdr/monokai'
Bundle 'kib_darktango.vim'
Bundle 'Solarized'
Bundle 'sexy-railscasts'
Bundle 'aerosol/vim-compot'

" plugins
" Bundle 'EasyGrep'
Bundle 'AutoClose'
Bundle 'AutoComplPop'
Bundle 'nginx.vim'
Bundle 'pythoncomplete'

Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'

Bundle 'rking/ag.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'jimenezrick/vimerl'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jmcantrell/vim-virtualenv'
```

## Notes
On Vim updates, check which ruby interpreter it compiled against (a simple `vim --version`
should do) and be sure to recompile command-t using the same ruby version,
or else gVim might crash.

