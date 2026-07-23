# NexaShell

NexaShell is a lightweight shell utility that uses HTTP requests to run commands on Windows and Linux.

---

## Windows Commands

### System

Run these commands in **PowerShell**.

Administrator privileges are usually not required.

#### Shutdown

```powershell
irm "https://nexashell.zone.id/windows/sys/shutdown.ps1" | iex
```

#### Reboot

```powershell
irm "https://nexashell.zone.id/windows/sys/reboot.ps1" | iex
```

---

### Web

These commands manage outbound web traffic through Windows Firewall.

Run them in **PowerShell as Administrator**.

#### Block Web Access

```powershell
irm "https://nexashell.zone.id/windows/web/block.ps1" | iex
```

#### Unblock Web Access

> [!IMPORTANT]
> Save this command before blocking web access. After blocking ports 80 and 443, the computer may be unable to access websites or download the unblock script.

```powershell
Get-NetFirewallRule -Group "webblock" -ErrorAction SilentlyContinue | Remove-NetFirewallRule
```
