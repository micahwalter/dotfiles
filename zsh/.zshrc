export GOPATH="$HOME/.go"
export PATH=$PATH:$(go env GOPATH)/bin

export GPG_TTY=$(tty)
eval "$(starship init zsh)"


