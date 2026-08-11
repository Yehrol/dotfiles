# ============================================================================ #
#                                     PATH                                     #
# ============================================================================ #
# Add bin and local bin to path
for dir in "$HOME/bin" "$HOME/.local/bin"; do
    if [[ -d "$dir" ]]; then
        path=("$dir" $path)
    fi
done