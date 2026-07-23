#!/bin/sh
anchor="com.nexashell.webblock"
anchor_file="/etc/pf.anchors/$anchor"
pf_conf="/etc/pf.conf"
printf '%s\n' 'block drop out proto tcp from any to any port { 80, 443 }' 'block drop out proto udp from any to any port 443' > "$anchor_file"
grep -qxF "anchor \"$anchor\"" "$pf_conf" || printf '\nanchor "%s"\n' "$anchor" >> "$pf_conf"
grep -qxF "load anchor \"$anchor\" from \"$anchor_file\"" "$pf_conf" || printf 'load anchor "%s" from "%s"\n' "$anchor" "$anchor_file" >> "$pf_conf"
pfctl -f "$pf_conf"
pfctl -E >/dev/null 2>&1 || true
