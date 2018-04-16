#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
COLOR_01="#212121"           # HOST
COLOR_02="#c30771"           # SYNTAX_STRING
COLOR_03="#10a778"           # COMMAND
COLOR_04="#a89c14"           # COMMAND_COLOR2
COLOR_05="#008ec4"           # PATH
COLOR_06="#523c79"           # SYNTAX_VAR
COLOR_07="#20a5ba"           # PROMP
COLOR_08="#d9d9d9"           #

COLOR_09="#424242"           #
COLOR_10="#fb007a"           # COMMAND_ERROR
COLOR_11="#5fd7af"           # EXEC
COLOR_12="#f3e430"           #
COLOR_13="#20bbfc"           # FOLDER
COLOR_14="#6855de"           #
COLOR_15="#4fb8cc"           #
COLOR_16="#f1f1f1"           #

BACKGROUND_COLOR="#f1f1f1"   # Background Color
FOREGROUND_COLOR="#424242"   # Text
CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
PROFILE_NAME="Pencil Light"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
function gogh_colors () {
    echo ""
    echo -e "\033[0;30m█████\\033[0m\033[0;31m█████\\033[0m\033[0;32m█████\\033[0m\033[0;33m█████\\033[0m\033[0;34m█████\\033[0m\033[0;35m█████\\033[0m\033[0;36m█████\\033[0m\033[0;37m█████\\033[0m"
    echo -e "\033[0m\033[1;30m█████\\033[0m\033[1;31m█████\\033[0m\033[1;32m█████\\033[0m\033[1;33m█████\\033[0m\033[1;34m█████\\033[0m\033[1;35m█████\\033[0m\033[1;36m█████\\033[0m\033[1;37m█████\\033[0m"
    echo ""
}

function curlsource() {
    f=$(mktemp -t curlsource)
    curl -o "$f" -s -L "$1"
    source "$f"
    rm -f "$f"
}

SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PARENT_PATH="$(dirname "$SCRIPT_PATH")"

gogh_colors
if [ -e $PARENT_PATH"/apply-colors.sh" ]; then
    source $PARENT_PATH"/apply-colors.sh"
else
        if [ $(uname) = "Darwin" ]; then
        # OSX ships with curl and ancient bash
        # Note: here, sourcing directly from curl does not work
        curlsource https://raw.githubusercontent.com/Mayccoll/Gogh/master/apply-colors.sh
    else
        # Linux ships with wget
        source <(cat ~/Projects/Gogh/apply-colors.sh)
    fi
fi
