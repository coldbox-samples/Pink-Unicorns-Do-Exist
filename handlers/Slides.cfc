/**
* Handler for Cars
*/
component {

	// DI
    property name="ORMService"          inject="entityService";
    property name="VirtualCarService"   inject="entityService:SimpleCar";
    property name="carService"          inject="id:SimpleCarService";

    /**
    * Home
    */
    function index( event, rc, prc ) {
        event.setView( view='slides/index' );
    }

    /**
    * Base ORM service
    */
    function baseORMService( event, rc, prc ) {
        prc.pageTitle 	= "Base ORM Service";
        prc.newCar 		= ORMService.new( entityName='SimpleCar', properties={ Year = 2012, ListPrice = 22000});
        prc.myCar 		= ORMService.findWhere( entityName='SimpleCar', criteria={ CarID = 12 } );
        prc.cars 		= ORMService.list( entityName="SimpleCar", max=3, asQuery=false );
    }

    /**
    * Active Entity
    */
    function activeEntity( event, rc, prc ) {
        prc.pageTitle 	= "Active Entity";
        var car 		= entityNew( "ActiveCar" );
        prc.newCar 		= car.new( properties={Year= 2012, ListPrice= 22000});
        prc.myCar 		= car.findWhere( criteria={ CarID = 12 } );
        prc.cars 		= car.list( max=3, asQuery=false );
    }

    /**
    * Virtual Entity Service
    */
    function virtualEntityService( event, rc, prc ) {
        prc.pageTitle 	= "Virtual Entity Service";
        prc.newCar 		= VirtualcarService.new( properties={Year= 2012, ListPrice= 22000});
        prc.myCar 		= VirtualcarService.findWhere( criteria={ CarID = 12 } );
        prc.cars 		= VirtualcarService.list( max=3, asQuery=false );
    }

    /**
    * Concrete ORM service
    */
    function concreteService( event, rc, prc ) {
        prc.pageTitle 	= "Concrete Service";
        prc.newCar 		= carService.new( properties={Year= 2012, ListPrice= 22000});
        prc.myCar 		= carService.findWhere( criteria={ CarID = 12 } );
        prc.cars 		= carService.list( max=3, asQuery=false );
        prc.newCars 	= carService.getNewCars();
    }

    /**
    * Validation
    */
    function validation( event, rc, prc ) {
        prc.pageTitle 	= "Entity Validation";
        prc.newCar 		= carService.new( properties={
            Year = 2012,
            AcquisitionDate = "Henry",
            VIN = "VIN123-GJH-1923",
            ListPrice = 3500
        });
        prc.validationResults = validateModel( target=prc.newCar );
    }

    /**
    * Population
    */
    function populate( event, rc, prc ) {
        prc.pageTitle = "Populate()";
        var newCar = carService.new();
        var fakeForm = {
            Year = 2012,
            AcquisitionDate = "2013-12-15",
            VIN = "VIN123-GJH-1923",
            ListPrice = 14500,
            Make = 6,
            Model = 14,
            Color = 9
        };
        prc.newCar = carService.populate( target=newCar, memento=fakeform, composeRelationships=true );
    }

    /**
    * Criteria queries simple
    */
    function query_simple( event, rc, prc ) {
        prc.pageTitle = "Criteria Builder - Simple Query";

        var c = carService.newCriteria();
            c.between( "SaleDate", createODBCDate( "2013-04-01" ), createODBCDate( "2013-07-01" ) );

        prc.count = c.count();

        var sTime = getTickCount();
        prc.results = c.list();
        prc.resultsTime = getTickCount() - sTime;

		var sTime = getTickCount();
        prc.flatResults = c.resultTransformer( c.ALIAS_TO_ENTITY_MAP ).list();
        prc.flatResultsTime = getTickCount() - sTime;
    }

    /**
    * Criteria queries projections
    */
    function query_projection( event, rc, prc ) {
        prc.pageTitle = "Criteria Builder - Projection";
        var c = carService.newCriteria();
        // average sale price for all vehicles
        prc.avg = c.isTrue( "IsSold" ).withProjections( avg="SalePrice" ).list();
        var c = carService.newCriteria();
        // total sum of sales for all vehicles
        prc.sum = c.isTrue( "IsSold" ).withProjections( sum="SalePrice" ).list();
        var c = carService.newCriteria();
        // avg and sum
        prc.total = c.isTrue( "IsSold" )
			.withProjections(
				sum="SalePrice",
				avg="SalePrice"
			)
			.list();
        var c = carService.newCriteria();
        // limit properties returned
        prc.properties = c.isTrue( "IsSold" )
         	.withProjections(
            	property="Year,Description,SaleDate,AcquisitionDate,SalePrice,ListPrice"
         	)
         	.list();
        // tranform results
        var c = carService.newCriteria();
        prc.transformed = c.isTrue( "IsSold" )
         	.withProjections(
            	property="Year,Description,SaleDate,AcquisitionDate,SalePrice,ListPrice"
         	)
         	.resultTransformer( c.ALIAS_TO_ENTITY_MAP )
         	.list();
    }

    /**
    * Criteria queries aliases
    */
    function query_alias( event, rc, prc ) {
        prc.pageTitle = "Criteria Builder - Projection";
        var c = carService.newCriteria();
        // left join
        prc.make = c.createAlias( "Make", "make", c.LEFT_JOIN )
          .isEq( "make.LongName", "Ford" ).list();

        var c = carService.newCriteria();
        // nested alias
        prc.salespeople = c.createAlias( "SalesPeople", "staff" )
          .createAlias( "staff.Position", "position" )
          .isEq( "position.LongName", "General Manager" ).list();
    }

    /**
    * Criteria queries subqueries
    */
    function query_subquery( event, rc, prc ) {
        prc.pageTitle = "Criteria Builder - Subquery";
        var c = carService.newCriteria();
        // add subquery
        c.add(
          c.createSubcriteria( "Car", "carstaff" )
            // the property in the subquery to use
            .withProjections( property="CarID" )
            .createAlias( "carstaff.SalesPeople", "staff" )
            .createAlias( "staff.Position", "position" )
            .isEq( "position.LongName", "Finance Officer" )
            // the property in root to compare to projected val
            .propertyIn( "CarID" )
        );
        // get results
        prc.results = c.list();
    }

    /**
    * Get Logging
    */
    function query_logging( event, rc, prc ) {
        prc.pageTitle = "Criteria Builder - ORM SQL Logging";
    }
}