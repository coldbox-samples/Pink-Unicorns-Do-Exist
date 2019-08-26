<div class="card border-0 shadow mb-4">
	<div class="card-header border-0 py-3">
		<h6 class="m-0 font-weight-bold text-primary">SubQuery</h6>
	</div>
	<div class="card-body">
		<div class="col-12">
			<pre syntax="javascript">
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
			</pre>
		</div>
		<cfdump var="#prc.results#" expand="true">
	</div>
</div>