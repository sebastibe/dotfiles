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

```bash
$ ./install.sh
```

From this top-level directory.

## Command Line Tools

### Package Managers

* [Homebrew](http://mxcl.github.com/homebrew/)

```bash
$ /usr/bin/ruby -e "$(/usr/bin/curl -fksSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
```

* [Homebrew Cask](http://caskroom.io) to manage Mac applications binaries:

```bash
$ brew install caskroom/cask/brew-cask
```

### Utilities

#### Terminal Multiplexer with `tmux`

```bash
$ brew install tmux
```

A good addon to create and manage tmux sessions easily: [tmuxinator](https://github.com/aziz/tmuxinator)

```bash
gem install tmuxinator
```

_Note:_ Install [RVM](#ruby) before.

#### UNIX tools

```bash
$ brew install wget nmap htop-osx mobile-shell automake glib bash tree ifstat tcpdump lzop findutils
```

Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed

#### Cheat

Create and view interactive cheatsheets on the command-line. It was
designed to help remind *nix system administrators of options for
commands that they use frequently, but not frequently enough to
remember.

```bash
$ brew install cheat
```

#### Versionning

```bash
$ brew install git git-crypt legit bazaar mercurial svn cvs git-flow-avh
```

[Hg-Git](http://hg-git.github.io/) is a plugin for Mercurial, adding
the ability to push to and pull from a Git server repository from
Mercurial:

```bash
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

```bash
$ brew install gettext readline aspell xapian markdown w3m highlight ag
```

For some programs you will need to force the linking

```bash
brew link gettext --force
```

And font management:

```bash
$ brew install freetype freexl fontconfig fontforge
```

For evented architecture:

```bash
$ brew install libevent libuv zeromq
```

For encryption:

```bash
brew install gpg openssl nacl
```

#### Databases

```bash
$ brew install sqlite redis cassandra hdf5 mongodb
```

For Postgres we use the Postgres.app

```bash
$ brew cask install postgres
```

[Postgres CLI](https://github.com/dbcli/pgcli), Postgres CLI with
autocompletion and syntax highlighting

```bash
$ brew install pgcli
```

Goodies:

* [Robomongo](http://robomongo.org/) MongoDB management tool

#### Python

To manage different Python versions at the user level, one way to go is to use
[pyenv](https://github.com/yyuu/pyenv):

```bash
$ brew install pyenv pyenv-virtualenv pyenv-virtualenvwrapper
```

Because virtualenvwrapper is depending on python, you must first
install at least one version of python.

For example, install 2.7.9 and set it as global in pyenv.

```bash
$ pyenv install 2.7.9
$ pyenv global 2.7.9
```

To setup a virtualenvwrapper into your shell, just run

```bash
pyenv virtualenvwrapper
```

You can then work in a *virtualenv* using your favorite Python version.

And then work in your virtual environments.

For further integration with emacs, ropemacs is highly recommended:

```bash
$ pip install rope ropemacs ropemode elpy jedi epc
```

#### Clojure

```bash
$ brew install leiningen
```

#### Go

```bash
$ brew install go
```

"go get" the basics

```bash
$ go get golang.org/x/tools/cmd/godef
$ go get golang.org/x/tools/cmd/godoc
$ go get golang.org/x/tools/cmd/vet
```

#### Ruby

```bash
$ brew install libyaml libxml2 libxslt libksba
```

**RVM** is a command-line tool which allows you to easily install,
  manage, and work with multiple ruby environments from interpreters
  to sets of gems:

```bash
curl -L https://get.rvm.io | bash -s stable --ruby
```

An **RVM** cheatsheet can be found [here](http://cheat.errtheblog.com/s/rvm).

#### Rust

```bash
$ brew install rust
```

### Node.js / io.js

We install node/iojs using Node Version Manager (nvm), a simple bash script to manage multiple active node.js versions:

```bash
$ brew install nvm
```

Add the following to $HOME/.bashrc, $HOME/.zshrc, or your shell's
equivalent configuration file:

```bash
$ export NVM_DIR=~/.nvm
$ source $(brew --prefix nvm)/nvm.sh
```

Now use nvm to install the latest stable release of node:

```bash
$ nvm install stable
```

#### Text Editor

Install the latest stable [Emacs](http://www.gnu.org/software/emacs/)
version from http://emacsformacosx.com/

Or a good OS X port by @railwaycat can be found there:
[emacs-mac-port](https://github.com/railwaycat/emacs-mac-port) and can
be easilly installed with brew:

```bash
$ brew tap railwaycat/emacsmacport
```

and then

```bash
brew install emacs-mac
```

Install Cask for Emacs package management:

```bash
brew install cask
```

#### [zsh](http://www.zsh.org/)

```bash
$ brew install zsh
```

make it the default shell

```bash
$ chsh -s /bin/zsh
```

add to it [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

```
$ git clone git://github.com/sebastibe/oh-my-zsh.git ~/.oh-my-zsh
```

with zsh-syntax-highlighting in `~/.oh-my-zsh/custom/plugins`:

```bash
$ git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
```

or alternatively with [Pretzo](https://github.com/sorin-ionescu/prezto):

```bash
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

```bash
$ brew install isync mu html2text gnutls
$ pip install offlineimap
```

A good webmail client: [mailpile](http://mailpile.is/)

#### Files Recovery

Recover lost partitions and/or make non-booting disks bootable again
when these symptoms are caused by faulty software, certain types of
viruses or human error.

```bash
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

```bash
$ brew cask install mattr-slate
```

Install [f.lux](http://justgetflux.com/) To save your eyes.

```bash
$ brew cask install flux
```

[XQuartz](http://xquartz.macosforge.org/) X.Org Windows system for OS X (needed for gnuplot):

```bash
$ brew cask install xquartz dialog
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

```bash
$ brew cask install transmission
```

#### Team Communication

```bash
$ brew cask install slack franz
```

#### Powerline

```bash
pip install powerline-status psutil
```

```bashy
git clone https://github.com/powerline/fonts
```

#### Notes

A console client for [Evernote](https://evernote.com/):
[Geeknote](https://github.com/jeffkowalski/geeknote)

**Note:** use the fork as
[the original](https://github.com/VitaliyRodnenko/geeknote) author has
disapeared.

``` bash
brew install --HEAD https://raw.githubusercontent.com/jeffkowalski/geeknote/master/geeknote.rb
```
