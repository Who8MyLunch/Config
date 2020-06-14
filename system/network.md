# Network Stuff

## USB-Ethernet

Definitely need dnsmasq installed in order to have USB-ethernet adapter operate as a router with
dhcp for multiple downstream clients.

https://serverfault.com/questions/786136/how-to-view-dnsmasq-client-mac-addresses-dynamically

Location of dhcp leases: /var/lib/NetworkManager/dnsmasq-enx0050b6e1f1db.leases

Very helpful tool: ethtool
