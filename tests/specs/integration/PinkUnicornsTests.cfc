component extends="tests.resources.BaseTest"{

/*********************************** LIFE CYCLE Methods ***********************************/

	// executes before all suites+specs in the run() method
	function beforeAll(){
		super.beforeAll();
	}

	// executes after all suites+specs in the run() method
	function afterAll(){
		super.afterAll();
	}

/*********************************** BDD SUITES ***********************************/

	function run( testResults, testBox ){
		// all your suites go here.
		describe( "Pink Unicorns Do Exist", function(){

			it( "can load the homepage", function(){
				var event = get( "/" );

				debug( event.getRenderedContent() );

				expect( event.getRenderedContent() ).toInclude( "SQL Logging</a>" );
			});


			it( "can leverage the base orm services", function(){
				var event 	= get( "/slides/baseORMService" );
				//var event 	= execute( route="/slides/baseORMService", renderResults=true );
				//var event 	= execute( event="slides.baseORMService", renderResults=true );
				var prc 	= event.getPrivateCollection();

				expect( prc.newCar  ).toBeComponent();
				expect( prc.newCar.getYear() ).toBe( 2012 );

				expect( prc.myCar  ).notToBeNull();

				expect( prc.cars )
					.toBeArray()
					.toHaveLength( 3 );
			});

		});
	}

}
