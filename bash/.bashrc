export PATH=$PATH:$HOME/bin

export PLATFORM=$(uname -s)

# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

[[ $- == *i* ]] || return

for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Enable tab completion for `g` by marking it as an alias for `git`
if type __git_complete &> /dev/null; then
    __git_complete g __git_main
fi;

# Enable git branch name completion if file exists
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

##
## better `cd`'ing
##

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Correct spelling errors in arguments supplied to cd
shopt -s cdspell;

# Autocorrect on directory names to match a glob.
shopt -s dirspell 2> /dev/null

# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar 2> /dev/null

# User specific aliases and functions

#export GOPATH=${HOME}/go
#export PATH=${PATH}:/usr/local/go/bin:${GOPATH}/bin
