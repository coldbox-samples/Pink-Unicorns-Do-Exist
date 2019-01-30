<pre>
var c = CarService.newCriteria();
...
c.add(
    c.createSubcriteria( "Car", "carstaff" )
     // the property in the subquery to use
     .withProjections( property="CarID" )
     .createAlias( "carstaff.SalesPeople", "staff" )
     .createAlias( "staff.Position", "position" )
     .isEq( "position.LongName", "Finance Officer" )
     // the property in root to compare to projected val
     .propertyIn( "CarID" )
).list();
</pre>
<cfdump var="#prc.results#" expand="true">