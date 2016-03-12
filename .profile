# history stuff
HISTFILESIZE=1000000000 HISTSIZE=1000000
# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; echo -ne \"\033]0;${USER}@${HOSTNAME}\007\"; $PROMPT_COMMAND"

# Make ls use colors
export CLICOLOR=1

alias project="cd ~/Google\ Drive/Dropbox/4176\ Mobile/project/"

alias bat='~/.battery.sh; cat ~/.batteryHistoryToUpload'

#edit this profile
alias profile='sublime ~/.profile'
alias catprofile='cat ~/.profile'

#remind me of aliases
alias aliases='catprofile'

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

alias du1='du -ha --max-depth=1 2>/dev/null'
alias du2='du -ha --max-depth=2 2>/dev/null'

alias findreadable='find . -perm -o=r 2>/dev/null'
alias findreadable1='findreadable -maxdepth 1'
alias findreadable2='find . -maxdepth 2 -type d -perm -o=r 2>/dev/null'
alias findreadabledir='find . -maxdepth 1 -type d -perm -o=r 2>/dev/null'
alias findreadablefile='find . -maxdepth 1 -type f -perm -o=r 2>/dev/null'
alias findreadablefile3='find . -maxdepth 3 -type f -perm -o=r 2>/dev/null'

# clear IOS simulator
alias clearIOSsim="rm -rf ~/Library/Application\ Support/iPhone\ Simulator"
alias sim="open ~/Library/Application\ Support/iPhone\ Simulator/"
alias unstoryboard="abandon Ship-Fit/Ship-Fit/en.lproj/MainStoryboard_iP*" #git reset HEAD storyboards, for ditching xcode 5 updates, careful though!

# Fix osx archive utility hanging
alias fixarchiveutility='sudo killall -9 appleeventsd'

# Find and show size of all .metadata folders on system
alias metasize="find . -iname '*.metadata*' | xargs -I {} du -sh {}"

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# Recursively delete `.DS_Store` files
alias dsstore="find . -iname '.DS_Store'"
alias rmdsstore="find . -iname '.DS_Store' -delete"

# Show/hide hidden files in Finder
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -boolean true && killall Finder"
alias hidehidden="defaults delete com.apple.finder AppleShowAllFiles && killall Finder"

# toggle osx key repeat
alias repeat='defaults write -g ApplePressAndHoldEnabled -bool false'
alias unrepeat='defaults write -g ApplePressAndHoldEnabled -bool false'
alias norepeat=unrepeat

# SSH to Bluenose
alias blue='ssh dneil@bluenose.cs.dal.ca'
alias pblue='autossh -M 20000 -N dneil@bluenose.cs.dal.ca &'
alias kblue='killall autossh'

# connect to school mysql
alias mysql='mysql -u dneil -h db.cs.dal.ca -p'

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

alias airdrop='echo defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1'

# Switching to, and saving different time machine disks
alias dn='sudo cp /Library/Preferences/com.apple.TimeMachine.DN /Library/Preferences/com.apple.TimeMachine.plist'
alias newdn='sudo cp /Library/Preferences/com.apple.TimeMachine.plist /Library/Preferences/com.apple.TimeMachine.DN'
alias ver='sudo cp /Library/Preferences/com.apple.TimeMachine.Versions /Library/Preferences/com.apple.TimeMachine.plist'
alias newver='sudo cp /Library/Preferences/com.apple.TimeMachine.plist /Library/Preferences/com.apple.TimeMachine.Versions'

alias pl='pwd; ls -Fa'
alias s='source ~/.profile'

# GIT
source ~/gits

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
export PS1='[\t]\[\033[0;34m\]\u\[\033[0;34m\]@\[\033[0;34m\]\h \[\033[0;34m\]\w\[\033[0;31m\]$(__git_ps1)\[\033[0;37m\]\\$ \[\033[00m\]'

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

