if ! command -sq starship
    source $__fish_data_dir/functions/fish_prompt.fish
    exit
end

set -g VIRTUAL_ENV_DISABLE_PROMPT 1
set -gx STARSHIP_SHELL fish
set -gx STARSHIP_SESSION_KEY (random 10000000000000 9999999999999999)

function fish_prompt
    switch $fish_key_bindings
        case fish_{hybrid,vi}_key_bindings
            set STARSHIP_KEYMAP $fish_bind_mode
        case "*"
            set STARSHIP_KEYMAP insert
    end

    starship prompt --terminal-width $COLUMNS --status $status --pipestatus "$pipestatus" --keymap $STARSHIP_KEYMAP --cmd-duration $CMD_DURATION --jobs (count (jobs -p))
end
