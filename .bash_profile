# useful aliases
alias profile='subl ~/.bash_profile'
alias reload='. ~/.bash_profile'

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# shortcuts
alias finder='open .'
alias pud='pushd .'
alias pod='popd'
alias vvim='vim ~/.vimrc'
alias rmf='rm -rf'
alias htw='ssh mkohn@stl-s-stud.htwsaar.de'

# network stuff
alias ip='ipconfig getifaddr en0'
alias eip='dig +short myip.opendns.com @resolver1.opendns.com' # faster than http
alias ping='ping -c 5'

for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m \"$method\""
done

# ls
alias ll='ls -al'
alias ld="ls -lF | grep --color=never '^d'"

# grep
alias grep='grep --color=auto'

# Get week number
alias week='date +%V'

# can't bother with typos
alias gti="git" 
alias claer="clear"
alias celar="clear"

# useful functions
function manpdf() { man -t "${1}" | open -f -a /Applications/Preview.app/; }
function mcd() { mkdir -p "$1" && cd "$1"; }
function bak() { cp $1 $1.bak; } # Backup

function extract() {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)  tar xjf $1      ;;
            *.tar.gz)   tar xzf $1      ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      unrar e $1      ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xf $1       ;;
            *.tbz2)     tar xjf $1      ;;
            *.tgz)      tar xzf $1      ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *.7z)       7z x $1         ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

function rnc() { git commit -m"`curl -s http://whatthecommit.com/index.txt`"; } # random commit message
function gignore() { curl https://www.gitignore.io/api/$@ > .gitignore; } # gitignore for language
function ginit() { git init; git add .; git commit -m 'initial commit';} 

# tools
google() { (open "https://www.google.com/search?hl=en&q=$*" )& } 

# prompt
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
# export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]:$(__git_ps1 "(%s)")\$ '

# Avoid issues with `gpg` as installed via Homebrew.
# https://stackoverflow.com/a/42265848/96656
export GPG_TTY=$(tty);