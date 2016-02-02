function fish_greeting
    if not which fortune > /dev/null
        switch (uname)
        case Darwin
            echo Installing fortune and cowsay
            brew install fortune cowsay
        case Linux
            echo Installing fortune and cowsay
            sudo apt-get install fortune cowsay
        case '*'
            echo Wait ... where are we\? (uname), eh
        end
    end
    set -l toon bud-frogs
    if which lolcat > /dev/null
        fortune -s | cowsay -f $toon | lolcat
    else if which fortune > /dev/null
        fortune -s | cowsay -f $toon
    else
        echo Something fishy going on around here ...
    end
end
