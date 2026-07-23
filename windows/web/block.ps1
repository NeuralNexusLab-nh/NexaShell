$group = "NXLab-WebBlock"
Get-NetFirewallRule -Group $group -ErrorAction SilentlyContinue |
    Remove-NetFirewallRule
New-NetFirewallRule -DisplayName "Block HTTP TCP" -Group $group -Direction Outbound -Protocol TCP -RemotePort 80 -Action Block
New-NetFirewallRule -DisplayName "Block HTTPS TCP" -Group $group -Direction Outbound -Protocol TCP -RemotePort 443 -Action Block
New-NetFirewallRule -DisplayName "Block HTTP3 UDP" -Group $group -Direction Outbound -Protocol UDP -RemotePort 443 -Action Block
exit
