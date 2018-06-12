if [[ -e $SSH_TTY ]]; then
    . ~/.bash/aliases
    . ~/.bash/exports
    . ~/.bash/functions
    . ~/.sshrc
else
    if [[ -f ~/.bash/aliases ]]; then
        . ~/.bash/aliases
    fi

    if [[ -f ~/.bash/exports ]]; then
        . ~/.bash/exports
    fi

    if [[ -f ~/.bash/functions ]]; then
        . ~/.bash/functions
    fi

    if [[ -f ~/.bash/prompt ]]; then
        . ~/.bash/prompt
    fi
fi


