function peco-select-file() {
    local file_path

    # Wheter in git repo or not
    git rev-parse > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        file_path=$((git ls-files; git ls-files --others --exclude-standard) | peco)
    else
        file_path=$(find . | peco)
    fi

    if [ -n "$LBUFFER" ]; then
        BUFFER="$LBUFFER$file_path"
    fi

    CURSOR=$#BUFFER
}

zle -N peco-select-file
bindkey '^G' peco-select-file
