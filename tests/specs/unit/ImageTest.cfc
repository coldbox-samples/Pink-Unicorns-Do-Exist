/**
* My BDD Test
*/
component extends="tests.resources.BaseTest"{

	/*********************************** BDD SUITES ***********************************/

		function run( testResults, testBox ){
			// all your suites go here.
			describe( "Image", function(){

				it( "can be created", function(){
					var staff = entityNew( "Image" );
					expect(	staff ).toBeComponent();
				} );

				it( "can load a image", function(){
					var staff = entityLoad( "Image", { ImageID = 1 }, true );
					expect(	staff ).notToBeNull();
				} );

			});
		}

}