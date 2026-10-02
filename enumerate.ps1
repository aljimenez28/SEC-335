#This is a system enumeration script that saves the output of each command to a file

#User's identity, groups, and privileges
whoami /all > C:\temp\whoami_all.txt

#Running Processes
tasklist > C:\temp\tasklist.txt

#Network connections with owning process IDs
netstat -ano C:\temp\net_connections.txt

#Lists all services and whether they're running or stopped
Get-Service > C:\temp\services.txt

#Lists local user accounts
net user > C:\temp\local_users.txt

#Lists all local groups
net localgroup > C:\temp\local_groups.txt

#Shows exactly who has admin rights
net localgroup Administrators > C:\temp\administrators.txt

#Full network configuration
ipconfig /all > C:\temp\network_config.txt

#Dumps firewall rules and settings
netsh advfirewall show allprofiles > C:\temp\firewall_policies.txt

#Displays arp cache
arp -a > C:\temp\arp_table.txt

#Shows inbound SMB sessions
net session > C:\temp\smb_sessions.txt 2>&1

#Gives OS version, installed patches, and hardware info
systeminfo > C:\temp\system_info.txt
