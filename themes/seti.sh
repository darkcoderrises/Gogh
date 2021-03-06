#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
COLOR_01="#323232"           # HOST
COLOR_02="#c22832"           # SYNTAX_STRING
COLOR_03="#8ec43d"           # COMMAND
COLOR_04="#e0c64f"           # COMMAND_COLOR2
COLOR_05="#43a5d5"           # PATH
COLOR_06="#8b57b5"           # SYNTAX_VAR
COLOR_07="#8ec43d"           # PROMP
COLOR_08="#eeeeee"           #

COLOR_09="#323232"           #
COLOR_10="#c22832"           # COMMAND_ERROR
COLOR_11="#8ec43d"           # EXEC
COLOR_12="#e0c64f"           #
COLOR_13="#43a5d5"           # FOLDER
COLOR_14="#8b57b5"           #
COLOR_15="#8ec43d"           #
COLOR_16="#ffffff"           #

BACKGROUND_COLOR="#111213"   # Background Color
FOREGROUND_COLOR="#cacecd"   # Text
CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
PROFILE_NAME="Seti"
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
