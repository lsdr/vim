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
    gmarik/vundle
    lsdr/monokai
    kib_darktango.vim
    Solarized
    sexy-railscasts
    aerosol/vim-compot
    EasyGrep
    AutoClose
    AutoComplPop
    nginx.vim
    pythoncomplete
    tpope/vim-rvm
    tpope/vim-rails
    tpope/vim-endwise
    tpope/vim-surround
    tpope/vim-fugitive
    rking/ag.vim
    vim-ruby/vim-ruby
    jimenezrick/vimerl
    scrooloose/nerdcommenter
    jmcantrell/vim-virtualenv
```

## Notes
On Vim updates, check which ruby interpreter it compiled against (a simple `vim --version`
should do) and be sure to recompile command-t using the same ruby version,
or else gVim might crash.

