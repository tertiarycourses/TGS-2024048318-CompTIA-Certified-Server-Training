#!/usr/bin/env bash
# backup-rotate.sh — Lab 16, Server+ scripting basics.
# A daily tar backup with retention (keep the last N), showing variables,
# a for-loop, arithmetic and a trap for cleanup. Pairs with Lab 26 (backup).
# Usage: bash backup-rotate.sh /etc /root/backups 7
set -euo pipefail

SRC="${1:-/etc}"                 # what to back up
DEST="${2:-/root/backups}"       # where backups live
KEEP="${3:-7}"                   # how many to retain
TS="$(date +%Y%m%d-%H%M%S)"
ARCHIVE="${DEST}/backup-${TS}.tar.gz"

mkdir -p "$DEST"
trap 'echo "ERROR on line $LINENO" >&2' ERR

echo "[*] Backing up ${SRC} -> ${ARCHIVE}"
tar -czf "$ARCHIVE" -C "$(dirname "$SRC")" "$(basename "$SRC")"
echo "[*] Size: $(du -h "$ARCHIVE" | cut -f1)"

# retention: delete all but the newest $KEEP archives
mapfile -t OLD < <(ls -1t "${DEST}"/backup-*.tar.gz 2>/dev/null | tail -n +"$((KEEP + 1))")
if [ "${#OLD[@]}" -gt 0 ]; then
  echo "[*] Removing ${#OLD[@]} archive(s) beyond the last ${KEEP}:"
  for f in "${OLD[@]}"; do
    echo "    - $(basename "$f")"
    rm -f "$f"
  done
fi
echo "[*] Retained: $(ls -1 "${DEST}"/backup-*.tar.gz | wc -l) archive(s)"
