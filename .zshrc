# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnosterzak"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
zsh-completions
you-should-use $plugins
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias ghosttyconfig="vim ~/Library/Application Support/com.mitchellh.ghostty/config"

# Alias
alias dev="cd ~/dev"
alias o="open ."
alias c="code ."
alias sail="[ -f sail ] && sh sail || sh vendor/bin/sail"
alias vim=nvim
alias v=nvim
alias kssh="kitty +kitten ssh"
alias cd=z

#Git 
alias gladog="git log --all --decorate --oneline --graph"
alias gun="git reset HEAD~"
alias gre="git reset HEAD@{1}"
# alias gun="git undo"
# alias gre="git redo"

alias python="python3"
alias py="python"

# pnpm
alias pn="pnpm"
alias pm="pnpm"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export EDITOR="nvim"
# export EDITOR="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron"

# Functions
function webp () {
    for file in *;
    do cwebp -q 80 "$file" -o "${file%.*}.webp";
    done;
}
# bun completions
[ -s "/Users/julien/.bun/_bun" ] && source "/Users/julien/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# flutter
export PATH="$PATH:$HOME/.develop/flutter/bin"

# docker wpcli
alias wpcli="docker compose exec web wp --allow-root"

# Java
# export JAVA_HOME=/usr/libexec/java_home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

alias jvm21="export JAVA_HOME=/usr/libexec/java_home"
alias jvm17="export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home"

# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Zlib
export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig"

# Brew
export HOMEBREW_NO_AUTO_UPDATE=1

# Zip
export PATH="/opt/homebrew/opt/zip/bin:$PATH"

# Php
export PATH="$PATH:/opt/homebrew/opt/php@8.0/bin"

alias d="docker"
alias dc="docker compose"
alias dcu="docker compose up"
alias dcr="docker compose restart"
alias dcd="docker compose down"
alias dcs="docker compose start"
alias dct="docker compose stop"
alias dce="docker compose exec"
function dcsh () {
  docker compose exec $1 sh;
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/google-cloud-sdk/completion.zsh.inc'; fi

# PHP version manager
# source ~/.pvm/pvm.zsh

alias restartTouchbar="sudo pkill TouchBarServer; sudo killall ControlStrip"

# Starship
eval "$(starship init zsh)"

# Oh my posh
# export OHMYPOSHCONFIG="~/.config/ohmyposh.toml"
# export OHMYPOSHCONFIG="~/.config/ohmyposh/montys.omp.toml"
# alias ompconfig="vim $OHMYPOSHCONFIG"
# eval "$(oh-my-posh init zsh --config=$OHMYPOSHCONFIG)"

# Zoxide
eval "$(zoxide init zsh)"

# pnpm
export PNPM_HOME="/Users/jlecarpentier/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# clang
# export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
# export CC="/opt/homebrew/opt/llvm/bin/clang"
export CC="/usr/bin/clang"
# export CXX="$CC++"
# export LDFLAGS="$LDFLAGS -L/opt/homebrew/opt/llvm/lib"
# export CPPFLAGS="$CPPFLAGS -I/opt/homebrew/opt/llvm/include"

# Suggests correction for mispelled shell command.
# setopt correct

# Set variables for curl etc. to use cegedim proxy.
# Works for curl, brew and nvm with just url and port,
# works for lerna with username:password@url:port,
# currently not working for gradle and maybe cocoapods with maiia connect

# Avoid including credentials in version control.
[ -f ~/.credentials ] && source ~/.credentials

# Proxy script for Cegedim Nantes broken internet.
set_proxy() {
  if curl --output /dev/null --silent --head isp-ceg.emea.cegedim.grp:3128;
  then
    PROXY="isp-ceg.emea.cegedim.grp:3128";
    SHOULD_SET_PROXY=true;
    while getopts "cd" flag; do
      case $flag in
        c) 
          PROXY="$USERNAME:$PASSWORD@$PROXY";
        ;;
        d)
          SHOULD_SET_PROXY=false;
        ;;
      esac
    done
    export PROXY;
    if $SHOULD_SET_PROXY;
    then
      echo "Using cegedim proxy";
      export ALL_PROXY=$PROXY;
      export all_proxy=$PROXY;
      export HTTP_PROXY=http://$PROXY;
      export http_proxy=http://$PROXY;
      export HTTPS_PROXY=http://$PROXY;
      export https_proxy=http://$PROXY;
      export NODE_TLS_REJECT_UNAUTHORIZED=0
    else
      echo "Exported PROXY"
    fi
  fi
}
clear_proxy ()
{
  unset PROXY ALL_PROXY all_proxy HTTP_PROXY http_proxy HTTPS_PROXY https_proxy NODE_TLS_REJECT_UNAUTHORIZED
}

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/jlecarpentier/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Created by `pipx` on 2025-04-15 09:46:59
export PATH="$PATH:/Users/jlecarpentier/.local/bin"

export OPENAI_API_KEY="sk-925d80c16633497f8a04a12578bb0e3b"

export PATH=$PATH:$(go env GOPATH)/bin/
