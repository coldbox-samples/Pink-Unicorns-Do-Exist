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
			invalidEventHandler		= "",
			customErrorTemplate		= "",

			//Application Aspects
			handlerCaching 			= false,
			eventCaching			= false
		};

		// environment settings, create a detectEnvironment() method to detect it yourself.
		// create a function with the name of the environment so it can be executed if that environment is detected
		// the value of the environment is a list of regex patterns to match the cgi.http_host.
		environments = {
			development = "^127\.,^localhost"
		};

		// Layout Settings
		layoutSettings = {
			defaultLayout = "Main.cfm"
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

		// Register interceptors as an array, we need order
		interceptors = [
		];

	}

	/**
	* Development
	*/
	function development(){
		coldbox.customErrorTemplate = "/coldbox/system/includes/BugReport.cfm";
	}

}