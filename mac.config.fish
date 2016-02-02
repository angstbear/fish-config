# mac.config.fish

# Prompt
set __fish_prompt_hostname "mac-fnord"
# ENV
set -x PATH /Applications/Postgres.app/Contents/Versions/9.4/bin $PATH

# Mac specific functions
function macupg
    sudo softwareupdate -i -a $argv
end

function brewupg
    set -l owner (ls -ld /usr/local | awk '{print $3, $4 }')
    if test $owner -ne "$USER admin"
        sudo chown -R $USER:admin /usr/local
        echo Changing permissions of /usr/local to $USER:admin
    end

        brew update
    and brew upgrade $argv
end

function cda -a directory -d 'simple cd aliasing solution'
    switch $directory
    case user shared admin branding core partner
        cd ~/Mnt/alpha/media/$directory
    case '*'
        cd ~/Mnt/alpha/$directory
    end
end
