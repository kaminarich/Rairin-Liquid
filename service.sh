#!/system/bin/sh
MODDIR=${0%/*}
while [ "$(getprop sys.boot_completed)" != "1" ]; do
sleep 5
done
sleep 10
chmod +x "$MODDIR/rairin-liquid"
"$MODDIR/rairin-liquid" &
