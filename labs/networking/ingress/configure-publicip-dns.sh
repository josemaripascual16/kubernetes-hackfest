#!/bin/bash

# Public IP address
IP="13.67.44.103"

# Name to associate with public IP address
DNSNAME="<USER-INITIALS>ingress"

# Get the resource-id of the public ip
PUBLICIPID=$(az network public-ip list --query "[?ipAddress!=null]|[?contains(ipAddress, '$IP')].[id]" --output tsv)

# Update public ip address with dns name
az network public-ip update --ids $PUBLICIPID --dns-name $DNSNAME
