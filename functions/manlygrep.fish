function manlygrep -a dir name match -d 'recursive grep that does not bother matching in binary files'
    if test -n "$match"
        find "$dir" -name "$name" -print | xargs grep -nI "$match"
    else
        echo "Usage: manlygrep <directory-to-search> <filename-pattern> <grep-string-to-match>"
        echo \n"e.g. manlygrep /my/files '*.txt' work"
        echo \n"Don't forget to put single quotes around the file match expression to thwart the dreaded wildcard expansion demon"
    end
end
