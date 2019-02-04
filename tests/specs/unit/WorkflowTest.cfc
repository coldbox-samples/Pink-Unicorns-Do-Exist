/**
* My BDD Test
*/
component extends="tests.resources.BaseTest"{

	/*********************************** BDD SUITES ***********************************/

		function run( testResults, testBox ){
			// all your suites go here.
			describe( "Workflow", function(){

				it( "can be created", function(){
					var staff = entityNew( "Workflow" );
					expect(	staff ).toBeComponent();
				} );

				it( "can load a workflow", function(){
					var staff = entityLoad( "Workflow", { WorkflowID = 1 }, true );
					expect(	staff ).notToBeNull();
				} );

			});
		}

}