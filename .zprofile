export MINIPLUG_HOME="$HOME/.zsh/plugins"

PATH="$PATH:$HOME/.local/bin:$HOME/.pulumi/bin:$HOME/.cargo/bin/"


#dracula zsh
export DRACULA_DISPLAY_TIME=1
export DRACULA_TIME_FORMAT=" [%a %b %d %Y] %R "
#export DRACULA_TIME_FORMAT=" %R"
export DRACULA_CUSTOM_VARIABLE=$AWS_VAULT
export DRACULA_DISPLAY_NEW_LINE=1
export DRACULA_ARROW_ICON="$ "

export GOPATH=$HOME/.local/bin/go
export GOROOT=$HOME/.local/bin/go/bin

export EDITOR=nvim
export TERM='xterm-256color'
export VISUAL=nvim
export TMUX_SCRIPT="$HOME/.config/tmux"
export AGENT='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'
#RUST
export RUSTUP_HOME="$HOME/.rustup"
export CARGO_HOME="$HOME/.cargo"

#aws-cli ENV
export AWS_REGION=us-east-1
export AWS_VAULT_BACKEND=pass
export AWS_PAGER=
export AWS_CLI_AUTO_PROMPT=on-partial
export GPG_TTY=$(tty)
