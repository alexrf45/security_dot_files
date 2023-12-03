function fg-bg() {
    if [[ $#BUFFER -eq 0 ]]; then
        local backgroundProgram="$(jobs | tail -n 1 | awk '{print $4}')"
        case "$backgroundProgram" in
            "nc"|"ncat"|"netcat")
                # Make sure that /dev/tty is given to the stty command by doing </dev/tty
                local columns=$(stty -a < /dev/tty | grep -oE 'columns [0-9]+' | cut -d' ' -f2)
                local rows=$(stty -a < /dev/tty | grep -oE 'rows [0-9]+' | cut -d' ' -f2)
                notify-send "Terminal dimensions" "Rows: $rows\nColumns: $columns\nstty command on clipboard"
                echo "stty rows $rows cols $columns
                export TERM=\"xterm-256color\"" | xclip -i -selection clipboard
                stty raw -echo < /dev/tty; fg
                ;;
            *)
                fg
                ;;
        esac
    fi
}
zle -N fg-bg
bindkey '^Z' fg-bg
