#!/bin/bash
OPEN_TREE_ROOT="$(dirname $PWD)"
echo "export OPEN_TREE_ROOT=\"$OPEN_TREE_ROOT\""
echo "export OPEN_TREE_REPO_ROOT=\"\${OPEN_TREE_ROOT}/repo\""
cd $OPEN_TREE_ROOT
virtualenv env >/dev/null 2>&1 || echo "install of virtualenv to env failed!"
echo 'source "${OPEN_TREE_REPO_ROOT}/env/bin/activate"'
echo 'alias debug-logging="source ${OPEN_TREE_REPO_ROOT}/bin/debug-level-logging.sh && restart-web2py"'
echo 'alias normal-logging="source ${OPEN_TREE_REPO_ROOT}/bin/normal-level-logging.sh && restart-web2py"'
echo 'export PATH="${PATH}:${OPEN_TREE_REPO_ROOT}/bin"'
echo 'export PEYOTL_ROOT="${OPEN_TREE_REPO_ROOT}/peyotl"'
echo 'export API_ROOT="${OPEN_TREE_REPO_ROOT}/api.opentreeoflife.org"'
echo 'export CURATOR_ROOT="${OPEN_TREE_REPO_ROOT}/opentree/curator"'
echo 'export PHYLESYSTEM_ROOT="${OPEN_TREE_REPO_ROOT}/phylesystem"'
echo 'export PHYLESYSTEM_TEST_ROOT="${OPEN_TREE_REPO_ROOT}/phylesystem_test"'
echo 'export DEV_SCRIPT_ROOT="${OPEN_TREE_REPO_ROOT}/bin"'
echo 'ssh_to_ot () {'
echo '    ssh -i ~/.ssh/opentree/opentree.pem opentree@ot$1'
echo '}'
echo 'alias sshot=ssh_to_ot'
