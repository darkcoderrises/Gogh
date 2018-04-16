#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
COLOR_01="#000507"           # HOST
COLOR_02="#d94085"           # SYNTAX_STRING
COLOR_03="#2ab250"           # COMMAND
COLOR_04="#ffd16f"           # COMMAND_COLOR2
COLOR_05="#883cdc"           # PATH
COLOR_06="#ececec"           # SYNTAX_VAR
COLOR_07="#c1b8b7"           # PROMP
COLOR_08="#fff8de"           #

COLOR_09="#009cc9"           #
COLOR_10="#da6bac"           # COMMAND_ERROR
COLOR_11="#f4dca5"           # EXEC
COLOR_12="#eac066"           #
COLOR_13="#308cba"           # FOLDER
COLOR_14="#ae636b"           #
COLOR_15="#ff919d"           #
COLOR_16="#e4838d"           #

BACKGROUND_COLOR="#1f1726"   # Background Color
FOREGROUND_COLOR="#dafaff"   # Text
CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
PROFILE_NAME="Wild Cherry"
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
