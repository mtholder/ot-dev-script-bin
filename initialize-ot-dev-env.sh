#!/bin/bash
OPEN_TREE_ROOT="$(dirname $PWD)"
echo "export OPEN_TREE_ROOT=\"$OPEN_TREE_ROOT\""
cd $OPEN_TREE_ROOT
virtualenv env >/dev/null 2>&1 || echo "install of virtualenv to env failed!"
echo 'source "${OPEN_TREE_ROOT}/env/bin/activate"'
echo 'alias debug-logging="source ${OPEN_TREE_ROOT}/bin/debug-level-logging.sh && restart-web2py"'
echo 'alias normal-logging="source ${OPEN_TREE_ROOT}/bin/normal-level-logging.sh && restart-web2py"'
echo 'export PATH="${PATH}:${OPEN_TREE_ROOT}/bin"'
echo 'export PEYOTL_ROOT="${OPEN_TREE_ROOT}/peyotl"'
echo 'export API_ROOT="${OPEN_TREE_ROOT}/api.opentreeoflife.org"'
echo 'export CURATOR_ROOT="${OPEN_TREE_ROOT}/opentree/curator"'
echo 'export PHYLESYSTEM_ROOT="${OPEN_TREE_ROOT}/phylesystem"'
echo 'export PHYLESYSTEM_TEST_ROOT="${OPEN_TREE_ROOT}/phylesystem_test"'
echo 'export DEV_SCRIPT_ROOT="${OPEN_TREE_ROOT}/bin"'

