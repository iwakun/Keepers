# Eli Kirk Live (Hostmonster)
alias sfs-ek='sshfs -o ServerAliveInterval=15 -o follow_symlinks elikirk@elikirk.com:/var/www/hosts ~/Documents/Websites/Remote/ek'
alias fu-ek='fusermount -u ~/Documents/Websites/Remote/ek'
#
# Caferock
alias sfs-rock='sshfs -p 229 -o ServerAliveInterval=15 -o follow_symlinks rock@caferock.org: ~/Documents/Websites/Remote/rock'
alias fu-rock='fusermount -u ~/Documents/Websites/Remote/rock'

# Gogogh
alias sfs-gogogh='sshfs -o ServerAliveInterval=15 -o follow_symlinks -o workaround=rename chris@dev.gogogh.com:/var/www/sandbox/chris ~/Documents/Websites/Remote/gogogh'
alias fu-gogogh='fusermount -u ~/Documents/Websites/Remote/gogogh'
#
# Gogogh
alias sfs-gogoghnew='sshfs -o ServerAliveInterval=15 -o follow_symlinks -o workaround=rename chris@dev.gogogh.com:/var/www/sandbox/isaac ~/Documents/Websites/Remote/gogoghnew'
alias fu-gogoghnew='fusermount -u ~/Documents/Websites/Remote/gogoghnew'

# Eli Kirk Dev (new)
alias sfs-ekdev='sshfs -o ServerAliveInterval=15 -o follow_symlinks chris@elikirk-dev.com:/var/www/hosts ~/Documents/Websites/Remote/ekdev'
alias fu-ekdev='fusermount -u ~/Documents/Websites/Remote/ekdev'
