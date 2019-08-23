/**
* My BDD Test
*/
component extends="tests.resources.BaseTest"{

	/*********************************** BDD SUITES ***********************************/

		function run( testResults, testBox ){
			// all your suites go here.
			describe( "Car", function(){

				it( "can be created", function(){
					var car = entityNew( "Car" );
					expect(	car ).toBeComponent();
				} );

				it( "can load a car", function(){
					var car = entityLoad( "Car", { CarID = 14 }, true );
					expect(	car ).notToBeNull();
				} );

			});
		}

}