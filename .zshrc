if [[ -e ~/.zsh.d ]]; then
    for file in ~/.zsh.d/*.zsh; do
        source "$file"
    done
    if [[ -e ~/.zsh.d/"$(hostname)" ]]; then
        for file in ~/.zsh.d/"$(hostname)"/*.zsh; do
            source "$file"
        done
    fi
fi
