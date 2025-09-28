# Set-up steps

- disable native control+space in macos
- brew install alfred neovim node fzf tmux git ripgrep fd gh prettierd oven-sh/bun/bun orbstack bruno llvm
- brew install --cask rio nikitabobko/tap/aerospace gimp zen 1password godot-mono
- clone this repo
- clone tpm (<https://github.com/tmux-plugins/tpm>)
- download and add a fixed font
- open tmux and run `tmux source-file ~/.tmux.conf`
- press `prefix + I` to install plugins
- [syntax highlights](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
- [better 'ls'](https://github.com/eza-community/eza?tab=readme-ov-file)

- [nvim setup 0-100](https://www.youtube.com/watch?v=evCmP4hH7ZU)

Clone scripts and add to .zshrc
.zshrc

```sh
export PATH="/opt/homebrew/bin:$PATH" >> ~/.zshrcsource
export PATH="$HOME/.local/bin:$PATH"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# ---- Eza (better ls) -----
alias ls="eza --icons=always"

alias v="nvim"

export PS1="%n$"

# Load color definitions
 autoload -U colors && colors

# Enable fzf key bindings and auto-completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Use fzf for command history search
bindkey '^R' fzf-history-widget

 custom_prompt() {
     local GREEN="%{$fg_bold[green]%}"
     local CYAN="%{$fg[cyan]%}"
     local WHITE="%{$fg[white]%}"
     local RESET="%{$reset_color%}"
     local NEWLINE=$'\n'

     # Set the prompt with color codes, newlines, and reset color at the end
     PROMPT=" ${WHITE} ${GREEN}Mantas ${CYAN}%1~ ${RESET}› "
 }

 # Apply the custom prompt
 custom_prompt
```
