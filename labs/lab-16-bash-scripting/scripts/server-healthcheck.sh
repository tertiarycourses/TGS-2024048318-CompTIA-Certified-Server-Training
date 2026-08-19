#!/usr/bin/env bash
# server-healthcheck.sh — Lab 16, Server+ scripting basics.
# Demonstrates variables, conditionals, loops and functions for a common
# server admin task: a one-shot health check with thresholds.
# Run on the Killercoda Ubuntu playground: bash server-healthcheck.sh
set -euo pipefail

# --- variables ---
DISK_WARN=80          # % used
LOAD_WARN=2.0         # 1-min load average
SERVICES=(ssh cron)   # services that must be running
STAMP="$(date -Is)"

# --- functions ---
log()  { printf '%s  %-5s  %s\n' "$STAMP" "$1" "$2"; }
pct()  { awk "BEGIN{printf \"%d\", $1}"; }

check_disk() {
  # loop over every mounted filesystem
  df -P -x tmpfs -x devtmpfs | awk 'NR>1{gsub("%","",$5); print $6, $5}' \
  | while read -r mount used; do
      if [ "$used" -ge "$DISK_WARN" ]; then
        log WARN "disk ${mount} at ${used}% (>= ${DISK_WARN}%)"
      else
        log OK   "disk ${mount} at ${used}%"
      fi
    done
}

check_load() {
  local load; load=$(awk '{print $1}' /proc/loadavg)
  if awk "BEGIN{exit !($load > $LOAD_WARN)}"; then
    log WARN "load ${load} (> ${LOAD_WARN})"
  else
    log OK   "load ${load}"
  fi
}

check_services() {
  for svc in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$svc"; then
      log OK   "service ${svc} running"
    else
      log WARN "service ${svc} NOT running"
    fi
  done
}

# --- main ---
log INFO "health check on $(hostname -f 2>/dev/null || hostname)"
check_disk
check_load
check_services
log INFO "done"
