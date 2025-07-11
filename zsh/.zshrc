# ============================================================================ #
#                                    ALIASES                                   #
# ============================================================================ #
[ -f ~/.aliases ] && source ~/.aliases

# ============================================================================ #
#                                     PATH                                     #
# ============================================================================ #
# Add bin and local bin to path
# Used for oh-my-posh
for dir in "$HOME/bin" "$HOME/.local/bin"; do
	[ -d "$dir" ] && PATH="$dir:$PATH"
done

# ============================================================================ #
#                                    HISTORY                                   #
# ============================================================================ #
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# ============================================================================ #
#                                     ZINIT                                    #
# ============================================================================ #
# ZINIT Setup
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# ZINIT Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# ============================================================================ #
#                                  OH MY POSH                                  #
# ============================================================================ #
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/omp.toml)"

# ============================================================================ #
#                              FIXING ZSH KEYCODE                              #
# ============================================================================ #

# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"

# setup key accordingly
[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"       beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"        end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"     overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}"  backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"     delete-char
[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"         up-line-or-history
[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"       down-line-or-history
[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"       backward-char
[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"      forward-char
[[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"     beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"   end-of-buffer-or-history
[[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}"  reverse-menu-complete

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

# ============================================================================ #
#                              COMPLETION STYLING                              #
# ============================================================================ #
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # ignore case
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # color completion
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath' # FIXME: find a way to see hiden files

# ============================================================================ #
#                               SHELL INTEGRATION                              #
# ============================================================================ #
# TODO: check if and how it is installed
eval "$(fzf --zsh)"
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh # git installed

# ============================================================================ #
#                                      KDE                                     #
# ============================================================================ #
#export GDK_DEBUG=portals # fix multiple file explorer being used

# ============================================================================ #
#                                      NVM                                     #
# ============================================================================ #
# TODO: check if installed
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ============================================================================ #
#                                    NEOVIM                                    #
# ============================================================================ #
# TODO: check if installed
# export PATH="$PATH:/opt/nvim-linux64/bin"

# ============================================================================ #
#                                     PYENV                                    #
# ============================================================================ #
# TODO: check if installed
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init - zsh)"

# ============================================================================ #
#                                     CONDA                                    #
# ============================================================================ #
# TODO: check if installed
# [ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# ============================================================================ #
#                                    SDKMAN                                    #
# ============================================================================ #
# TODO: check if installed
# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
