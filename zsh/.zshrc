export GOPATH=$HOME/.go
export PATH=$PATH:$(go env GOPATH)/bin

eval "$(starship init zsh)"
export PATH="$HOME/.local/bin:$PATH"
