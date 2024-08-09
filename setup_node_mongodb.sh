#!/bin/bash

# Chromebook Node.js, npm, and MongoDB Setup Script

echo "Starting Node.js, npm, and MongoDB setup..."

# Update Package Lists
sudo apt update -y && sudo apt upgrade -y || exit 1

# Install Node.js and NPM
echo "Installing Node.js and npm..."
sudo apt install -y nodejs npm || exit 1

# Verify Installation
echo "Node.js version: $(node -v)"
echo "npm version: $(npm -v)"

# == INSTALL MONGODB ==
# Source: https://mongodb.com/docs/manual/tutorial/install-mongodb-on-debian/
echo "Installing MongoDB..."

# Install gnupg and curl
sudo apt install -y gnupg curl

# Import the MongoDB public GPG key
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | \
sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor

# Create a .list file for MongoDB
echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] http://repo.mongodb.org/apt/debian bookworm/mongodb-org/7.0 main" | \
sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

# Reload local package database
sudo apt update -y

# Install the latest stable version of MongoDB
sudo apt install -y mongodb-org

# Start MongoDB Service
sudo systemctl start mongod
sudo systemctl enable mongod  # Enable on boot

echo "Setup completed successfully!"
