/**
* My BDD Test
*/
component extends="tests.resources.BaseTest"{

/*********************************** BDD SUITES ***********************************/

	function run( testResults, testBox ){
		// all your suites go here.
		describe( "Staff", function(){

			it( "can be created", function(){
				var staff = entityNew( "Staff" );
				expect(	staff ).toBeComponent();
			} );

			it( "can load a staff member", function(){
				var staff = entityLoad( "Staff", { StaffID = 1 }, true );
				expect(	staff ).notToBeNull();
			} );

		});
	}

}
