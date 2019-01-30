<div class="accordion" id="accordion">
	<div class="card border-0 shadow mb-4">
		<a href="#collapse1" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse1" data-target="#collapse1">
			<h6 class="m-0 font-weight-bold text-primary">
				Cars Sold Between 4/1 and 7/1
			</h6>
		</a>
		<div class="collapse" id="collapse1" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					var c = CarService.newCriteria();<br>
					c.between( "SaleDate", createODBCDate( "2013-04-01" ), createODBCDate( "2013-07-01" ) );<br>
					...<br>
					prc.count = c.count();<br>
					prc.results = c.list();
				</div>
			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse2" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse2" data-target="#collapse2">
			<h6 class="m-0 font-weight-bold text-primary">
				Cars Sold Between 4/1 and 7/1 as Array of Structs
			</h6>
		</a>
		<div class="collapse" id="collapse2" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					var c = CarService.newCriteria();<br>
					c.between( "SaleDate", createODBCDate( "2013-04-01" ), createODBCDate( "2013-07-01" ) );<br>
					...<br>
					prc.count = c.count();<br>
					prc.results = c.resultTransformer( c.ALIAS_TO_ENTITY_MAP ).list();
				</div>
				<cfoutput>
					<table class="table-bordered table-striped">
						<tr>
							<td>Total Results</td>
							<td>#prc.count#</td>
						</tr>
						<tr>
							<td>Results</td>
							<td><cfdump var="#prc.results#" expand="false"></td>
						</tr>
						<tr>
							<td>Results Time</td>
							<td><cfdump var="#prc.resultsTime#"></td>
						</tr>
						<tr>
							<td>Flat Results</td>
							<td><cfdump var="#prc.flatResults#" expand="false"></td>
						</tr>
						<tr>
							<td>Flat Results Time</td>
							<td><cfdump var="#prc.flatResultsTime#"></td>
						</tr>
					</table>
				</cfoutput>
			</div>
		</div>
	</div>
</div>



