<cfoutput>
	<div class="accordion" id="accordion">
		<div class="card border-0 shadow mb-4">
			<a href="##collapse1" class=" card-header border-0 py-3" data-toggle="collapse"
					role="button" aria-expanded="false" aria-controls="collapse1" data-target="##collapse1">
				<h6 class="m-0 font-weight-bold text-primary">
					Cars Sold Between 4/1 and 7/1
				</h6>
			</a>
			<div class="collapse show" id="collapse1" data-parent="##accordion">
				<div class="card-body">
					<div class="col-12">
<pre>
var c = CarService.newCriteria();
c.between( "SaleDate", createODBCDate( "2013-04-01" ), createODBCDate( "2013-07-01" ) );

prc.count = c.count();
prc.results = c.list();
</pre>
					</div>
					<table class="table-bordered table-striped">
						<tr>
							<td>Total Results</td>
							<td>#prc.count#</td>
						</tr>
						<tr>
							<td>Results</td>
							<td><cfdump var="#prc.results#" expand="false" label="Click to Expand"></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="card border-0 shadow mb-4">
			<a href="##collapse2" class=" card-header border-0 py-3" data-toggle="collapse"
					role="button" aria-expanded="false" aria-controls="collapse2" data-target="##collapse2">
				<h6 class="m-0 font-weight-bold text-primary">
					Cars Sold Between 4/1 and 7/1 as a Stream
				</h6>
			</a>
			<div class="collapse" id="collapse2" data-parent="##accordion">
				<div class="card-body">
					<div class="col-12">
<pre>
var c = CarService.newCriteria();
c.between( "SaleDate", createODBCDate( "2013-04-01" ), createODBCDate( "2013-07-01" ) );
...
prc.count = c.count();
prc.results = c.asStream().list();
</pre>
					</div>
						<table class="table-bordered table-striped">
							<tr>
								<td>Total Results</td>
								<td>#prc.count#</td>
							</tr>
							<tr>
								<td>Stream Results</td>
								<td><cfdump var="#prc.streamResults#" expand="false" label="Click To Expand"></td>
							</tr>
						</table>
				</div>
			</div>
		</div>
	</div>




</cfoutput>