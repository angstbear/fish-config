# linx.config.fish


# Aptitude functions
function aptupd
    sudo apt-get update $argv
end
function aptupg
    sudo apt-get upgrade $argv
end
function aptin
    sudo apt-get install $argv
end
function aptrm
    sudo apt-get remove $argv
end
