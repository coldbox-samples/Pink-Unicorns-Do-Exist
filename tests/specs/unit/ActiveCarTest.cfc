/**
* My BDD Test
*/
component extends="tests.resources.BaseTest"{

	/*********************************** BDD SUITES ***********************************/

		function run( testResults, testBox ){
			// all your suites go here.
			describe( "ActiveCar", function(){

				it( "can be created", function(){
					var staff = entityNew( "ActiveCar" );
					expect(	staff ).toBeComponent();
				} );

				it( "can load an active car", function(){
					var staff = entityLoad( "ActiveCar", { CarID = 1 }, true );
					expect(	staff ).notToBeNull();
				} );

			});
		}

}