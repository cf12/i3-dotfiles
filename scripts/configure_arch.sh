#!/bin/bash

# Prompt for timezone region
echo "[i] Enter a timezone REGION (Can be found under /usr/share/zoneinfo): "
read region

if [ -d "/usr/share/zoneinfo/$region" ]; then
	echo "[i] Selected region: $region"
else
	echo "[!] Region not found. "
	echo "[E] Exiting..."
	exit
fi

echo ""

# Prompt for timezone city
echo "[i] Enter a timezone CITY (Can be found under /usr/share/zoneinfo/$region): "
read city

if [ -f "/usr/share/zoneinfo/$region/$city" ]; then
	echo "[i] Selected city: $city"
else
	echo "[!] Not Found. Exiting..."
	exit
fi

echo ""

# Symlink and sync timezone
echo "[i] Syncing timezone..."
ln -sf "/usr/share/zoneinfo/$region/$city"
hwclock --systohc
echo ""

# Configures & generates locale
echo "[i] Generating & configuring locale"
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen

locale-gen

echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo ""

# Promps for hostname
echo "[i] Enter a hostname: "
read hostname

echo ""

# Configures hostname
echo "[i] Configuring hostname..."
echo $hostname > /etc/hostname

cat << EOT >> /etc/hosts
127.0.0.1		localhost
::1				localhost
127.0.1.1		$hostname.localdomain	$hostname
EOT

echo ""

# Promps for username
echo "[i] Enter username for account: "
read username

# Create user & prompt for password
useradd --create-home $username
passwd $username

echo ""

echo "[!] Don't forget to setup a bootloader!"
echo "[i] All done! Exiting..."