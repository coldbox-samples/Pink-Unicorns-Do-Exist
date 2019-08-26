component{

	// Configure ColdBox Application
	function configure(){

		// coldbox directives
		coldbox = {
			//Application Setup
			appName 				= "Pink Unicorns Do Exist",
			reinitPassword			= "",

			//Implicit Events
			defaultEvent			= "slides.index",
			requestStartHandler		= "",
			requestEndHandler		= "",
			applicationStartHandler = "",
			applicationEndHandler	= "",
			sessionStartHandler 	= "",
			sessionEndHandler		= "",
			missingTemplateHandler	= "",

			//Error/Exception Handling
			exceptionHandler		= "",
			invalidEventHandler		= "",
			customErrorTemplate		= "",

			// Application Aspects
			handlerCaching 			= false,
			eventCaching			= false,
			autoMapModels 			= true
		};

		// environment settings, create a detectEnvironment() method to detect it yourself.
		// create a function with the name of the environment so it can be executed if that environment is detected
		// the value of the environment is a list of regex patterns to match the cgi.http_host.
		environments = {
			development = "^127\.,^localhost"
		};

		// Register interceptors as an array, we need order
		interceptors = [
		];

		//LogBox DSL
		logBox = {
			// Define Appenders
			appenders = {
				files={
					class="coldbox.system.logging.appenders.RollingFileAppender",
					properties = {
						filename = "unicorns", filePath="/#appMapping#/logs"
					}
				},
				console = {
					class="coldbox.system.logging.appenders.ConsoleAppender"
				}
			},
			// Root Logger
			root = { levelmax="DEBUG", appenders="*" },
			// Implicit Level Categories
			info = [ "coldbox.system" ]
			//debug = [ "cborm.*" ]
		};

		moduleSettings = {
			cborm = {
				injection = {
					enabled = true,
					include = "",
					exclude = ""
				}
			}
		};

	}

	/**
	* Development
	*/
	function development(){
		coldbox.handlersIndexAutoReload 	= true;
		coldbox.reinitPassword				= "";
		coldbox.customErrorTemplate 		= "/coldbox/system/includes/BugReport.cfm";
	}

}