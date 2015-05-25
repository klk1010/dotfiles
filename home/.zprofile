# Executes commands at login pre-zshrc.
# Based on https://github.com/sorin-ionescu/prezto/blob/a84ac5b0023d71c98bb28a68c550dc13f6c51945/runcoms/zprofile

# Open files in GUI
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

# Editors
export EDITOR='vim'
export PAGER='less'
export VISUAL='vim' # Editor to be opened from $PAGER

# Language
if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

# Paths
## Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

## Set the list of directories that Zsh searches for programs.
path=(
  $HOME/bin
  /usr/local/{bin,sbin}
  $path
)

# Temporary Files
if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$USER"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"
if [[ ! -d "$TMPPREFIX" ]]; then
  mkdir -p "$TMPPREFIX"
fi