# Chromebook MERN Env Setup Script

This script is intended to be used within the Linux developer environment of a Chromebook. It installs the following packages and platforms:

- Node.js  
- npm  
- MongoDB Community Edition  

To run the script, first make it executable with:

```shell
chmod +x setup_node_mongodb.sh
```

Then run it with:

```shell
./setup_node_mongodb.sh
```

# Verifying MongoDB

To check that MongoDB is running you can use:

```shell
sudo systemctl status mongod
```

or type ```mongosh``` to enter the interactive shell.
