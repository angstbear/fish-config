function fish_greeting
    fish_logo
    if uname | grep Darwin > /dev/null
        echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        set specs '(macOS|boot|MacBook|Chip|32)'
        system_profiler SPHardwareDataType SPSoftwareDataType  | egrep "$specs"
        echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end
    cat ~/.motd
end
