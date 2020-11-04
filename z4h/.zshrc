# Personal Zsh configuration file. It is strongly recommended to keep all
# shell customization and configuration (including exported environment
# variables such as PATH) in this file or in files source by it.
#
# Documentation: https://github.com/romkatv/zsh4humans/blob/v4/README.md.

# Periodic auto-update on Zsh startup: 'ask' or 'no'.
zstyle ':z4h:'                auto-update      'ask'
# Ask whether to auto-update this often; has no effect if auto-update is 'no'.
zstyle ':z4h:'                auto-update-days '28'

# Keyboard type: 'mac' or 'pc'.
zstyle ':z4h:bindkey'         keyboard         'mac'
# When fzf menu opens on TAB, another TAB moves the cursor down ('tab:down')
# or accepts the selection and triggers another TAB-completion ('tab:repeat')?
zstyle ':z4h:fzf-complete'    fzf-bindings     'tab:down'
# When fzf menu opens on Shift+Down, TAB moves the cursor down ('tab:down')
# or accepts the selection and triggers another Shift+Down ('tab:repeat')?
zstyle ':z4h:cd-down'         fzf-bindings     'tab:down'
# Right-arrow key accepts one character ('partial-accept') from
# command autosuggestions or the whole thing ('accept')?
zstyle ':z4h:autosuggestions' forward-char     'accept'

# Send these files over to the remote host when connecting over ssh.
# Multiple files can be listed here.
zstyle ':z4h:ssh:*'           send-extra-files '~/.iterm2_shell_integration.zsh'
# Disable automatic teleportation of z4h over ssh when connecting to some-host.
# This makes `ssh some-host` equivalent to `command ssh some-host`.
zstyle ':z4h:ssh:some-host'   passthrough      'yes'

# Move the cursor to the end when Up/Down fetches a command from history?
zstyle ':zle:up-line-or-beginning-search'   leave-cursor 'yes'
zstyle ':zle:down-line-or-beginning-search' leave-cursor 'yes'

# Clone additional Git repositories from GitHub.
#
# This doesn't do anything apart from cloning the repository and keeping it
# up-to-date. Cloned files can be used after `z4h init`. This is just an
# example. If you don't plan to use Oh My Zsh, delete this line.
#z4h install ohmyzsh/ohmyzsh || return

# Install or update core components (fzf, zsh-autosuggestions, etc.) and
# initialize Zsh. After this point console I/O is unavailable until Zsh
# is fully initialized. Everything that requires user interaction or can
# perform network I/O must be done above. Everything else is best done below.
z4h init || return

# Export environment variables.
export GPG_TTY=$TTY

# Source additional local files if they exist.
z4h source ~/.iterm2_shell_integration.zsh

# Define key bindings.
z4h bindkey undo Ctrl+/  # undo the last command line change
z4h bindkey redo Alt+/   # redo the last undone command line change

z4h bindkey z4h-cd-back    Shift+Left   # cd into the previous directory
z4h bindkey z4h-cd-forward Shift+Right  # cd into the next directory
z4h bindkey z4h-cd-up      Shift+Up     # cd into the parent directory
z4h bindkey z4h-cd-down    Shift+Down   # cd into a child directory

# Autoload functions.
autoload -Uz zmv

# Define functions and completions.
function md() { [[ $# == 1 ]] && mkdir -p -- "$1" && cd -- "$1" }
compdef _directories md

# Replace `ssh` with `z4h ssh` to automatically teleport z4h to remote hosts.
function ssh() { z4h ssh "$@" }

# Define named directories: ~w <=> Windows home directory on WSL.
[[ -n $z4h_win_home ]] && hash -d w=$z4h_win_home

# Set shell options: http://zsh.sourceforge.net/Doc/Release/Options.html.
setopt glob_dots     # no special treatment for file names with a leading dot
setopt no_auto_menu  # require an extra TAB press to open the completion menu

# Load aliases and functions
for file in ~/.{exports,paths,zaliases,functions,private}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Colored manpage
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

# append completions to fpath
fpath=(${HOME}/.local/completions ${ASDF_DIR}/completions $fpath)


#asdf
. $HOME/.asdf/asdf.sh

# initialise completions with ZSH's compinit
autoload -Uz compinit
compinit

# Bash completions
autoload -Uz bashcompinit; bashcompinit

# z.lua
eval "$(lua ~/Library/Caches/Homebrew/z.lua--git/z.lua --init zsh enhanced once fzf)"

# pipx
eval "$(register-python-argcomplete pipx)"

# Extend PATH.
path=(~/bin ~/.local/bin $path)

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

#neofetch
if [ -v ${VIRTUAL_ENV} ]; then
  neofetch
fi
