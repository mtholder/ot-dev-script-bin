#!/bin/sh
set -x
export PEYOTL_LOGGING_LEVEL=debug
export PEYOTL_LOGGING_FORMAT=simple
export OT_API_LOGGING_LEVEL=debug
export OT_API_LOGGING_FORMAT=simple
mv "${OPEN_TREE_ROOT}/opentree/curator/private/config" "${OPEN_TREE_ROOT}/opentree/curator/private/config.BAK"
mv "${OPEN_TREE_ROOT}/opentree/curator/private/config.debug_logging" "${OPEN_TREE_ROOT}/opentree/curator/private/config"
set +x