function fish_title
    if hostname | grep 'alpha' > /dev/null
        echo "b-m-$USER@alpha $argv[1] "
    else if uname | grep Darwin > /dev/null
        echo "$USER@mac-fnord $argv[1] "
    else
        echo "$USER@"(hostname)" $argv[1] "
    end
    pwd
end
