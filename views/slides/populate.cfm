<!--
	<div class="card border-0 shadow mb-4">
		<div class="card-header border-0 py-3">
			<h6 class="m-0 font-weight-bold text-primary">Basic Card Example</h6>
		</div>
		<div class="card-body">
			The styling for this basic card example is determined by default Bootstrap utility classes. By using utility classes, the style of the card component can be easily modified with no need for any custom CSS!
		</div>
	</div>
-->
<div class="card border-0 shadow mb-4">
	<div class="card-header border-0 py-3">
		<h6 class="m-0 font-weight-bold text-primary">
		Populate the Productivity!
		</h6>
	</div>
	<div class="card-body">
		<div class="div-pre col-12">
			// Incoming Fake Form<br>
			var fakeForm = {<br>
				Year = 2012,<br>
				AcquisitionDate = "2013-12-15",<br>
				VIN = "VIN123-GJH-1923",<br>
				ListPrice = 14500,<br>
				Make = 6,<br>
				Model = 14,<br>
				Color = 9<br>
			};<br>
			// Populate with Relationships<br>
			prc.newCar = carService.populate( <br>
				target = carService.new(), <br>
				memento = fakeform, <br>
				composeRelationships = true <br>
			);
		</div>
		<cfdump var="#prc.newCar#" expand="true">
	</div>
</div>