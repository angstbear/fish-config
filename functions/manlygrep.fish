function manlygrep -a dir name match -d 'recursive grep that does not bother matching in binary files'
    find "$dir" -name "$name" -print | xargs grep -I "$match"
end
# Pro tip: Put single quotes around the file match expression to thwart the dreaded wildcard expansion demon
