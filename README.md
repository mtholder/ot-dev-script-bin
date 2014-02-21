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

   $ git clone https://github.com/mtholder/ot-dev-script-bin.git
   $ mv ot-dev-script-bin bin
   $ cd bin
   $ bash initialize-ot-dev-env.sh > ~/ot-dev-env.sh

where "~/ot-dev-env.sh" is the file that you'll source


This does not set up the repos and apps, but it assumes that you'll do the 
git clones of the repos from $OPEN_TREE_ROOT:

For example the following gits you a fair way toward having an installation
of the api and curator apps (see the readmes in those repos and opentree/deploy
for the real docs on installation procedures)

<code>
source ~/ot-dev-env.sh
cd "$OPEN_TREE_ROOT"
git clone https://github.com/web2py/web2py.git
git clone git@github.com:OpenTreeOfLife/api.opentreeoflife.org.git
git clone git@github.com:OpenTreeOfLife/opentree.git
git clone git@github.com:OpenTreeOfLife/phylesystem_test.git
ln -s "../../api.opentreeoflife.org" web2py/applications/api
ln -s "../../opentree/curator" web2py/applications/curator
cp api.opentreeoflife.org/private/config.example api.opentreeoflife.org/private/config
cp opentree/curator/private/config.example opentree/curator/private/config
cp opentree/webapp/routes.py web2py/routes.py
</code>
