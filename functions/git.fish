function git
    if which git-achievements > /dev/null
        git-achievements $argv
    else
        git $argv
    end
end