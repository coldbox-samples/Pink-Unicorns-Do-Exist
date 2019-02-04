/**
* My BDD Test
*/
component extends="tests.resources.BaseTest"{

	/*********************************** BDD SUITES ***********************************/

		function run( testResults, testBox ){
			// all your suites go here.
			describe( "ActiveCar", function(){

				it( "can be created", function(){
					var activeCar = entityNew( "ActiveCar" );
					expect(	activeCar ).toBeComponent();
				} );

				it( "can load an active car", function(){
					var activeCar = entityLoad( "ActiveCar", { CarID = 14 }, true );
					expect(	activeCar ).notToBeNull();
				} );

			});
		}

}