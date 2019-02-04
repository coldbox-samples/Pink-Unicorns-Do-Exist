/**
* My BDD Test
*/
component extends="tests.resources.BaseTest"{

	/*********************************** BDD SUITES ***********************************/

		function run( testResults, testBox ){
			// all your suites go here.
			describe( "Image", function(){

				it( "can be created", function(){
					var image = entityNew( "Image" );
					expect(	image ).toBeComponent();
				} );

				it( "can load a image", function(){
					var image = entityLoad( "Image", { ImageID = 67 }, true );
					expect(	image ).notToBeNull();
				} );

			});
		}

}