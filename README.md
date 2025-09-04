# Windows Network Troubleshooting Toolkit

Practical, real-world **IT Support** toolkit for Windows: step-by-step guides and production-ready **PowerShell** scripts used to diagnose and fix common network issues.

## What’s inside
- **Docs**: clear decision trees + checklists for Tier 1/2 troubleshooting
- **Scripts**: ping tests, DNS flush, adapter/winsock resets, traceroute, and a one-command **Diagnostics** collector
- **Case study** + **ticket templates** to show helpdesk professionalism

## Quick start
> Run PowerShell as **Administrator** for best results.

```powershell
# Allow local scripts (CurrentUser scope)
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force

# Clone and run
git clone https://github.com/<YOUR-USERNAME>/windows-network-troubleshooting-toolkit.git
cd windows-network-troubleshooting-toolkit\scripts

# 1) Collect a full network snapshot (outputs timestamped logs into ../.logs)
.\Start-NetworkDiagnostics.ps1

# 2) Quick ping test (Google DNS + Gateway + Custom targets)
.\Invoke-PingTest.ps1 -Targets 1.1.1.1,8.8.8.8 -Count 5

# 3) Fix common name-resolution hiccups
.\Invoke-DNSFlush.ps1

# 4) Deep reset (winsock/IP). Reboot recommended afterwards.
.\Invoke-NetworkReset.ps1 -Force
