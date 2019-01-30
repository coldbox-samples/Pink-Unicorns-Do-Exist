<div class="accordion" id="accordion">
	<div class="card border-0 shadow mb-4">
		<a href="#collapse1" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse1" data-target="#collapse1">
			<h6 class="m-0 font-weight-bold text-primary">
				Query by Make
			</h6>
		</a>
		<div class="collapse" id="collapse1" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					var c = CarService.newCriteria();<br>
					...<br>
					c.createAlias( "Make", "make", c.LEFT_JOIN )<br>
					 .isEq( "make.LongName", "Ford" )<br>
					 .list()
				</div>
				<cfdump var="#prc.make#" expand="true">
			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse2" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse2" data-target="#collapse2">
			<h6 class="m-0 font-weight-bold text-primary">
				Query by Sales Person
			</h6>
		</a>
		<div class="collapse" id="collapse2" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					var c = CarService.newCriteria();<br>
					...<br>
					c.createAlias( "SalesPeople", "staff" )<br>
					 .createAlias( "staff.Position", "position" )<br>
					 .isEq( "position.LongName", "General Manager" )<br>
					 .list();
				</div>
				<cfdump var="#prc.salespeople#" expand="true">
			</div>
		</div>
	</div>
</div>