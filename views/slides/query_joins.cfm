<div class="accordion" id="accordion">
	<div class="card border-0 shadow mb-4">
		<a href="#collapse1" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse1" data-target="#collapse1">
			<h6 class="m-0 font-weight-bold text-primary">
				Query by Make
			</h6>
		</a>
		<div class="collapse show" id="collapse1" data-parent="#accordion">
			<div class="card-body">
				<div class="col-12">
<pre>
// left join
var c = carService.newCriteria();
prc.makes = c.joinTo( "Make", "make", c.LEFT_JOIN )
	.isEq( "make.LongName", "Ford" )
	.list();
</pre>
				</div>
				<cfdump var="#prc.makes#" expand="false" label="Click to Expand">
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
				<div class="col-12">
<pre>
var c = carService.newCriteria();
prc.salespeople = c
	.joinTo( "SalesPeople", "staff" )
		.joinTo( "staff.Position", "position" )
			.isEq( "position.LongName", "General Manager" )
	.list()
</pre>
				</div>
				<cfdump var="#prc.salespeople#" expand="false" label="Click to Expand">
			</div>
		</div>
	</div>
</div>