if status is-interactive
    # Commands to run in interactive sessions can go here
end

# stock programs
alias mkdir-struct="bash ~/git/repos/shellscripts/mkdir-struct/create_folders.sh"
alias cctl="bash ~/git/repos/shellscripts/cctl/cctl.sh"
alias backupctl="bash ~/git/repos/shellscripts/backupctl/backupctl.sh"
alias gitctl="bash ~/git/repos/shellscripts/gitctl/gitctl.sh"

# custom commands
alias usb="cd /run/media/martin/ && cd 4BE7-5B2E"
alias eusb="umount /run/media/martin/4BE7-5B2E"
alias eallusb="umount /run/media/martin/*"
alias ngs="nvm use 14.17.1 && ng serve"
alias nvv="nvm use 14.17.1"
alias nzip="zip -x '*node_modules*' '*.idea*' '*.vscode*' -r"
alias cleard="clear && neofetch"
alias kssh="kitty +kitten ssh"
