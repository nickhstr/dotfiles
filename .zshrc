# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Go path stuff
export GOPATH=$HOME/go
export GOROOT=$(go env GOROOT)
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="robbyrussell"

# Needed for Pure theme
# ZSH_THEME=""

# ZSH_THEME="agnoster"

# Spaceship Theme
# ZSH_THEME="spaceship"
# SPACESHIP_DIR_COLOR=cyan
# SPACESHIP_PROMPT_ADD_NEWLINE=false
# SPACESHIP_PROMPT_SEPARATE_LINE=false
# SPACESHIP_GIT_BRANCH_COLOR=green
# SPACESHIP_NODE_SHOW=false
# SPACESHIP_GOLANG_SHOW=false
# SPACESHIP_PACKAGE_SHOW=false
# SPACESHIP_DOCKER_SHOW=false
# SPACESHIP_RUBY_SHOW=false
# SPACESHIP_EMBER_SHOW=false
# SPACESHIP_ELM_SHOW=false
# SPACESHIP_ELIXIR_SHOW=false
# SPACESHIP_XCODE_SHOW_LOCAL=false
# SPACESHIP_XCODE_SHOW_GLOBAL=false
# SPACESHIP_SWIFT_SHOW_LOCAL=false
# SPACESHIP_SWIFT_SHOW_GLOBAL=false
# SPACESHIP_PHP_SHOW=false
# SPACESHIP_RUST_SHOW=false
# SPACESHIP_HASKELL_SHOW=false
# SPACESHIP_JULIA_SHOW=false
# SPACESHIP_AWS_SHOW=false
# SPACESHIP_VENV_SHOW=false
# SPACESHIP_CONDA_SHOW=false
# SPACESHIP_PYENV_SHOW=false
# SPACESHIP_DOTNET_SHOW=false
# SPACESHIP_KUBECTL_SHOW=false

# ZSH_THEME="oxide"

# Hyperzsh theme
# ZSH_THEME="hyperzsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git wd)

source $ZSH/oh-my-zsh.sh

# Load the Pure theme
# autoload -U promptinit; promptinit
# prompt pure

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim='mvim -v'
alias vi='mvim -v'
alias nerf='HOST=web.dev.weather.com yarn dev'
alias nerfdb='HOST=web.dev.weather.com yarn debug'
alias localpi='~/pi/local_pi.sh'
alias remotepi='~/pi/remote_pi.sh'

DEFAULT_USER=`whoami`

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GNU Tools stuff
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/findutils/share/man:$MANPATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
alias ls='ls --color=auto'

# direnv setup
eval "$(direnv hook zsh)"
