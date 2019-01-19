component{

	// Configure ColdBox Application
	function configure(){

		// coldbox directives
		coldbox = {
			//Application Setup
			appName 				= "Pink Unicorns Do Exist",
			reinitPassword			= "",
			handlersIndexAutoReload = true,

			//Implicit Events
			defaultEvent			= "presentation.slides",
			requestStartHandler		= "",
			requestEndHandler		= "",
			applicationStartHandler = "",
			applicationEndHandler	= "",
			sessionStartHandler 	= "",
			sessionEndHandler		= "",
			missingTemplateHandler	= "",

			//Error/Exception Handling
			exceptionHandler		= "",
			invalidEventHandler			= "",
			customErrorTemplate		= "",

			//Application Aspects
			handlerCaching 			= false,
			eventCaching			= false,
			debugMode 				= true,
			debugPassword			= ""
		};

		// environment settings, create a detectEnvironment() method to detect it yourself.
		// create a function with the name of the environment so it can be executed if that environment is detected
		// the value of the environment is a list of regex patterns to match the cgi.http_host.
		environments = {
			development = "^127\.,^localhost"
		};

		// Module Directives
		modules = {
			// Turn to false in production
			autoReload = false,
			// An array of modules names to load, empty means all of them
			include = [],
			// An array of modules names to NOT load, empty means none
			exclude = []
		};

		//Layout Settings
		layoutSettings = {
			defaultLayout = "Presentation.cfm"
		};

		orm = {
			injection = {
				// enable entity injection
				enabled = true,
				// a list of entity names to include in the injections
				include = "",
				// a list of entity names to exclude from injection
				exclude = ""
			}
		};

		//Register interceptors as an array, we need order
		interceptors = [
			 //SES
			 {class="coldbox.system.interceptors.SES"}
		];

	}

	/**
	* Development
	*/
	function development(){
		coldbox.customErrorTemplate = "/coldbox/system/includes/BugReport.cfm";
	}

}