#!/bin/bash
# create-loopback.sh
# This script creates a virtual loopback interface lo0 with IP 10.0.0.1/24

# Set interface name and IP
IFACE="lo0"
IPADDR="10.0.0.1/24"

# Check if the interface already exists
if ip link show "$IFACE" &> /dev/null; then
    echo "Interface $IFACE already exists."
else
    echo "Creating interface $IFACE..."
    sudo ip link add name "$IFACE" type dummy
fi

# Assign IP address (replace if already exists)
sudo ip addr flush dev "$IFACE"
sudo ip addr add "$IPADDR" dev "$IFACE"

# Bring the interface up
sudo ip link set "$IFACE" up
echo "Interface $IFACE is up with IP $IPADDR"

# Optional: test the interface
echo "Testing connectivity..."
ping -c 3 "${IPADDR%/*}" || echo "Ping failed. Interface might not be configured properly."

echo "Done!"
