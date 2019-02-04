/**
* My BDD Test
*/
component extends="tests.resources.BaseTest"{

	/*********************************** BDD SUITES ***********************************/

		function run( testResults, testBox ){
			// all your suites go here.
			describe( "Workflow", function(){

				it( "can be created", function(){
					var workflow = entityNew( "Workflow" );
					expect(	workflow ).toBeComponent();
				} );

				it( "can load a workflow", function(){
					var workflow = entityLoad( "Workflow", { WorkflowID = 1 }, true );
					expect(	workflow ).notToBeNull();
				} );

			});
		}

}