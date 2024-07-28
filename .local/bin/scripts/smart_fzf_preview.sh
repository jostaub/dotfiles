#!/usr/bin/env bash

# Default commands to display files, directories, and .md files
FILE_CMD="cat"
DIR_CMD="ls -la --color=always"
MD_CMD="cat"

# Check if custom commands are provided as environment variables
if [[ ! -z "$DISPLAY_FILE_CMD" ]]; then
    FILE_CMD="$DISPLAY_FILE_CMD"
fi

if [[ ! -z "$DISPLAY_DIR_CMD" ]]; then
    DIR_CMD="$DISPLAY_DIR_CMD"
fi

if [[ ! -z "$DISPLAY_MD_CMD" ]]; then
    MD_CMD="$DISPLAY_MD_CMD"
fi

display_file() {
    local file_path="$1"
    $FILE_CMD "$file_path"
    echo "[INFO]: File contents end here."
}

display_md_file() {
    local file_path="$1"
    $MD_CMD "$file_path"
    echo "[INFO]: Readme File contents end here."
}

# display directory contents or README.md if it exists
display_directory() {
    local dir_path="$1"
    local readme_file=$(find "$dir_path" -maxdepth 1 -iname 'README.md' -print -quit)
    if [[ -n "$readme_file" ]]; then
        display_md_file "$readme_file"
    else
        $DIR_CMD "$dir_path"
    fi
}

replace_tilde() {
    local path="$1"
    if [[ "$path" == \~* ]]; then
        echo "${path/#\~/$HOME}"
    else
        echo "$path"
    fi
}

main() {
    local input="$1"
    local input_path=$(replace_tilde $input)

    if [[ -z "$input_path" ]]; then
        echo "Usage: $0 <path>"
        exit 1
    fi

    if [[ -f "$input_path" ]]; then
        display_file "$input_path"
    elif [[ -d "$input_path" ]]; then
        display_directory "$input_path"
    else
        echo "The path '$input_path' is neither a file nor a directory."
        exit 1
    fi
}

main "$1"
