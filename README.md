# NexaShell

NexaShell is a lightweight shell utility that uses HTTP requests to run system commands on Windows, Linux, and macOS.

---

## Windows Commands

### System

Run these commands in **PowerShell**.

Administrator privileges are usually not required.

#### Shutdown

```powershell
irm "http://nexashell.zone.id/windows/sys/shutdown.ps1" | iex
```

#### Reboot

```powershell
irm "http://nexashell.zone.id/windows/sys/reboot.ps1" | iex
```

### Web

Run these commands in **PowerShell as Administrator**.

#### Block Web Access

```powershell
irm "http://nexashell.zone.id/windows/web/block.ps1" | iex
```

#### Unblock Web Access

Save this command locally before blocking web access.

```powershell
Get-NetFirewallRule -Group "webblock" -ErrorAction SilentlyContinue | Remove-NetFirewallRule
```

---

## Linux Commands

Run these commands in a **Terminal** with `sudo` privileges.

### System

#### Shutdown

```bash
curl -fsSL "http://nexashell.zone.id/linux/sys/shutdown.sh" | sudo sh
```

#### Reboot

```bash
curl -fsSL "http://nexashell.zone.id/linux/sys/reboot.sh" | sudo sh
```

### Web

#### Block Web Access

```bash
curl -fsSL "http://nexashell.zone.id/linux/web/block.sh" | sudo sh
```

#### Unblock Web Access

Save this command locally before blocking web access.

```bash
sudo nft delete table inet nexashell_webblock
```

---

## macOS Commands

Run these commands in a **Terminal** with `sudo` privileges.

### System

#### Shutdown

```bash
curl -fsSL "http://nexashell.zone.id/macos/sys/shutdown.sh" | sudo sh
```

#### Reboot

```bash
curl -fsSL "http://nexashell.zone.id/macos/sys/reboot.sh" | sudo sh
```

### Web

#### Block Web Access

```bash
curl -fsSL "http://nexashell.zone.id/macos/web/block.sh" | sudo sh
```

#### Unblock Web Access

Save this command locally before blocking web access.

```bash
sudo pfctl -a com.nexashell.webblock -F rules
```
