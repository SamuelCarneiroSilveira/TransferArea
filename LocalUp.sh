#!/bin/bash

nmcli con delete hotspot
nmcli con add type wifi ifname wlo1 con-name hotspot autoconnect no ssid vacaprenha
nmcli con modify hotspot 802-11-wireless.mode ap 802-11-wireless.band bg ipv4.method shared
nmcli con modify hotspot wifi-sec.key-mgmt wpa-psk
nmcli con modify hotspot wifi-sec.psk "12344321"
nmcli con up hotspot

ip addr

