# Vars and Paths

set -U VISUAL emacs
set -U EDITOR $VISUAL

switch (uname)
case Darwin
    set __fish_prompt_hostname "mac-fnord"
    set -x PATH /Applications/Postgres.app/Contents/Versions/9.4/bin $PATH
case Linux
end

