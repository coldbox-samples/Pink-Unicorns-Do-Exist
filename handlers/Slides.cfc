/**
 * Handler for Cars
 */
component {

	// Inject a base ORM service
	property name="ORMService"          inject="entityService";
	// Inject a virtual service
	property name="VirtualCarService"   inject="entityService:SimpleCar";
	// Inject a concrete service from the `models` folder
	property name="carService"          inject="id:SimpleCarService";

	// Syntax Highlight Utility
	property name="cbCodeFormat"		inject="@cbCodeFormat";

	/**
	* Executes before all handler actions
	*/
	any function preHandler( event, rc, prc, action, eventArguments ){
		prc.formatter = variables.cbCodeFormat;
		// Load cbCodeFormat assets + theme
		addAsset( prc.formatter.getCSSAssets() );
	}

    /**
     * Home
     */
    function index( event, rc, prc ) {
        event.setView( "slides/index" );
    }

    /**
     * Base ORM service
     */
    function baseORMService( event, rc, prc ) {
		//params
		event.paramValue( name = "carID", value = "12" )
			 .paramValue( name = "max", value = "3" );

		prc.pageTitle 	= "Base ORM Service";

		//Create new car
		prc.newCar 		= ORMService.new( entityName = 'SimpleCar', properties = { Year = 2012, ListPrice = 22000 } );

		//Find a specific car
		prc.myCar 		= ORMService.findWhere( entityName = 'SimpleCar', criteria = { CarID = rc.carID } );

		//Get a list of cars
		prc.cars 		= ORMService
			.list(
				entityName 	= "SimpleCar",
				max			= rc.max,
				asQuery 	= false
			)
			// Map it to the memento, so we can see it nicely.
			.map( function( item ){
				return item.getMemento();
			} );
    }

    /**
    * Active Entity
    */
    function activeEntity( event, rc, prc ) {
		//params
		event.paramValue( name = "carID", value = "12" )
			 .paramValue( name = "max", value = "3" );

		prc.pageTitle 	= "Active Entity";

		//Create new Active car
        var car 		= entityNew( "ActiveCar" );
		prc.newCar 		= car.new( properties = { Year = 2012, ListPrice = 22000 } );

		//Find a specific cars
		prc.myCar 		= car.findWhere( criteria = { CarID = rc.carID } );

		//Get list of Active cars
		prc.cars 		= car
			.list( max = rc.max, asQuery = false )
			// Map it to the memento, so we can see it nicely.
			.map( function( item ){
				return item.getMemento();
			} );
    }

    /**
     * Virtual Entity Service
     */
    function virtualEntityService( event, rc, prc ) {
		//params
		event.paramValue( name = "carID", value = "12" )
			 .paramValue( name = "max", value = "3" );

		prc.pageTitle 	= "Virtual Entity Service";

		//Create new virtual service
		prc.newCar 		= VirtualcarService.new( properties = { Year = 2012, ListPrice = 22000} );

		//Find a specific car
		prc.myCar 		= VirtualcarService.findWhere( criteria = { CarID = rc.carID } );

		//Get list of virtual service
		prc.cars 		= VirtualcarService
			.list( max = rc.max, asQuery = false )
			// Map it to the memento, so we can see it nicely.
			.map( function( item ){
				return item.getMemento();
			} );
    }

    /**
    * Concrete ORM service
    */
    function concreteService( event, rc, prc ) {
		event.paramValue( name = "carID", value = "12" )
			 .paramValue( name = "max", value = "3" );

		prc.pageTitle 	= "Concrete Service";

		//create new car
		prc.newCar 		= carService.new( properties = { Year = 2012, ListPrice = 22000 });

		//find specific car
		prc.myCar 		= carService.findWhere( criteria = { CarID = rc.carID } );

		//Get list of cars
		prc.cars 		= carService
			.list( max = rc.max, asQuery = false )
			// Map it to the memento, so we can see it nicely.
			.map( function( item ){
				return item.getMemento();
			} );
		prc.newCars 	= carService
			.getNewCars()
			// Map it to the memento, so we can see it nicely.
			.map( function( item ){
				return item.getMemento();
			} );
	}

	/**
    * Population
    */
    function populate( event, rc, prc ) {
        prc.pageTitle = "Populate()";
        var fakeForm = {
            Year = 2012,
            AcquisitionDate = "2013-12-15",
            VIN = "VIN123-GJH-1923",
            ListPrice = 14500,
            Make = 6,
            Model = 14,
            Color = 9
        };
		prc.newCar = carService
			.populate(
				target=carService.new(),
				memento=fakeform,
				composeRelationships=true
			);
    }

    /**
     * Validation
     */
    function validation( event, rc, prc ) {
        prc.pageTitle 	= "Entity Validation";
        prc.newCar 		= carService.new( {
            Year = 2012,
            AcquisitionDate = "Henry",
            VIN = "VIN123-GJH-1923",
            ListPrice = 3500
        } );
        prc.validationResults = validateModel( prc.newCar );
    }

    /**
     * Criteria queries simple
     */
    function query_simple( event, rc, prc ) {
        prc.pageTitle = "Criteria Builder - Simple Query";

		var c = carService.newCriteria();
            c.between( "SaleDate", createODBCDate( "2013-04-01" ), createODBCDate( "2013-07-01" ) );

        prc.count = c.count();

		prc.results = c.list()
			// Map it to the memento, so we can see it nicely.
			.map( function( item ){
				return item.getMemento();
			} );
        prc.streamResults = c.asStream().list();
    }

    /**
    * Criteria queries projections
    */
    function query_projection( event, rc, prc ) {
        prc.pageTitle = "Criteria Builder - Projection";

        // average sale price for all vehicles
		var c = carService.newCriteria();
        prc.avg = c.isTrue( "IsSold" ).withProjections( avg="SalePrice" ).get();

		// total sum of sales for all vehicles
        var c = carService.newCriteria();
        prc.sum = c.isTrue( "IsSold" ).withProjections( sum="SalePrice" ).get();

		// avg and sum with aliases
        var c = carService.newCriteria();
        prc.total = c.isTrue( "IsSold" )
			.withProjections(
				sum="SalePrice:salesTotal",
				avg="SalePrice:salesAvg"
			)
			.asStruct()
			.list();

		// limit properties returned
		var c = carService.newCriteria();
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
         	.asStruct()
         	.list();
    }

    /**
    * Criteria queries joins
    */
    function query_joins( event, rc, prc ) {
        prc.pageTitle = "Criteria Builder - Projection";

		// left join
        var c = carService.newCriteria();
        prc.makes = c.joinTo( "Make", "make", c.LEFT_JOIN )
			.isEq( "make.LongName", "Ford" )
			.list()
		  	// Map it to the memento, so we can see it nicely.
			.map( function( item ){
				return item.getMemento();
			} );

		// nested alias
		var c = carService.newCriteria();
		prc.salespeople = c
			.joinTo( "SalesPeople", "staff" )
				.joinTo( "staff.Position", "position" )
					.isEq( "position.LongName", "General Manager" )
			.list()
			// Map it to the memento, so we can see it nicely.
			.map( function( item ){
				return item.getMemento();
			} );
    }

    /**
    * Criteria queries subqueries
    */
    function query_subquery( event, rc, prc ) {
        prc.pageTitle = "Criteria Builder - Subquery";
        var c = carService.newCriteria();

		// add subquery
        prc.results = c.add(
				c.createSubcriteria( "Car", "carstaff" )
				// the property in the subquery to use
				.withProjections( property="CarID" )
				.joinTo( "carstaff.SalesPeople", "staff" )
					.joinTo( "staff.Position", "position" )
						.isEq( "position.LongName", "Finance Officer" )
				// the property in root to compare to projected val
				.propertyIn( "CarID" )
			)
			.list()
			// Map it to the memento, so we can see it nicely.
			.map( function( item ){
				return item.getMemento();
			} );
    }

    /**
    * Get Logging
    */
    function query_logging( event, rc, prc ) {
        prc.pageTitle = "Criteria Builder - ORM SQL Logging";
    }
}