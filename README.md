# Vim

![](http://i.imgur.com/MxReZ.png)

# Plugins

- gmarik/vundle
- Lokaltog/vim-easymotion
- bling/vim-airline
- kien/ctrlp.vim
- lukaszb/vim-web-indent
- msanders/snipmate.vim
- scrooloose/nerdcommenter
- scrooloose/nerdtree
- tpope/vim-rails
- tpope/vim-surround
- sjl/gundo.vim

# Custom Bindings

- \ - Leader
- \\-h - Hide search
- \\-r - Open nerdTree
- \\-M - Open file in Marked
- F1 - Open Gundo
- F4 - Toggle paste
- F5 - Toggle wrap
- F6 - Strip end of string whitespace
- F9 - Convert Ruby hash syntax
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
