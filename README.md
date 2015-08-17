## Usage
On Home dir:
```sh
    $ git clone git@github.com:lsdr/vim.git .vim  
    $ cd .vim
    $ make install
```

To update:
```sh
    $ cd .vim
    $ git pull origin master
```

## Getting vim

I build MacVim from source using a [fork of the Homebrew formula](https://github.com/lsdr/homebrew-stan). I gave it a different name just to avoid collisions.

Just `brew tap lsdr/stan` and then `brew install lsdr/stan/melee-vim`.

You can also install via URL:
```
brew install https://raw.github.com/lsdr/homebrew-stan/master/melee-vim.rb
```

