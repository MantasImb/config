- disable native control+space in macos
- brew install alfred neovim node tmux git ripgrep fd gh
- brew install --cask rio
- clone this repo
- clone tpm
- download and add a fixed font
- open tmux and run `tmux source-file ~/.tmux.conf`
- press `prefix + I` to install plugins
- [syntax highlights](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
- [better 'ls'](https://github.com/eza-community/eza?tab=readme-ov-file)

.zshrc
```
export PATH="/opt/homebrew/bin:$PATH" >> ~/.zshrcsource
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# ---- Eza (better ls) -----
alias ls="eza --icons=always"

export PS1="%n$"

# Load color definitions
 autoload -U colors && colors

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
