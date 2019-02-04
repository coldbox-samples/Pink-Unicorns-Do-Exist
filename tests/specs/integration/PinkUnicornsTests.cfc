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

			story( "I need to create a car", function(){
				it( "Should be a component", function(){
					var e 	= get( "/slides/baseORMService" );
					var prc = e.getPrivateCollection();
					expect( prc.newCar  ).toBeComponent();
				} );
			} );

			story( "I need to find a specific car", function(){
				when( "I give a valid Car ID", function(){
					then( "I should get a single car", function(){
						getRequestContext().setValue( "carID", "14");
						var e = get( "/slides/baseORMService" );
						var prc = e.getPrivateCollection();
						expect( prc.myCar ).notToBeNull();
					} );
				} );
			} );

			story( "I need to get a list of cars", function(){
				when( "I limit the result to 3", function(){
					then( "I should get a list of cars", function(){
						getRequestContext().setValue( "max", "3");
						var e = get( "/slides/baseORMService" );
						var prc = e.getPrivateCollection();
						expect( prc.cars ).toBeArray().toHaveLength( 3 );
					} );
				} )
			} );

			story( "I need to create an active car", function(){
				it( "Should be a component", function(){
					var e 	= get( "/slides/activeEntity" );
					var prc = e.getPrivateCollection();
					expect( prc.newCar  ).toBeComponent();
				} );
			} );

			story( "I need to find a specific active car", function(){
				when( "I give a valid Car ID", function(){
					then( "I should get a single active car", function(){
						getRequestContext().setValue( "carID", "14");
						var e = get( "/slides/activeEntity" );
						var prc = e.getPrivateCollection();
						expect( prc.myCar ).notToBeNull();
					} );
				} );
			} );

			story( "I need to get a list of active cars", function(){
				when( "I limit the result to 3", function(){
					then( "I should get a list of active cars", function(){
						getRequestContext().setValue( "max", "3");
						var e = get( "/slides/activeEntity" );
						var prc = e.getPrivateCollection();
						expect( prc.cars ).toBeArray().toHaveLength( 3 );
					} );
				} )
			} );

			story( "I need to create an virtual service", function(){
				it( "Should be a component", function(){
					var e 	= get( "/slides/virtualEntityService" );
					var prc = e.getPrivateCollection();
					expect( prc.newCar  ).toBeComponent();
				} );
			} );

			story( "I need to find a specific virtual service", function(){
				when( "I give a valid Car ID", function(){
					then( "I should get a single virtual service", function(){
						getRequestContext().setValue( "carID", "14");
						var e = get( "/slides/virtualEntityService" );
						var prc = e.getPrivateCollection();
						expect( prc.myCar ).notToBeNull();
					} );
				} );
			} );

			story( "I need to get a list of concrete Service", function(){
				when( "I limit the result to 3", function(){
					then( "I should get a list of concrete service", function(){
						getRequestContext().setValue( "max", "3");
						var e = get( "/slides/concreteService" );
						var prc = e.getPrivateCollection();
						expect( prc.cars ).toBeArray().toHaveLength( 3 );
					} );
				} )
			} );

			it( "should be an Array query_simple", function(){
				var e = get( "/slides/query_simple");
				var prc = e.getPrivateCollection();
				expect( prc.results ).toBeArray();
			} );

			it( "should be an Array query_projection", function(){
				var e = get( "/slides/query_projection" );
				var prc = e.getPrivateCollection();
				expect( prc.transformed ).toBeArray();
			} );

			it( "should be an Array query_alias", function(){
				var e = get( "/slides/query_alias" );
				var prc = e.getPrivateCollection();
				expect( prc.salespeople ).toBeArray();
			} );

			story( "I need to get an array using query_subquery", function(){
				it( "should be an array of cars", function(){
					var e = get( "/slides/query_subquery" );
					var prc = e.getPrivateCollection();
					expect( prc.results ).toBeArray();
				} );
			} );

		} );
	}

}
