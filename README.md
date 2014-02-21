ot-dev-script-bin
=================

This is a collection shell script that MTH uses to cut down on typing when working on open-tree coding. It is probably not of interest to others. 

If you do want to use
it you need to have something like this is your .bash_profile
or a shell script that you source:

<code>
export OPEN_TREE_ROOT="${HOME}/Documents/projects/ot"
source "${OPEN_TREE_ROOT}/env/bin/activate"
export PATH="${PATH}:${OPEN_TREE_ROOT}/bin"
export GITHUB_OAUTH_TOKEN="YOUR GITHUB_OAUTH_TOKEN goes here!"
</code>

Where you get your oath key via curl with something like:

    $ curl -u your-github-user-name-here -X POST https://api.github.com/authorizations --data '{"scopes":["public_repo"],"note":"description"}'

bootstrapping:
==============

First cd to the dir that you'd like to use as the parent of your
ot repos:

   $ git clone git@github.com:mtholder/ot-dev-script-bin.git
   $ mv ot-dev-script-bin bin
   $ cd bin
   $ bash initialize-ot-dev-machine.sh > ~/ot-dev-env.sh

where "~/ot-dev-env.sh" is the file that you'll source


