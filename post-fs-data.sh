#!/system/bin/sh
MODDIR=${0%/*}
chmod 755 "$MODDIR/rairin-juice"
"$MODDIR/rairin-juice" &
