# Gogo
alias sfs-gogo='sshfs -p 22322 -o ServerAliveInterval=15 -o follow_symlinks -o workaround=rename chris@chris.dev.gogotraining.com:/var/www/sandbox/chris ~/Programming/Remote/gogo'
alias fu-gogo='fusermount -u ~/Programming/Remote/gogo'
alias ssh-gogo='ssh -p 22322 chris@chris.dev.gogotraining.com'

# Eli Kirk Dev
alias sfs-ekdev='sshfs -o ServerAliveInterval=15 -o follow_symlinks chris@elikirk-dev.com:/var/www/hosts ~/Programming/Remote/ekdev'
alias fu-ekdev='fusermount -u ~/Programming/Remote/ekdev'
alias ssh-ekdev='ssh chris@elikirk-dev.com'

# Caferock
alias sfs-caferock='sshfs -p 22922 -o ServerAliveInterval=15 -o follow_symlinks chris@caferock.org: ~/Programming/Remote/caferock'
alias fu-caferock='fusermount -u ~/Programming/Remote/caferock'
alias ssh-caferock='ssh -p 22922 chris@caferock.org'
