function git_branch_cleanup -a filter mode -d 'Clean up local branches that have been merged'
    for b in (git branch --merged | grep $filter)
        set branch (string replace -ar "^\s+" "" "$b")
        if test -z "$mode"; or string match -r -v 'debug|test|dry' "$mode"
            echo "removing $branch"
            git branch -d $branch
        else
            echo "$mode - would remove $branch"
        end
    end
end
