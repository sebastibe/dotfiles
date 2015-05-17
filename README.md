Dotfiles
========

Some dotfiles and settings mainly for MAC OS X.

## Instructions

For almost everything you need to have [XCode](https://developer.apple.com/xcode/) installed
as well as the XCode command tools. You can install them with the following command:

    xcode-select --install

### Creating source files

Any file which matches the shell glob `_*` will be linked into `$HOME`
as a symlink with the first `_` replaced with a `.`

For example:

    _bashrc

becomes

    ${HOME}/.bashrc

### Installing source files

It's as simple as running:

```sh
$ ./install.sh
```

From this top-level directory.

## Command Line Tools

### Package Managers

* [Homebrew](http://mxcl.github.com/homebrew/)

```sh
$ /usr/bin/ruby -e "$(/usr/bin/curl -fksSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
```

* [Homebrew Cask](http://caskroom.io) to manage Mac applications binaries:

```sh
$ brew install caskroom/cask/brew-cask
```

### Utilities

#### Terminal Multiplexer with `tmux`

```sh
$ brew install tmux
```

A good addon to create and manage tmux sessions easily: [tmuxinator](https://github.com/aziz/tmuxinator)

```sh
gem install tmuxinator
```

_Note:_ Install [RVM](#ruby) before.

#### UNIX tools

```sh
$ brew install wget nmap htop-osx mobile-shell automake glib bash tree ifstat tcpdump lzop findutils
```

Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed

#### Cheat

Create and view interactive cheatsheets on the command-line. It was
designed to help remind *nix system administrators of options for
commands that they use frequently, but not frequently enough to
remember.

```sh
$ brew install cheat
```

#### Versionning

```sh
$ brew install git git-crypt legit bazaar mercurial svn cvs git-flow-avh
```

[Hg-Git](http://hg-git.github.io/) is a plugin for Mercurial, adding
the ability to push to and pull from a Git server repository from
Mercurial:

```sh
$ easy_install hg-git
```

And add the extension to your `~/.hgrc`.

#### Libraries

For image processing and plotting:

```
$ brew install jpeg libpng libffi giflib boost protobuf lzlib grapviz gnuplot libsvg svg2png svg2pdf ghostscript imagemagick
```

With [XQuartz](http://xquartz.macosforge.org/landing/) you can also install `xpdf`.

For text processing:

```sh
$ brew install gettext readline aspell xapian markdown w3m highlight ag
```

For some programs you will need to force the linking

```sh
brew link gettext --force
```

And font management:

```sh
$ brew install freetype freexl fontconfig fontforge
```

For evented architecture:

```sh
$ brew install libevent libuv zeromq
```

For encryption:

```sh
brew install gpg openssl nacl
```

#### Databases

```sh
$ brew install sqlite redis cassandra hdf5 mongodb
```

For Postgres we use the Postgres.app

```sh
$ brew cask install postgres
```

Goodies:

* [Robomongo](http://robomongo.org/) MongoDB management tool

#### Python

To manage different Python versions at the user level, one way to go is to use
[pyenv](https://github.com/yyuu/pyenv):

```sh
$ brew install pyenv pyenv-virtualenv pyenv-virtualenvwrapper
```

Because virtualenvwrapper is depending on python, you must first
install at least one version of python.

For example, install 2.7.9 and set it as global in pyenv.

```sh
$ pyenv install 2.7.9
$ pyenv global 2.7.9
```

To setup a virtualenvwrapper into your shell, just run

```sh
pyenv virtualenvwrapper
```

You can then work in a *virtualenv* using your favorite Python version.

And then work in your virtual environments.

For further integration with emacs, ropemacs is highly recommended:

```sh
$ pip install rope ropemacs ropemode elpy jedi epc
```

#### Clojure

```sh
$ brew install leiningen
```

#### Go

```sh
$ brew install go
```

```sh
 $ go get code.google.com/p/rog-go/exp/cmd/godef
```

#### Ruby

```sh
$ brew install libyaml libxml2 libxslt libksba
```

**RVM** is a command-line tool which allows you to easily install,
  manage, and work with multiple ruby environments from interpreters
  to sets of gems:

```sh
curl -L https://get.rvm.io | bash -s stable --ruby
```

An **RVM** cheatsheet can be found [here](http://cheat.errtheblog.com/s/rvm).

#### Rust

```sh
$ brew install rust
```

### Node.js / io.js

We install node/iojs using Node Version Manager (nvm), a simple bash script to manage multiple active node.js versions:

```sh
$ brew install nvm
```

Add the following to $HOME/.bashrc, $HOME/.zshrc, or your shell's
equivalent configuration file:

```sh
$ export NVM_DIR=~/.nvm
$ source $(brew --prefix nvm)/nvm.sh
```

Now use nvm to install the latest stable release of node:

```sh
$ nvm install stable
```

#### Text Editor

Install the latest stable [Emacs](http://www.gnu.org/software/emacs/)
version from http://emacsformacosx.com/

Or a good OS X port by @railwaycat can be found there:
[emacs-mac-port](https://github.com/railwaycat/emacs-mac-port) and can
be easilly installed with brew:

```sh
$ brew tap railwaycat/emacsmacport
```

and then

```sh
brew install emacs-mac
```

#### [zsh](http://www.zsh.org/)

```sh
$ brew install zsh
```

make it the default shell

```sh
$ chsh -s /bin/zsh
```

add to it [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

```
$ git clone git://github.com/sebastibe/oh-my-zsh.git ~/.oh-my-zsh
```

with zsh-syntax-highlighting in `~/.oh-my-zsh/custom/plugins`:

```sh
$ git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
```

or alternatively with [Pretzo](https://github.com/sorin-ionescu/prezto):

```sh
# Uninstall oh my zsh
$ uninstall_oh_my_zsh

# Open new shell, open zsh and clone the presto repo
$ git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# Get prezto's default configuration
$ setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
```

#### Emails

```sh
$ brew install isync mu html2text gnutls
$ pip install offlineimap
```

A good webmail client: [mailpile](http://mailpile.is/)

#### Files Recovery

Recover lost partitions and/or make non-booting disks bootable again
when these symptoms are caused by faulty software, certain types of
viruses or human error.

```sh
$ brew install testdisk
```

#### LaTeX

* [MacTex](http://www.tug.org/mactex/)
* PDF reader and note-taker (interacting with LaTeX) [Skim](http://skim-app.sourceforge.net/)

### Desktop Tools

* [iTerm2](www.iterm2.com) alternative to Term
* [GitHub for Mac](http://mac.github.com/)
* [iStumber](http://www.istumbler.net/) Mac Network discovery tool
* [WaterRoof](http://www.hanynet.com/waterroof/) Firewall editor
* [keyremap4macbook](https://pqrs.org/macosx/keyremap4macbook/) Remap your keyboard

#### Window Management

With [Slate](https://github.com/mattr-/slate) you can:

* Bind keystrokes to:
    * move and/or resize windows
    * directionally focus windows
    * activate preset layouts
    * create, delete, and activate snapshots of the current state of windows
* Set default layouts for different monitor configurations which will
  activate when that configuration is detected.
* Window Hints: an intuitive way to change window focus

```sh
$ brew cask install mattr-slate
```

Install [f.lux](http://justgetflux.com/) To save your eyes.

```sh
$ brew cask install flux
```

[XQuartz](http://xquartz.macosforge.org/) X.Org Windows system for OS X (needed for gnuplot):

```sh
$ brew cask install xquartz
```

And others also availables through the App store:

* [Moom](http://manytricks.com/moom/) for better Mac OS X Windows
  organization (paid)
* [GeekTool](http://projects.tynsoe.org/en/geektool/) enable to
  overlay information on the screen background

#### Android

* [Android File Transfer](http://www.android.com/filetransfer/)
  Utility to tranfer files to an Android device

#### Bit Torrent

```sh
$ brew cask install transmission
```

#### Team Communication

```sh
$ brew cask install slack
```

#### Powerline

```sh
pip install powerline-status
```

```sh
git clone https://github.com/powerline/fonts
```
