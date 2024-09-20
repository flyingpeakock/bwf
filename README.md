# bwf

**Script that uses fzf to fetch usernames and passwords from bitwarden.**

## Requirements

- **bw-cli**
    used for querying bitwarden
- **xclip** *or* **wl-clipboard**
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
  * -`b`, `--both`          select username and password
  * -`n`, `--notes`         select notes
  * -`t`, `--totp`          select one time password

If either `-p`, `-b` and `-u` are not defined, `-b` is set
If both `-s` and `-x` are set the last one takes precedence
If this program thinks it is running through a pipe -s is set by default

## Clipboard

Uses `xclip`/`wl-clipboard` to paste username into clipboard and password to primary selection.

The clipboard is emptied after 10s when working with passwords or one-time-passwords

## Previw

By default no preview is shown, but can be toggled using `ctrl-p`. The options default to `hidden,wrap,60%` but can be overridden by variable `BWF_FZF_PREVIEW`.
