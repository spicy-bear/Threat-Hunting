Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

public class Win32 {
    [DllImport("user32.dll")]
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, int dwExtraInfo);
}
"@

# Define VK_WIN constant
$VK_WIN = 0x5B

# Define VK_D constant
$VK_D = 0x44

# Define KEYEVENTF_KEYUP constant
$KEYEVENTF_KEYUP = 0x0002

# Press Win+D
[Win32]::keybd_event($VK_WIN, 0, 0, 0)
[Win32]::keybd_event($VK_D, 0, 0, 0)

# Release Win+D
[Win32]::keybd_event($VK_D, 0, $KEYEVENTF_KEYUP, 0)
[Win32]::keybd_event($VK_WIN, 0, $KEYEVENTF_KEYUP, 0)
