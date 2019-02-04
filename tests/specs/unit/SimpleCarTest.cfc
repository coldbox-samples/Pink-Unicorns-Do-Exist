/**
* My BDD Test
*/
component extends="tests.resources.BaseTest"{

	/*********************************** BDD SUITES ***********************************/

		function run( testResults, testBox ){
			// all your suites go here.
			describe( "SimpleCar", function(){

				it( "can be created", function(){
					var simpleCar = entityNew( "SimpleCar" );
					expect(	simpleCar ).toBeComponent();
				} );

				it( "can load a simple member", function(){
					var simpleCar = entityLoad( "SimpleCar", { CarID = 14 }, true );
					expect(	simpleCar ).notToBeNull();
				} );

			});
		}

}
