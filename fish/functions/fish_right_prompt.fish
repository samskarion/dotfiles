command -sq starship || exit

function fish_right_prompt
    switch $fish_key_bindings
        case fish_{hybrid,vi}_key_bindings
            set STARSHIP_KEYMAP $fish_bind_mode
        case "*"
            set STARSHIP_KEYMAP insert
    end

    starship prompt --right --terminal-width $COLUMNS --status $status --pipestatus "$pipestatus" --keymap $STARSHIP_KEYMAP --cmd-duration $CMD_DURATION --jobs (count (jobs -p))
end
