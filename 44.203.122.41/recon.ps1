# Define the IP range of your local network
$ipRange = "192.168.22.1-254"

# Perform the network scan
$onlineComputers = Test-Connection -ComputerName (1..254 | ForEach-Object { "192.168.22.$_" }) -Count 1 -Quiet -ErrorAction SilentlyContinue

# Display the online computers (IP addresses)
$onlineComputers | ForEach-Object { "Online IP: $_" }
