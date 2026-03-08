function git-resign --description "Rebase onto default branch, re-signing all commits"
    set -l default_branch (git symbolic-ref refs/remotes/origin/HEAD 2>/dev/null | string replace refs/remotes/origin/ '')
    or set default_branch main

    set -l base (git merge-base HEAD $default_branch)
    or return 1

    git rebase --exec 'git commit --amend --no-edit -S' $base
end
