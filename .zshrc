# Created by newuser for 5.8.1
#ZSH_THEME="candy"
#autoload -Uz colors
#colors
#eval "$(starship init zsh)"

alias pbcopy='xsel --clipboard --input'
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship
zinit light zsh-users/zsh-autosuggestions # suggestion
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=250" # suggestionの色変更
zinit light zdharma/fast-syntax-highlighting # シンタックスハイライト
zinit light zdharma/history-search-multi-word # ctrl+r でコマンド履歴を検索
eval "$(starship init zsh)"
PATH=/home/chihi/.local/bin:/home/chihi/.local/share/zinit/plugins/starship---starship:/home/chihi/.local/share/zinit/polaris/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin"
#export PATH="$PYENV_ROOT/versions/3.11.2/lib/python3.11/site-packages:$PATH"
export PATH="/home/chihi/.cargo/bin:$PATH"
#eval "$(pyenv init --path)"
eval $(opam env)

# opam configuration
[[ ! -r /home/chihi/.opam/opam-init/init.zsh ]] || source /home/chihi/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

. "$HOME/.cargo/env"
# opam configuration
[[ ! -r /home/chihi/.opam/opam-init/init.zsh ]] || source /home/chihi/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
