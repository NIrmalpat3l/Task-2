#!/bin/bash
# JP Morgan & Chase
# Forage Job Simulation: Task 2

# Function to compare two version strings
version_gt() { test "$(printf '%s\n' "$@" | sort -V | head -n 1)" != "$1"; }

# Check if the latest version of Node.js is installed
if version_gt "$(node --version)" "$(npm view node version)"; then
    echo "Updating Node.js to the latest version..."
    npm install -g npm@latest
    sudo npm install -g n
    if ! sudo n latest; then
        echo "Failed to update Node.js. Please check npm logs for errors."
        exit 1
    fi
    echo "Node.js updated to the latest version."
else
    echo "Node.js is already up to date."
fi

# Check if JP Chase & Morgan's Perspective module is installed
if npm list jp-chase-morgans-perspective &>/dev/null; then
    echo "JP Chase & Morgan's Perspective module is already installed."
else
    echo "JP Chase & Morgan's Perspective module is not installed. Installing..."
    if ! npm install jp-chase-morgans-perspective; then
        echo "Failed to install JP Chase & Morgan's Perspective module. Please check npm logs for errors."
        exit 1
    fi
    echo "JP Chase & Morgan's Perspective module installed successfully."
fi

# Update all packages to the latest versions
echo "Updating all packages to the latest versions..."
if ! npm update; then
    echo "Failed to update packages. Please check npm logs for errors."
    exit 1
fi
echo "All packages updated successfully."

# Installs Task dependencies
echo "Installing project dependencies..."
if ! npm install; then
    echo "Failed to install project dependencies. Please check npm logs for errors."
    exit 1
fi
echo "Dependencies installed successfully."

# Build the application
echo "Building the application..."
if ! npm run build; then
    echo "Failed to build the application. Please check npm logs for errors."
    exit 1
fi
echo "Application build successful."

# Open a new terminal window and start the application
echo "Starting the application..."
gnome-terminal -- npm start
