# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
alias brave='/Applications/Brave\ Browser.app/Contents/MacOS/Brave\ Browser '
alias out='pmset displaysleepnow'
alias bi='brave https://profile.intra.42.fr/ &'
alias ss='/Users/mboukhal/script/eDEX-UI.app/Contents/MacOS/eDEX-UI'
alias end_it='pmset displaysleepnow; rm -rf ~/Library/Preferences/com.apple.Bluetooth.plist; pmset displaysleepnow'
alias ploop='~/script/ploop.py'
alias code='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron'

alias update_push="make fclean; git add *; git commit -m '$(date)'; git push -f origin master"

alias bmac="networksetup -listallhardwareports | awk '/Bluetooth/ {n[NR+2]}; {if (NR in n) print $3 }'"
#~/script/a.out 2> /dev/null

# Path to your oh-my-zsh installation.
export ZSH="/Users/mboukhal/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

alias ggc="gcc  -Wall -Wextra -Werror"
alias getpool="cat ~/Desktop/Pool/*/*/*$1*"
alias gitp="git status && git add * && git commit -m 'pool 2021' && git status"
alias gitrp="git push origin master"
alias gitrr="git remote rm origin"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="tru# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mboukhal/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

alias ggc="gcc  -Wall -Wextra -Werror"
alias getpool="cat ~/Desktop/Pool/*/*/*$1*"
alias gitp="git status && git add * && git commit -m 'pool 2021' && git status"
alias gitrp="git push origin master"
alias gitrr="git remote rm origin"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.e"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
#	printf("\n%d\n",i);
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
plugins=(git)

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
#bash ~/script/clean.sh
cd Desktop/
date
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gitp='make fclean && git add * && git commit -m "$(date +%d.%m.%y-%H:%M:%S)" && git status && git push origin master'
alias getcommits='git log --format=%B $(git log -1 --pretty=format:"%h")'
alias watch="bash ~/script/watch.sh $1 $2"
alias start="bash ~/script/start.sh"

alias zz='bash ~/script/cleaner.sh'
clear

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/goinfre/mboukhal/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/goinfre/mboukhal/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/goinfre/mboukhal/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/goinfre/mboukhal/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/Contents/Home"
export ANDROID_SDK_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$HOME/goinfre/Flutter/flutter/bin"
export PATH="$PATH:/Applications/Android Studio.app/Contents/jre/Contents/Home/bin"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
export PATH="$PATH:$HOME/Library/Android/sdk/tools/bin"

export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/Contents/Home"
export ANDROID_SDK_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$HOME/goinfre/Flutter/flutter/bin"
export PATH="$PATH:/Applications/Android Studio.app/Contents/jre/Contents/Home/bin"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
export PATH="$PATH:$HOME/Library/Android/sdk/tools/bin"

PS1='%{$fg[green]%}[$?]%{$reset_color%} %{$fg[cyan]%}[$PWD]%{$reset_color%} $(git_prompt_info) %{$fg[red]%}[`uname -a | tr " " "\n" | grep "e*r*p" | tr "." "\n" | grep "e*r*p"`]%{$reset_color%} %{$fg[yellow]%}$(printf "\n  ➜ ") %{$reset_color%}'

# Load Homebrew config script
mm()
{
	reset
	make re 
	if [ $? -eq 0 ]
	then
		./*.x
	else
		echo -e "\033[0;31mErorr makeing\033[0m"
	fi
	RET=$?
	if [[ $RET -eq 139 ]]
	then
    	echo -e "\033[0;31mIt crashed!\033[0m"
	else
    	echo -e "\033[0;32mReturned value [$RET]\033[0m"

	fi
	make fclean
}

#alias mm='ymake; if [ $? -eq 0 ];then reset; make ; else echo -e "\033[0;31mErorr makeing\033[0m" ; fi;'
alias debt='python3 ~/debt/debt.py'
alias python='python3.7'
alias cls='clear; printf "\e[224;80H\n"'
# printf "\e[224;80H\n"
alias python='python3.9'
