# Chromebook MERN Environment Setup Script

This script streamlines the process of setting up a MERN (MongoDB, Express.js, React, Node.js) development environment on your Chromebook's Linux container. It automates the installation of:

- **Node.js:** The JavaScript runtime environment.
- **npm:** The Node Package Manager for installing JavaScript libraries.
- **MongoDB Community Edition:** The popular NoSQL database.

## Prerequisites

- **Linux (Beta) Enabled:** Ensure you have the Linux (Beta) feature enabled on your Chromebook.
- **Terminal Access:** You'll need access to the Linux terminal.

## Before you Begin

This script requires certain packages to be installed. To ensure you have the latest versions, please run the following command in your terminal:

```shell
sudo apt update
```

When you run this command, it does the following:

1. **Retrieves Package Information:** It connects to the configured software repositories (sources listed in `/etc/apt/sources.list` and files in `/etc/apt/sources.list.d/`) and downloads the latest package lists.
 
2. **Updates Local Database:** It updates the local package database with the latest information about available packages and their versions. This includes information about new packages, updated packages, and packages that have been removed from the repositories.

**In simpler terms:** It refreshes your system's knowledge about what software is available to install or update. 

**Important Note:** It does NOT actually install or upgrade any packages. To do that, you would run `sudo apt upgrade` or `sudo apt install <package_name>`. 


## Usage

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/brett-buskirk/mern-on-chromeos.git
   cd mern-on-chromeos
   ```

2. **Run the Script:**
   ```bash
   ./setup_node_mongodb.sh
   ```

## Verification

- **MongoDB Status:**
   ```bash
   sudo systemctl status mongod
   ```

- **MongoDB Shell:**
   ```bash
   mongosh
   ```

## Important Notes

- **Script Location:**  Ensure you are in the correct directory where the `setup_node_mongodb.sh` script is located before running it.
- **Elevated Privileges (sudo):** The script requires `sudo` (superuser) access to install system-level packages.

## Troubleshooting

- **Errors:** If you encounter any errors during the installation, carefully review the terminal output for clues. 
- **Community Support:**  Reach out to online forums or communities for assistance if needed.

## Disclaimer

This script is provided as-is.  Use it at your own risk. The author is not responsible for any issues that may arise from its use.

## License

MIT License
