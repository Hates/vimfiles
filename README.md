# Vim

![](http://i.imgur.com/MxReZ.png)

# Plugins

- godlygeek/tabular
- msanders/snipmate.vim
- scrooloose/nerdtree
- scrooloose/nerdcommenter
- tpope/vim-rails
- tpope/vim-surround
- tpope/vim-fugitive
- kchmck/vim-coffee-script
- lukaszb/vim-web-indent
- Lokaltog/vim-powerline
- kien/ctrlp

# Custom Bindings

- \ - Leader
- \\-h - Hide search
- \\-r - Open nerdTree
- \\-M - Open file in Marked
- ESC-ESC - Save
- F4 - Toggle paste
- F5 - Toggle wrap
- F6 - Strip end of string whitespace
- CTRL J/K - Insert line above/below cursor
- CTRL B - Open Buffexplorer

# Install

## Clone the project into your home directory

```
$ git clone git@github.com:Hates/vimfiles.git ~/.vim
```

## Create your initial symbolic links.

```
$ ln -s ~/.vim/vimrc ~/.vimrc
$ ln -s ~/.vim/gvimrc ~/.gvimrc
```

## Checkout vundle.

https://github.com/gmarik/vundle

```
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

Then in Vim run

```
:BundleClean
:BundleInstall
```
