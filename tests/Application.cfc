/**
* Copyright Since 2005 Ortus Solutions, Corp
* www.ortussolutions.com
**************************************************************************************
*/
component{
	this.name = "cborm testing suite";
	// any other application.cfc stuff goes below:
	this.sessionManagement = true;

	// any mappings go here, we create one that points to the root called test.
	this.mappings[ "/tests" ] = getDirectoryFromPath( getCurrentTemplatePath() );
	// Map back to its root
	rootPath = REReplaceNoCase( this.mappings[ "/tests" ], "tests(\\|/)", "" );
	this.mappings[ "/root" ]   = rootPath;

	// App Mappings
	this.mappings[ "/CarTracker" ] 	= rootPath;
	this.mappings[ "/cborm" ] 		= rootPath & "modules/cborm";

	// Datasource
	this.datasources = {
        "CarTracker"    = {
            database    = "CarTracker",
            host        = "localhost",
            port        = "3306",
            driver      = "MySQL5",
            username    = "root",
			// password    = "mysql",
			password    = "",
            // Lucee Configs
			class		= 'org.gjt.mm.mysql.Driver',
			connectionString = 'jdbc:mysql://localhost:3306/CarTracker?useUnicode=true&characterEncoding=UTF-8&useLegacyDatetimeCode=true'
        }
	};

	// ORM Settings
	this.ormenabled=true;
	this.ormsettings = {
		cfclocation 	= "/CarTracker/models/orm",
		datasource 		= "CarTracker",
		// Logging is on so you can see and debug any issues
		logsql			= true,
		eventhandling	= true,
		// Use the ColdBox WireBox Handler for events
		eventHandler = "cborm.models.EventHandler",
		flushAtRequestEnd	= false,
		autoManageSession	= false
	};


	// request start
	public boolean function onRequestStart( String targetPage ){
		// Set a high timeout for long running tests
		setting requestTimeout="9999";

		// ORM Reload for fresh results
		if( structKeyExists( url, "fwreinit" ) ){
			if( structKeyExists( server, "lucee" ) ){
				pagePoolClear();
			}
			ormReload();
		}

		return true;
	}

    public void function onRequestEnd() {
    	// Cleanup Frameworks in each request.
        structdelete( application, "cbController" );
        structdelete( application, "wirebox" );
        return;
    }
}