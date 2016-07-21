function fish_greeting
    if hostname | grep 'alpha' > /dev/null
        fish_logo
        echo '   <~~~ Alpha ~~~>'
        echo
    else
        if not which fortune > /dev/null ^ /dev/null
            switch (uname)
            case Darwin
                echo Installing fortune and cowsay
                brew install fortune cowsay
            case Linux
                echo Installing fortune and cowsay
                if which apt-get > /dev/null ^ /dev/null
                    sudo apt-get install fortune cowsay
                else
                    sudo yum install fortune cowsay
                end
            case '*'
                echo Wait ... where are we\? (uname), eh
            end
        end
        set -l toon bud-frogs
        if which lolcat > /dev/null ^ /dev/null
            fortune -s | cowsay -f $toon | lolcat
        else if which fortune > /dev/null ^ /dev/null
            fortune -s | cowsay -f $toon
        else
            echo Something fishy going on around here ...
        end
    end
end
