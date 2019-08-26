<div class="card border-0 shadow mb-4">
	<div class="card-header border-0 py-3">
		<h6 class="m-0 font-weight-bold text-primary">
		Populate the Productivity!
		</h6>
	</div>
	<div class="card-body">
		<div class="col-12">
<pre>
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
</pre>
		</div>
		<cfdump var="#prc.newCar.getMemento()#" expand="true">
	</div>
</div>