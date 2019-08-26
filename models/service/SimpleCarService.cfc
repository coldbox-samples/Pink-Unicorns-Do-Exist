/**
* Simple car concrete service
*/
component extends="cborm.models.VirtualEntityService" singleton {

    /**
     * Constructor
     */
    public SimpleCarService function init() {
        super.init( entityName="SimpleCar" );
        return this;
    }

    public function getNewCars() {
        return newCriteria()
            .isGT( "Year", autoCast( "Year", 2012 ) )
        	.list( max=3 );
    }
}