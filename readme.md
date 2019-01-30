# Pink Unicorns Do Exist

This is sample application that shows you the power of the ColdBox ORM Module.  You will need CommandBox installed in your machine in order to install and run dependencies.

*Get CommandBox* : https://www.ortussolutions.com/products/commandbox

## Instructions

### Step 1 : Database Setup

This sample application was built using MySQL 5 and you can find the file `CarTracker.sql` in the **worbench** folder of the application that you can use to pre-load your application.

### Step 2 : Environment

This application is pre-configured to use CFConfig for loading the database into the engine and environment variables for connectivity.  Copy the `.env.template` and rename it to `.env`.  Open it and add your credentials for your MySQL database:

```env
DB_HOST=localhost
DB_USERNAME=root
DB_PASSWORD=mysql
```

In order for these env files and the cfconfig files to work, you must have the commandbox modules installed, so type the following in your shell:

```bash
box install commandbox-cfconfig,commandbox-dotenv
```

### Step 3: Dependencies

Go in to the CommandBox shell by typing `box` and enter. Then type `install` to configure all the necessary dependencies for this application.

### Step 4: Run it!

That's it, just run the application via CommandBox by typing `server start`.  This will open the browser to http://localhost:8090.  The port **8090** is configured inside the `box.json` file.

> There is a bug in Lucee that on first server start you might get some ORM issues.  Just do a `server restart` and it should be kicking again.