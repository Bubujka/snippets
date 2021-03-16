PROMPT_COMMAND=__prompt_command
__prompt_command() {
    local EXIT="$?"

    PS1="\n\[\033[32m\]\u @ \[\e[31;5m\]$(hostname)\[\033[0;36m\] \w\[\033[33m\]\[\033[34m\]\n\n"

    if [ $EXIT != 0 ]; then
        PS1+="\[\e[0;31m\]Error: ${EXIT} "
    fi

    PS1+="\$\[\e[0m\] "
}
