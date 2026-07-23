#!/usr/bin/env sh
nft delete table inet nexashell_webblock 2>/dev/null || true
nft add table inet nexashell_webblock
nft 'add chain inet nexashell_webblock output { type filter hook output priority 0; policy accept; }'
nft 'add rule inet nexashell_webblock output tcp dport { 80, 443 } reject'
nft 'add rule inet nexashell_webblock output udp dport 443 reject'
