# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias vim="vi"
alias vi="nvim"
alias szc="source .zshrc"

function config()
{
  cd ~/.config 
}

function pconfig()
{
  cd ~/dotfiles/pohlrabi/.config
  nvim
}

function clocal()
{
  cd ~/.local/share
  nvim
}

# Login with ssh-key
function login()
{
  eval $(ssh-agent -s)
  ssh-add "$1"
}

# Set theme
function settheme() {
  dir=$(realpath "$1")
  echo "$dir"
  flavours generate dark "$dir"
  flavours apply generated
  swaymsg output "*" bg "$dir" fill
  echo "swaymsg output * bg '$dir' fill"
  echo "$dir" > ~/.bg
}
