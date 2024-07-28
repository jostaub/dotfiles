#!/usr/bin/env bash
FZF_DEFAULT_SEARCH_PATHS="$HOME/projects/"
FZF_SEARCH_PATHS="${TMUX_PROJECT_PATHS:-$FZF_DEFAULT_SEARCH_PATHS}"

if [[ $# -eq 1 ]]; then
    selected_path=$(realpath -eq '$1')
    # if input path dos not exist or is a file treat input as session in current folder
    if [[ $? -ne 0 ]] || [[ -f $selected_path ]]; then
        selected_path=$(pwd)
        session_name="$1"
    fi
else
    selected_path=$(find $FZF_SEARCH_PATHS -depth -maxdepth 1 -mindepth 1 -type d | nl -w1 -s' ' | fzf --preview='. ~/.local/bin/scripts/smart_fzf_preview.sh $(echo /'{}/' | cut -c 3-)' --preview-label='[ Preview ]' --preview-label-pos='0:top' | cut -c 3-)
fi

if [[ -z $selected_path ]]; then
    echo "[Error]: Cant find a selected_path!" 1>&2
    exit 1
fi

tmux_running=$(pgrep tmux)
if [[ -z "$session_name" ]]; then 
    session_name=$(basename "$selected_path" | tr . _)
fi

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $session_name -c $selected_path
    exit 0
fi

if ! tmux has-session -t=$session_name 2> /dev/null; then
    tmux new-session -ds $session_name -c $selected_path
fi

tmux switch-client -t $session_name
