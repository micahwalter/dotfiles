
export PATH="$HOME/.local/bin:$PATH"

export GOPATH=$HOME/.go
export PATH=$PATH:$(go env GOPATH)/bin

export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
