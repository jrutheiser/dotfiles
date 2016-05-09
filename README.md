# Dotfiles

These are the dotfiles that I use when setting up a new environment.

## Getting Started

Run the following to install dotfiles:

```bash
$ git clone https://github.com/jrutheiser/dotfiles.git
$ cd dotfiles
$ ./install.sh
```

## Customizing

### Local Settings

Settings are extendable through the following local files:

#### `~/.gitconfig.local`

If `~/.gitconfig.local` exists it will be included after `~/.gitconfig`.

```bash
[user]
    name = AUTHOR_NAME
    email = AUTHOR_EMAIL
```

#### `~/.vimrc.local`

If `~/.vimrc.local` exists it will be be sourced after `~/.vimrc`.

## License

The code is available under the [MIT license](https://github.com/jrutheiser/dotfiles/blob/master/LICENSE).

## To-do's

* [ ] Add more dotfiles
* [ ] Add Sublime Text preferences
* [ ] Add OS X install bash script
* [ ] Add Linux install bash script
* [ ] Improve README
