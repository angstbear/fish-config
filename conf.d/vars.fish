# Vars and Paths

set -U VISUAL emacs
set -U EDITOR $VISUAL

set -x PATH ~/src/git-achievements $PATH

switch (uname)
case Darwin
    set __fish_prompt_hostname "mac-fnord"
case Linux
end

