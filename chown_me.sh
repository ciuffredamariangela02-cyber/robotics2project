#!/bin/bash
#  chown_me.sh  —  Fix file ownership of ros_ws after container use
#  Files created inside the container are owned by root.
#  Run this on the Mac host to take ownership back.
#  Usage: ./chown_me.sh

PROJECT_ROOT="$(cd "$(dirname "$0")" && pwd)"
TARGET="${PROJECT_ROOT}/ros_ws"

echo " Fixing ownership of: ${TARGET}"
echo "   Changing to: $(whoami)"
echo ""

sudo chown -R "$(whoami)":"$(id -gn)" "${TARGET}"
