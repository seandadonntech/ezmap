
#!/bin/bash

echo "Enter the IP or domain name:"
read ip

if [ -z "$ip" ]; then
  echo "Please enter a valid IP or domain name."
  exit 1
fi

nmap -oN nmap_results.txt "$ip" || { echo "nmap command failed"; exit 1; }
nmap -sV -oN nmap_version_scan.txt "$ip" || { echo "nmap command failed"; exit 1; }
