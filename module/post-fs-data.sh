#!/system/bin/sh
# Hymo post-fs-data.sh: load HymoFS LKM only. Mount runs in metamount.sh.
# All logging is done by hymod; wrapper outputs nothing.

MODDIR="${0%/*}"
BASE_DIR="/data/adb/hymo"

mkdir -p "$BASE_DIR"

# LKM autoload: check /data/adb/hymo/lkm_autoload (default: load)
AUTOLOAD=1
[ -f "$BASE_DIR/lkm_autoload" ] && AUTOLOAD=$(cat "$BASE_DIR/lkm_autoload" 2>/dev/null | tr -d '\n\r')
[ "$AUTOLOAD" = "0" ] || [ "$AUTOLOAD" = "off" ] && AUTOLOAD=0
[ -z "$AUTOLOAD" ] && AUTOLOAD=1

# LKM selected at install in customize.sh; just load hymofs_lkm.ko
if [ "$AUTOLOAD" = "1" ] && [ -f "$MODDIR/hymofs_lkm.ko" ]; then
    HYMO_SYSCALL_NR=142
    insmod "$MODDIR/hymofs_lkm.ko" hymo_syscall_nr="$HYMO_SYSCALL_NR" 2>/dev/null || true
fi
exit 0
