#!/bin/sh
export XDG_CONFIG_DIR="$SNAP_USER_DATA"
export XDG_DATA_DIR="$SNAP_USER_DATA"
export XDG_CONFIG_HOME="$SNAP_USER_DATA"
export LIFEREA_DIR="$XDG_DATA_DIR/liferea"

echo "liferea dir: ${LIFEREA_DIR}"
echo "liferea dir: ${XDG_DATA_DIR}"
echo "liferea dir: ${XDG_CONFIG_HOME}"
echo "liferea dir: ${XDG_CONFIG_DIR}"

if [ ! -d "${LIFEREA_DIR}" ]; then
   echo "creating directory"
   mkdir -p "${LIFEREA_DIR}" 
fi

exec "$SNAP/bin/desktop-launch" "liferea"

