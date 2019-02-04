/**
* My BDD Test
*/
component extends="tests.resources.BaseTest"{

	/*********************************** BDD SUITES ***********************************/

		function run( testResults, testBox ){
			// all your suites go here.
			describe( "Car", function(){

				it( "can be created", function(){
					var staff = entityNew( "Car" );
					expect(	staff ).toBeComponent();
				} );

				it( "can load a car", function(){
					var staff = entityLoad( "Car", { CarID = 1 }, true );
					expect(	staff ).notToBeNull();
				} );

			});
		}

}