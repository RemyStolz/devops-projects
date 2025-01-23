#!/bin/bash

# Define username
USERNAME="remmington"
PASSWORD="SecurePass123!"  # Change this to a secure password
EXPIRY_DATE="2025-01-26"  # Expiry date for the password

# Create the user (without home directory to keep it minimal)
sudo useradd -m "$USERNAME"

# Set the password for the user
echo "$USERNAME:$PASSWORD" | sudo chpasswd

# Force password expiry on the specified date
sudo chage -E "$EXPIRY_DATE" "$USERNAME"

# Confirm user creation and expiry date
echo "User $USERNAME created with password expiry on $EXPIRY_DATE."
