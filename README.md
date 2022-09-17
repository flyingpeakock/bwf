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

Make sure you have installed the requirements then simply clone this repository and move bwf to anywhere on your path.

## Usage

```
Bitwarden using fzf

Usage
    bwf [options] [<ACCOUNT_NAME>]

OPTIONS
    -x, --clipboard     insert into clipbaord (default)
    -s, --stdout        print to standard out. Disables -x
    -h, --help          display this help message
    -p, --password      select password
    -u, --username      select username
    -n, --notes         select notes
    -t, --totp          select one time password

If neither `-p` and `-u` are not defined, `-u` is set
If both `-s` and `-x` are set the last one takes precedence
If this program thinks it is running through a pipe -s is set by default

CLIPBOARD
    Uses xclip to paste username into clipboard and
    password to primary selection.

    The clipboard is emptied after 10s

LOGIN
    To be logged in make sure to set the environment variable
    BW_SESSION to your session key. To get the session key
    run 'bw login'

PREVIEW
    By default no preview is shown, but can be toggled using `ctrl-p`. The options default to `hidden,wrap,60%` but can be overridden by
    variable `BWF_FZF_PREVIEW`.

KEYBINDS

KEYBINDS
    ctrl-p      toggle preview

```
