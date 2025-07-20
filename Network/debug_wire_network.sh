#!/usr/bin/env bash
NIC=enp15s0

echo "=== 驱动与EEE状态 ==="
ethtool -i $NIC
ethtool --show-eee $NIC

echo "=== 最近网络日志 ==="
journalctl -S"-10min" -u NetworkManager | tail -n 100

echo "=== Link状态 (10秒) ==="
for i in {1..10}; do
    ethtool $NIC | grep -E "Link detected|Speed"
    sleep 1
done
