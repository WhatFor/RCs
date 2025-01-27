function src {
    Set-Location -Path C:\Source
}

function gs { git status }
function gf { git fetch }

# Git Fetch & Pull
function gfp { git fetch; git pull; }

# Git Checkout - New
function gcn {
    param($branch)
    git checkout -b $branch
}

# Git Reset
function gr {
    git reset
}

# Git Reset - Hard!
function grh {
    git reset --hard
}

# Branch Shortcuts
function gcd { git checkout development }
function gcs { git checkout staging }

# YEET
function git-yeet {
	param($message)
	git add -A; git commit -m $message; git push -u origin HEAD;
	az repos pr create --open
}
