function gits
    if which git-achievements > /dev/null
        git-achievements status
    else
        git status
    end
end