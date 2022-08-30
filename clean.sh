#!/bin/sh

rm -rf ~/Library/Caches/*
#Slack
rm -rf ~/Library/Application\ Support/Slack/Cache/*
rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/*
#VsCode
rm -rf ~/Library/Application\ Support/Code/Cache/*
rm -rf ~/Library/Application\ Support/Code/CachedData/*
#rm -rf ~/Library/Application\ Support/Code/Crashpad/completed/*
rm -rf ~/Library/Application\ Support/Code/User/workspaceStorage/*
#Chrome
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/*
rm -rf ~/Library/Application\ Support/Google/Chrome/Crashpad/completed/*
#Discord
find ~/Library/Application\ Support/discord/Cache/ -print0 | xargs -0 rm -rf  
#find . -name "*" -delete
rm -rf ~/Library/Application\ Support/discord/Code\ Cache/js/*
rm -rf ~/Library/Application\ Support/discord/Crashpad/completed/*


# /bin/echo $'\n\e[38;5;226m== Garbage removed! ==\e[0m'
# curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh
# source $HOME/.brewconfig.zsh
# brew tap LouisBrunner/valgrind
# brew install --HEAD LouisBrunner/valgrind/valgrind
# source ~/.zshrc
