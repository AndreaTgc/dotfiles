# Andrea Colombo (AndreaTgc) zsh config

# init starship prompt
eval "$(starship init zsh)"

# Init the zsh plugins, this uses the brew prefix path so
# it's not guaranteed to work on other machines
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/andreatgc/.opam/opam-init/init.zsh' ]] || source '/Users/andreatgc/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
