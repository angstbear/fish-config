# if OMF, source snippets
if test -n $OMF_CONFIG
    for file in conf.d/*.fish
        source $file
    end
end
