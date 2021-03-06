# used by Git Bash
# C:\Program Files\Git\etc\profile.d\git-prompt.sh

if test -f /etc/profile.d/git-sdk.sh
then
	TITLEPREFIX=SDK-${MSYSTEM#MINGW}
else
	TITLEPREFIX=$MSYSTEM
fi

PS1='\[\033]0;$PWD\007\]' # set window title
PS1="$PS1"'\[\033[34m\]'  # change to purple
PS1="$PS1"'\u@\h '        # USER_NAME@HOST followed by space
PS1="$PS1"'\[\033[33m\]'  # change to brownish yellow
PS1="$PS1"'\w'            # current working directory
if test -z "$WINELOADERNOEXEC"
then
	GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
	COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
	COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
	COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
	if test -f "$COMPLETION_PATH/git-prompt.sh"
	then
		. "$COMPLETION_PATH/git-completion.bash"
		. "$COMPLETION_PATH/git-prompt.sh"
		PS1="$PS1"'\[\033[36m\]' # change color to cyan
		PS1="$PS1"'`__git_ps1`'  # bash function
	fi
fi
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'$ '                 # prompt: always $

MSYS2_PS1="$PS1"               # for detection by MSYS2 SDK's bash.basrc

alias ls='ls -Fh --color=auto --show-control-chars'
alias la='ls -a'
alias ll='ls -alF'
alias g='git'
alias gc='git checkout'
alias gb='git branch'
alias gs='git status'
alias dk='docker'
