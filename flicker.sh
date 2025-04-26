#!/bin/bash

# Author: Haitham Aouati
# GitHub: github.com/haithamaouati

# Text format
normal="\e[0m"
bold="\e[1m"
faint="\e[2m"
underlined="\e[4m"
error_color="\e[1;31m"

# Dependencies check
dependencies=(figlet curl)
for cmd in "${dependencies[@]}"; do
    if ! command -v "$cmd" &>/dev/null; then
        echo -e "${error_color}Error:${normal} '$cmd' is required but not installed. Please install it and try again." >&2
        exit 1
    fi
done

# Clear the screen
clear

print_banner() {
    figlet -f standard "Flicker"
    echo -e "Capture website screenshots\n"
    echo -e " Author: Haitham Aouati"
    echo -e " GitHub: ${underlined}github.com/haithamaouati${normal}\n"
}

print_banner

API_KEY="a268d21237914062817aa7469e1f468b"
API_URL="https://screenshot.abstractapi.com/v1/"

print_help() {
    echo "Usage: $0 -u <url>"
    echo ""
    echo "Options:"
    echo "  -u, --url     Target website URL"
    echo -e "  -h, --help    Show this help message\n"
    exit 0
}

take_screenshot() {
    local target_url="$1"
    if [[ -z "$target_url" ]]; then
        echo -e "[!] URL is required. Use -u or --url to specify it.\n"
        exit 1
    fi

    echo "[*] Capturing screenshot of: $target_url"
    curl -s "${API_URL}?api_key=${API_KEY}&url=${target_url}" -o "screenshot.png"

    if [[ -f screenshot.png ]]; then
        echo -e "[+] Screenshot saved to screenshot.png\n"
    else
        echo -e "[!] Failed to capture screenshot.\n"
    fi
}

# Main logic
while [[ $# -gt 0 ]]; do
    case "$1" in
        -u|--url)
            URL="$2"
            shift 2
            ;;
        -h|--help)
            print_help
            ;;
        *)
            echo "[!] Unknown option: $1"
            print_help
            ;;
    esac
done

take_screenshot "$URL"
