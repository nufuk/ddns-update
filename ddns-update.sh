#!/bin/bash
MYV4=`/usr/bin/dig @resolver4.opendns.com myip.opendns.com +short -4`
MYV6=`/usr/bin/dig @resolver1.ipv6-sandbox.opendns.com AAAA myip.opendns.com +short -6`
. ddns-update.conf

#dyndns.kasserver.com/?myip=<ipaddr>&myip6=<ip6addr>
updateURL="dyndns.kasserver.com/?myip=$MYV4&myip6=$MYV6"
#echo "updateing with URL $updateURL"
echo `date`
echo `/usr/bin/curl -u $user:$password $updateURL`
