<div class="card border-0 shadow mb-4">
	<div class="card-header border-0 py-3">
		<h6 class="m-0 font-weight-bold text-primary">
			Validate Some Stuff!
		</h6>
	</div>
	<div class="card-body">
		<div class="div-pre">
			this.constraints = {<br>
				&nbsp "Year" = { <br>
					&nbsp &nbsp required=true, <br>
					&nbsp &nbsp requiredMessage="Please enter a Year" <br>
				&nbsp },<br>
				&nbsp "ListPrice" = { <br>
					&nbsp &nbsp required=true, <br>
					&nbsp &nbsp requiredMessage="Please enter a List Price", min=4000 <br>
				&nbsp },<br>
				&nbsp "AcquisitionDate" = { <br>
					&nbsp &nbsp required=true, <br>
					&nbsp &nbsp requiredMessage="Please enter an Acquisition Date", <br>
					&nbsp &nbsp type="date", <br>
					&nbsp &nbsp typeMessage="Please enter a valid Acquisition Date" <br>
				&nbsp },<br>
				&nbsp "SaleDate" = { <br>
					&nbsp &nbsp type="date", <br>
					&nbsp &nbsp typeMessage="Please enter a valid Sale Date" <br>
				&nbsp },<br>
				&nbsp "VIN" = { <br>
					&nbsp &nbsp required=true, <br>
					&nbsp &nbsp requiredMessage="Please enter a VIN", <br>
					&nbsp &nbsp unique=true, <br>
					&nbsp &nbsp uniqueMessage="Please enter a unique VIN"<br>
				&nbsp },<br>
				&nbsp "IsSold" = { <br>
					&nbsp &nbsp required=true, <br>
					&nbsp &nbsp requiredMessage="Specify whether this vehicle is sold or not", <br>
					&nbsp &nbsp type="boolean", <br>
					&nbsp &nbsp typeMessage="Please specify Yes or No for whether this vehicle is sold"<br>
				&nbsp }<br>
			};<br>
			...<br>
			var myCar = CarService.new();<br>
			...<br>
			var results = validateModel( myCar );
		</div>
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
		<cfdump var="#prc.validationResults#" expand="true">
	</div>
</div>


<pre>

</pre>
