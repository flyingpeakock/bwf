# bwf

**Script that uses fzf to fetch usernames and passwords from bitwarden.**

## Requirments
- **bw-cli**    
    used for querying bitwarden
- **xclip**    
    used for inserting into clipboard
- **jq**    
    used for parsing bw-cli
- **fzf**    
    used for getting user input

## Installation
Make sure you have installed the requirments then simply clone this repository and move bwf to anywhere on your path.

## Usage

```
Bitwarden using fzf

Usage
    bwf [option]

OPTIONS
    -x, --clipboard         insert into clipboard (default)
    -h, --help              display this help message
    -p, --password          print password to stdout
    -u, --username          print username to stdout

CLIPBOARD
    Uses xclip to paste username into clipboard and
    password to primary selection

LOGIN
    To be logged in make sure to set the environment variable
    BW_SESSION to your session key. To get the session key
    run 'bw login'

KEYBINDS
    ctrl-p      toggle preview
```
