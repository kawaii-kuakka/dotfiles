function peco-select-file() {
    local file_path=$(find . | peco)

    if [ -n "$LBUFFER" ]; then
        BUFFER="$LBUFFER$file_path"
    fi

    CURSOR=$#BUFFER
}

zle -N peco-select-file
bindkey '^X^F' peco-select-file
