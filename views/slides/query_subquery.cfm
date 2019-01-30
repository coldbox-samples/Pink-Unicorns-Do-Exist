<div class="card border-0 shadow mb-4">
	<div class="card-header border-0 py-3">
		<h6 class="m-0 font-weight-bold text-primary">SubQuery</h6>
	</div>
	<div class="card-body">
		<div class="div-pre col-12">
			var c = CarService.newCriteria();<br>
			...<br>
			c.add(<br>
				&nbsp c.createSubcriteria( "Car", "carstaff" )<br>
				&nbsp // the property in the subquery to use<br>
				&nbsp .withProjections( property="CarID" )<br>
				&nbsp .createAlias( "carstaff.SalesPeople", "staff" )<br>
				&nbsp .createAlias( "staff.Position", "position" )<br>
				&nbsp .isEq( "position.LongName", "Finance Officer" )<br>
				&nbsp // the property in root to compare to projected val<br>
				&nbsp .propertyIn( "CarID" )<br>
			).list();
		</div>
		<cfdump var="#prc.results#" expand="true">
	</div>
</div>