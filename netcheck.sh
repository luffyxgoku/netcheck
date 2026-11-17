#!/bin/bash

Host="${1:-www.google.com}"

Report="network_report_$(date +%Y%m%d_%H%M%S).txt"

{
	echo "================================"
	echo "       NETWORK HEALTH CHECK"
	echo "================================"
	
	echo 
    	echo "DATE: $(date)"
	echo "TARGET: $Host"

	echo
	echo "1. Local IP Address"
	hostname -I

	echo 
	echo "2. Internet Connectivity"

	if ping -c 3 -W 2 "$Host" > /dev/null; then
		echo "$Host is reachable"
	else
		echo "$Host is unreachable"
	fi

	echo 
	echo "3. DNS Resolution"

	if getent hosts "$Host"; then
		echo "DNS resolution successful"
	else
		echo "DNS resolution failed"
	fi	

	echo 
	echo "4. Website HTTP Status"

	Status=$(curl -s -o /dev/null -w "%{http_code}" --max-time 10 "https://$Host")
	echo "HTTP Status code: $Status"

	echo 
	echo "5. Active Network Ports"

	ss -tulnp | head -10

	echo 
	echo "Network Check completed"
	echo "================================"

} | tee "$Report"

echo
echo "Report saved to: $Report"


