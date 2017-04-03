#!/bin/ash

set -e

if [ -z "$USER_NAME" ] || [ -z "$USER_PASSWORD" ]; then
  echo "No USER_NAME and/or USER_PASSWORD specified"
  exit 1
fi

ssh-keygen -A

echo "Creating user $USER_NAME"
adduser -D -h /home/"$USER_NAME" -s /bin/ash -G users "$USER_NAME"

echo "Setting password for $USER_NAME"
echo "$USER_NAME:$USER_PASSWORD" | chpasswd

exec /usr/sbin/sshd -D -e "$@"
