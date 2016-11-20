# Caferock
alias sfs-rock='sshfs -p 22922 -o ServerAliveInterval=15 -o follow_symlinks chris@caferock.org: ~/Documents/Programming/Remote/caferock'
alias fu-rock='fusermount -u ~/Documents/Programming/Remote/caferock'

# Gogogh
alias sfs-gogo='sshfs -o ServerAliveInterval=15 -o follow_symlinks -o workaround=rename chris@chris.dev.gogotraining.com:/var/www/sandbox/chris ~/Documents/Programming/Remote/gogo'
alias fu-gogo='fusermount -u ~/Documents/Programming/Remote/gogo'

# Eli Kirk Dev (new)
alias sfs-ekdev='sshfs -o ServerAliveInterval=15 -o follow_symlinks chris@elikirk-dev.com:/var/www/hosts ~/Documents/Programming/Remote/ekdev'
alias fu-ekdev='fusermount -u ~/Documents/Programming/Remote/ekdev'

alias please='sudo $(history -p !!)'
