/**
* My BDD Test
*/
component extends="tests.resources.BaseTest"{

	/*********************************** BDD SUITES ***********************************/

		function run( testResults, testBox ){
			// all your suites go here.
			describe( "SimpleCar", function(){

				it( "can be created", function(){
					var staff = entityNew( "SimpleCar" );
					expect(	staff ).toBeComponent();
				} );

				it( "can load a simple member", function(){
					var staff = entityLoad( "SimpleCar", { CarID = 1 }, true );
					expect(	staff ).notToBeNull();
				} );

			});
		}

}
