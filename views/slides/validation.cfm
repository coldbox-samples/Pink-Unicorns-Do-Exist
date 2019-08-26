<div class="card border-0 shadow mb-4">
	<div class="card-header border-0 py-3">
		<h6 class="m-0 font-weight-bold text-primary">
			Validate Some Stuff!
		</h6>
	</div>
	<div class="card-body">
<pre fileName="SimpleCar.cfc">
this.constraints = {
	"Year" = {
		required=true,
		requiredMessage="Please enter a Year"
	},
	"ListPrice" = {
		required=true,
		requiredMessage="Please enter a List Price",
		min=4000
	},
	"AcquisitionDate" = {
		required=true,
		requiredMessage="Please enter an Acquisition Date",
		type="date",
		typeMessage="Please enter a valid Acquisition Date"
	},
	"SaleDate" = {
		type="date",
		typeMessage="Please enter a valid Sale Date"
	},
	"VIN" = {
		required=true,
		requiredMessage="Please enter a VIN",
		validator="UniqueValidator@cborm",
		validatorMessage="Please enter a unique VIN"
	},
	"IsSold" = {
		required=true,
		requiredMessage="Specify whether this vehicle is sold or not",
		type="boolean",
		typeMessage="Please specify Yes or No for whether this vehicle is sold"
	}
};
</pre>

<pre fileName="handler.cfc">
prc.newCar 		= carService.new( {
	Year = 2012,
	AcquisitionDate = "Henry",
	VIN = "VIN123-GJH-1923",
	ListPrice = 3500
} );
prc.validationResults = validateModel( prc.newCar );
</pre>
		<cfoutput>
			<table class="table-bordered table-striped">
				<tr>
					<td>Has Errors?</td>
					<td>#prc.validationResults.hasErrors()#</td>
				</tr>
				<tr>
					<td>Error Count</td>
					<td>#prc.validationResults.getErrorCount()#</td>
				</tr>
				<tr>
					<td>All Error Messages</td>
					<td><cfdump var="#prc.validationResults.getAllErrors()#"></td>
				</tr>
				<tr>
					<td>All Errors</td>
					<td><cfdump var="#prc.validationResults.getErrors()#" expand=false></td>
				</tr>
			</table>
			<br /><br />
		</cfoutput>
	</div>
</div>


<pre>

</pre>
