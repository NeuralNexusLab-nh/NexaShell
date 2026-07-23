$group = "webblock"
Get-NetFirewallRule -Group $group -ErrorAction SilentlyContinue |
    Remove-NetFirewallRule
exit
