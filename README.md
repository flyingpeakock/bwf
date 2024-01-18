# bwf

**Script that uses fzf to fetch usernames and passwords from bitwarden.**

## Requirements

- **bw-cli**
    used for querying bitwarden
- **xclip**
    used for inserting into clipboard
- **jq**
    used for parsing bw-cli
- **fzf**
    used for getting user input

## Installation

Make sure you have installed the requirements then simply clone this repository and source the `bfw`. So assuming you have `bwf` cloned into `$BWF_INSTALL_DIR` you would do

```bash
source $BWF_INSTALL_DIR/bwf
```

ZSH-users can use their favorite plugin manager and install it - with [ZI] it would look like this:

```zsh
zi load flyingpeakock/bwf
```

[ZI]: https://github.com/z-shell/zi

## Usage

```bash
bwf [options] [<ACCOUNT_NAME>]
```

**OPTIONS**

  * `-x`, `--clipboard`     insert into clipbaord (default)
  * -`s`, `--stdout`        print to standard out. Disables -x
  * -`h`, `--help`          display this help message
  * -`p`, `--password`      select password
  * -`u`, `--username`      select username
  * -`n`, `--notes`         select notes
  * -`t`, `--totp`          select one time password

If neither `-p` and `-u` are not defined, `-u` is set
If both `-s` and `-x` are set the last one takes precedence
If this program thinks it is running through a pipe -s is set by default

## Clipboard

Uses `xclip` to paste username into clipboard and password to primary selection.

The clipboard is emptied after 10s when working with passwords or one-time-passwords

## Preview

By default no preview is shown, but can be toggled using `ctrl-p`. The options default to `hidden,wrap,60%` but can be overridden by variable `BWF_FZF_PREVIEW`.

## Info

For wayland sessions it uses [`wl-copy`](https://man.archlinux.org/man/wl-copy.1)

> wl-copy --clear and wl-copy --paste-once don't always interact well with clipboard managers that are overeager to preserve clipboard contents.