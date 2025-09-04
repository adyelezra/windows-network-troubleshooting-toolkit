# 1-Page Troubleshooting Flow

1. Check if the device is on Wi-Fi or Ethernet.
2. Run `ipconfig /all` and make sure there is a valid IP, Gateway, and DNS (not 169.254.*).
3. Ping test:
   - `ping 127.0.0.1` → local test
   - `ping <gateway>` → router test
   - `ping 1.1.1.1` → internet test
   - `ping github.com` → DNS test
4. If DNS test fails, run the `DNSFix.ps1` script.
