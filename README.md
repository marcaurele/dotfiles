*This repository won't get much updated anymore, it has been superseded by an [Ansible version](https://github.com/marcaurele/laptop-ansible).*

# dotfiles

Fork from holman dotfiles (https://github.com/holman/dotfiles).

Your dotfiles are how you personalize your system. These are mine.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](http://caskroom.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Install

Run this:

```sh
git clone https://github.com/marcaurele/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

To only install the brew packages inside `Brewfile`, run:

```sh
cd <this-directory>
brew bundle
```

Warning: it won't show which packages have been updated!

## Missing stuff

- KeepassX 0.4.4
- Truecrypt 7.1a/VeraCrypt


## Manual things

### Python

Use `pyenv` to install different py flavour, most likely 2.7.12, 3.4.5, 3.5.2

### Asciidoctor
  - `sudo gem install asciidoctor`
  - `sudo gem install --pre asciidoctor-pdf`
  - `sudo gem install coderay pygments.rb`


## TODO in readme/conf
https://gist.github.com/bmhatfield/cc21ec0a3a2df963bffa3c1f884b676b

