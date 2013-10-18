# history stuff
HISTFILESIZE=1000000000 HISTSIZE=1000000
# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Make ls use colors
export CLICOLOR=1

# basic shortcuts
alias la='ls -alhF'
alias ll='ls -lhF'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias l='ls -Fa'
alias ls='pwd;ls -F'
alias EXIT='exit'

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"

# Recursively delete `.DS_Store` files
alias rmdsstore="find . -type f -name '*.DS_Store' -ls -delete"

# Show/hide hidden files in Finder
alias showhidden="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# SSH to Bluenose
alias blue='ssh dneil@bluenose.cs.dal.ca'

# Mount Bluenose as a filesystem
alias mblue='sshfs dneil@bluenose.cs.dal.ca: ~/Bluenose -oauto_cache,reconnect,volname=Bluenose'
alias mbluew='sshfs dneil@bluenose.cs.dal.ca:/users/webhome/dneil/ ~/BluenoseWeb -oauto_cache,reconnect,volname=BluenoseWeb'
# Unmount Bluenose as a filesystem                                                                                                     
alias ublue='umount ~/Bluenose'
alias ubluew='umount ~/BluenoseWeb'

# Make mamp only available to my localhost
alias mamplocal='sudo cp /Applications/MAMP/conf/apache/httpd.local /Applications/MAMP/conf/apache/httpd.conf; /Applications/MAMP/bin/apache2/bin/apachectl restart'
# Make mamp available to anyone on the network
alias mamp='sudo cp /Applications/MAMP/conf/apache/httpd.orig /Applications/MAMP/conf/apache/httpd.conf; /Applications/MAMP/bin/apache2/bin/apachectl restart'

#edit this profile
alias profile='emacs ~/.profile'
alias catprofile='cat ~/.profile'

alias airdrop='echo defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1'

# Switching to, and saving different time machine disks
alias dn='sudo cp /Library/Preferences/com.apple.TimeMachine.DN /Library/Preferences/com.apple.TimeMachine.plist'
alias newdn='sudo cp /Library/Preferences/com.apple.TimeMachine.plist /Library/Preferences/com.apple.TimeMachine.DN'
alias ver='sudo cp /Library/Preferences/com.apple.TimeMachine.Versions /Library/Preferences/com.apple.TimeMachine.plist'
alias newver='sudo cp /Library/Preferences/com.apple.TimeMachine.plist /Library/Preferences/com.apple.TimeMachine.Versions'

alias pl='pwd; ls -Fa'
alias s='source ~/.profile'

# GIT
# some aliases require additional arguments to complete
# others can have additional functionality when used with more options

source /usr/local/git/contrib/completion/git-completion.bash

alias grv='git remote -v'      #show list of remote repositories
alias gb='git branch'
alias gba='gb -a'              #show full branch listing including remote branches

alias gch='git checkout'       #switch between branches
alias gchb='gch -b'            #create a new branch and switch to it

alias gs='date; git status'
alias gss='gs -s'              #more compact status

alias gd='git diff'            #see code changes from last commit, doesn't include new files
alias gdc='gd --cached'        #see code changes currently staged for commit

alias ga='git add'
alias gap='ga -p'              #pick which hunks of code in a file to stage for commit
alias gai='ga -i'              #more interactive (complicated) way to stage files and hunks of code for commit
alias gaa='ga -A'              #blanket add changes, deletions, and any new files not expressly ignored

alias gr='git reset'           #remove file from staging
alias unstage='gr'
alias grh='gr --hard'          #reset branch to last commit and throw away changes since
alias uncommit='gr HEAD^'      #undo last commit but keep local changes


alias gst='git stash'          #stash away any changes to a branch, usefull so you can switch between branches without commit
alias gsts='gst save'          #stash with a name
alias gstp='gst pop'           #pop last stash back into current working branch

alias gc='git commit'          #commit currently staged files
alias gca='gc -a'              #automatically stage deleted and modified files before commiting
alias gcaa='gca --amend'       #stage any changes and add to last commit
alias gcm='gc -m'              #type commit message as argument for command
alias gcam='gca -m'
alias gcama='gcaa -m'
alias gcma='gc --amend -m'

alias gwc='git whatchanged'    #review commit messages and files that had changes for commit history
alias gwcp='gwc -p'            #review lines of code that changed for commit history

alias glogm='git log --graph --date-order --decorate'
alias glog='glogm --oneline'
alias glogam='glogm --all'
alias gloga='glog --all'       #show commit graph with all branches
alias gloga5='gloga -n 5'
alias gloga10='gloga -n 10'
alias gloga15='gloga -n 15'
alias gloga20='gloga -n 20'

alias gh='git push'
alias gl='git pull'             #not recommended
alias glr='gl --rebase'         #not recommended
alias gf='git fetch'            #use this instead, review changes, then merge locally as desired

alias gua='git subtree add -P'
alias gul='git subtree pull -P'   #required arguments <folder> [options] <repo> <branch>
alias guh='git subtree push -P'
alias gum='git subtree merge -P'
alias gus='git subtree split -P'

alias gm='git merge'
alias gmnc='gm --no-commit'
alias gmnff='gm --no-ff'        #recommended merge command for more visual commit history

# preview aliases
alias ql='qlmanage -p'
alias quick='qlmanage -p'
alias look='qlmanage -p'
alias peek='qlmanage -p'
alias preview='qlmanage -p'
alias play='qlmanage -p'

alias folder='open -R'
alias show='open -R'

#user prompt colours
alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"
export PS1='[\t]\[\033[0;36m\]\u\[\033[0;36m\]@\[\033[0;36m\]\h \[\033[0;32m\]\w\[\033[0;31m\]$(__git_ps1)\[\033[0;37m\]\\$ \[\033[00m\]'

# LSCOLORS needs 11 sets of letters indicating foreground and background colors:
export LSCOLORS=ExFxCxDxBxegedabagacad
		#directory
		  #symbolic link
		    #socket
		      #pipe
			#executable
			  #block special
			    #character special
			      #executable with setuid bit set
				#executable with setgid bit set
				  #directory writable to others, with sticky bit
				    #directory writable to others, without sticky bit

# a  black
# b  red
# c  green
# d  brown
# e  blue
# f  magenta
# g  cyan
# h  light grey
# A  block black, usually shows up as dark grey
# B  bold red
# C  bold green
# D  bold brown, usually shows up as yellow
# E  bold blue
# F  bold magenta
# G  bold cyan
# H  bold light grey; looks like bright white
# x  default foreground or background

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH


