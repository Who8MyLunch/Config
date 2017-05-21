
# IPython from github:

Clone repo to local folder:

http://git-scm.com/docs/git-clone

    git clone --recursive git://github.com/ipython/ipython.git


## Checkout Specific Tag

http://stackoverflow.com/questions/3555107/git-clone-particular-version-of-remote-repository

Git repo for a specific tag: http://stackoverflow.com/a/792027

List all tags:

    git tag -l

Checkout:

    git checkout tags/rel-3.2.2


## Checkout Specific Revision

http://stackoverflow.com/questions/949314/how-to-retrieve-the-hash-for-the-current-commit-in-git

    git reset --hard <hash_number>

Get hash for current (latest) revision, if you don't already have this value from running this step
earlier.

    git rev-list --date-order --max-count=1 HEAD
