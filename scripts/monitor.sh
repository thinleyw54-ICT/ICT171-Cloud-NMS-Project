#!/bin/bash

echo "================================"
echo " Azure Server Monitoring Report "
echo "================================"

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Server Uptime:"
uptime
