# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Path to powerlevel10k theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# List of plugins used
plugins=(
  git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Helpful aliases

alias gp='git push'
alias gtg='git tag'
alias gm='git merge'
alias gcp='git cherry-pick'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gpf='git push -f'
alias gcl='git clone'
alias gb='git branch'
alias gbd='git branch -d'
alias gpl='git pull --rebase'
alias gaa='git add --all'
alias gcam='git commit -a -m'
alias gs='git status'
alias grm='git fetch origin && git rebase origin/master'
alias dev='npm run dev'
alias ssh='env TERM=xterm-256color ssh' # allows kitty to work with ssh
alias hx='helix'
alias tree='tree -I node_modules'

export LANG='en_US.UTF-8'
export GDK_BACKEND='x11'
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH=~/.npm-g/bin:$PATH


#Display Pokemon
#pokemon-colorscripts --no-title -r 1,3,6

eval "$(zoxide init zsh)"
source /usr/share/nvm/init-nvm.sh
