# NexaShell

NexaShell 是一個輕量化 Shell 工具，透過 HTTP 請求在 Windows、Linux 與 macOS 上執行系統指令。

---

## Windows 指令

### 系統

請在 **PowerShell** 中執行以下指令。

通常不需要系統管理員權限。

#### 關機

```powershell
irm "http://nexashell.zone.id/windows/sys/shutdown.ps1" | iex
```

#### 重新啟動

```powershell
irm "http://nexashell.zone.id/windows/sys/reboot.ps1" | iex
```

### 網路

請在具有**系統管理員權限的 PowerShell** 中執行以下指令。

#### 封鎖網頁連線

```powershell
irm "http://nexashell.zone.id/windows/web/block.ps1" | iex
```

#### 解除網頁連線封鎖

請在封鎖網頁連線前，先將以下指令儲存在本機。

```powershell
Get-NetFirewallRule -Group "webblock" -ErrorAction SilentlyContinue | Remove-NetFirewallRule
```

---

## Linux 指令

請在 **Terminal** 中執行以下指令，並使用 `sudo` 權限。

### 系統

#### 關機

```bash
curl -fsSL "http://nexashell.zone.id/linux/sys/shutdown.sh" | sudo sh
```

#### 重新啟動

```bash
curl -fsSL "http://nexashell.zone.id/linux/sys/reboot.sh" | sudo sh
```

### 網路

#### 封鎖網頁連線

```bash
curl -fsSL "http://nexashell.zone.id/linux/web/block.sh" | sudo sh
```

#### 解除網頁連線封鎖

請在封鎖網頁連線前，先將以下指令儲存在本機。

```bash
sudo nft delete table inet nexashell_webblock
```

---

## macOS 指令

請在 **Terminal** 中執行以下指令，並使用 `sudo` 權限。

### 系統

#### 關機

```bash
curl -fsSL "http://nexashell.zone.id/macos/sys/shutdown.sh" | sudo sh
```

#### 重新啟動

```bash
curl -fsSL "http://nexashell.zone.id/macos/sys/reboot.sh" | sudo sh
```

### 網路

#### 封鎖網頁連線

```bash
curl -fsSL "http://nexashell.zone.id/macos/web/block.sh" | sudo sh
```

#### 解除網頁連線封鎖

請在封鎖網頁連線前，先將以下指令儲存在本機。

```bash
sudo pfctl -a com.nexashell.webblock -F rules
```
