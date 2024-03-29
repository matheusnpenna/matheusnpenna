# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/user/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source /usr/local/Cellar/zsh-syntax-highlighting/0.7.1

# Remove user@computarname
prompt_context() {}

export ANDROID_HOME=/Users/user/Library/Android/sdk
export PATH=${PATH}:/Users/user/Library/Android/sdk/tools
export PATH=${PATH}:/Users/user/Library/Android/sdk/platform-tools
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=${PATH}:/usr/local/Cellar/php/7.4.9
export PATH=${PATH}:$N_PREFIX/bin
export N_PREFIX="$HOME/.n"
export PYTHONPATH="/usr/local/bin/python3.10"
export PATH="$PATH:$PYTHONPATH"

alias python='/usr/local/bin/python3.10'

# aliases

#git
alias gt='git $*'
alias gta='gt add $*'
alias gts='gt status $*'
alias gtm='gt commit -m $*'
alias gtps='gt push $*'
alias gtpu='gt pull $*'
alias gtsync='gtpu && gtps $*'
alias ginit="git commit -m \":tada: "
alias glip="git commit -m \":lipstick: "
alias gbug="git commit -m \":bug: "
alias gzap="git commit -m \":zap: "
alias gart="git commit -m \":art: "
alias gdoc="git commit -m \":memo: "
alias grecycle="git commit -m \":recycle: "
alias gfeature="git commit -m \"::sparkles:: "
alias gitupdatebranch='git pull origin master && git checkout develop && git pull origin develop && git merge master && git checkout master && git merge develop'
#React-native
alias rn='react-native $*'
alias rnra='rn run-android $*'
alias rnri='rn run-ios $*'
alias rni8='rn run-ios --simulator="iPhone 8 Plus"'
alias rnla='rn log-android'
alias rnclear='cd android && ./gradlew clean && cd ..'
alias rns='rn start'
alias sk='adb shell input keyevent 82'
alias reverse='adb reverse tcp:8081 tcp:8081'
alias watclear='watchman watch-del .; watchman watch-project .; rns'
#Git Flow
alias gf='git flow $*'
alias gfinit='gf init $*'
alias gffstart='gf feature start $*'
alias gfffinish='gf feature finish $*'
alias gffpublish='gf feature publish $*'
alias gffpull='gf feature pull $*'
alias gfrstart='gf release start $*'
alias gfrfinish='gf release finish $*'
alias gfrpublish='gf release publish $*'
alias gfrpull='gf release pull $*'
alias gfrtrack='gf release track $*'
alias gfhstart='gf hotfix start $*'
alias gfhfinish='gf hotfix finish $*'
alias gfhpublish='gf hotfix publish $*'
alias gfhpull='gf hotfix pull $*'
alias gfbstart='gf bugfix start $*'
alias gfbfinish='gf bugfix finish $*'
alias gfbpublish='gf bugfix publish $*'
alias gfbpull='gf bugfix pull $*'
#Firebase
alias fb='firebase $*'
alias fbls='fb list $*'
alias fbuse='fb use $*'
alias fblogin='fb login $*'
alias fbhelp='fb help $*'
alias fbinit='fb init $*'
alias fblogout='fb logout $*'
alias fbopen='fb open $*'
alias fbserve='fb serve $*'
alias fbwebsetup='fb setup:web $*'
alias fbtoolsmigrate='fb tools:migrate $*'
#FB auth
alias fbimport='fb auth:import $*'
alias fbexport='fb auth:export $*'
#FB database
alias fbget='fb database:get $*'
alias fbpush='fb database:push $*'
alias fbset='fb database:set $*'
alias fbremove='fb database:remove $*'
alias fbupdate='fb database:update $*'
alias fbprofile='fb database:profile $*'
#FB hosting/functions
alias fbdeploy='fb deploy $*'
alias fbdisable='fb hosting:disable $*'
alias fblog='fb functions:log $*'
alias fbcfgclone='fb functions:config:clone $*'
alias fbcfgget='fb functions:config:get $*'
alias fbcfgset='fb functions:config:set $*'
alias fbcfgunset='fb functions:config:unset $*'
alias vs='code . --disable-gpu'

#mysql

alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
alias mysqlrestart='mysql.server restart'
alias usecomposer='set COMPOSER_MEMORY_LIMIT=99999999999&& php -d memory_limit=-1 /usr/local/bin/composer'
alias getfirebasetoken='firebase login:ci'



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/user/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/user/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/user/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/user/google-cloud-sdk/completion.zsh.inc'; fi



export NODE_OPTIONS="--max-old-space-size=7168"

export PATH="$HOME/.poetry/bin:$PATH"
