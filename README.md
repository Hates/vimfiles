# Clone the project into your home directory

```
$ git clone git@github.com:Hates/vimfiles.git ~/.vim
```

# Create your initial symbolic links.

```
$ ln -s ~/.vim/vimrc ~/.vimrc
$ ln -s ~/.vim/gvimrc ~/.gvimrc
```

# Checkout vundle.

https://github.com/gmarik/vundle

```
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

Then in Vim run

```
:BundleClean
:BundleInstall
```