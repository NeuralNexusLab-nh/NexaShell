#!/bin/sh
anchor="com.nexashell.webblock"
anchor_file="/etc/pf.anchors/$anchor"
pf_conf="/etc/pf.conf"
pfctl -a "$anchor" -F rules >/dev/null 2>&1 || true
sed -i '' "\|^anchor \"$anchor\"$|d" "$pf_conf"
sed -i '' "\|^load anchor \"$anchor\" from \"$anchor_file\"$|d" "$pf_conf"
rm -f "$anchor_file"
pfctl -f "$pf_conf"
