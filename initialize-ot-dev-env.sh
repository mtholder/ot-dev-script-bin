#!/bin/bash
OPEN_TREE_ROOT="$(dirname $PWD)"
echo "export OPEN_TREE_ROOT=\"$OPEN_TREE_ROOT\""
cd $OPEN_TREE_ROOT
virtualenv env >/dev/null 2>&1 || echo "install of virtualenv to env failed!"
echo 'source "${OPEN_TREE_ROOT}/env/bin/activate"'
echo 'export PATH="${PATH}:${OPEN_TREE_ROOT}/bin"'

