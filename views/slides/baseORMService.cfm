<cfoutput>
	<div id="accordion" class="accordion">
		<div class="card border-0 shadow mb-4">
			<a href="##collapse1" class=" card-header border-0 py-3" data-toggle="collapse"
					role="button" aria-expanded="false" aria-controls="collapse1" data-target="##collapse1">
				<h6 class="m-0 font-weight-bold text-primary">Inject ORM Service</h6>
			</a>
			<div class="collapse show" id="collapse1" data-parent="##accordion">
				<div class="card-body">
					<div class="col-12">
<pre>
// Injection
property name="ORMService" inject="entityService";
...<br>
// Retrieval
getModel( "BaseORMService@cborm" );
</pre>
					</div>
				</div>
			</div>
		</div>
		<div class="card border-0 shadow mb-4">
			<a href="##collapse2" class=" card-header border-0 py-3" data-toggle="collapse"
					role="button" aria-expanded="false" aria-controls="collapse2" data-target="##collapse2">
				<h6 class="m-0 font-weight-bold text-primary">
					Create a Car
				</h6>
			</a>
			<div class="collapse" id="collapse2" data-parent="##accordion">
				<div class="card-body">
					<div class="col-12">
						<pre>
						var newCar = ORMService.new( entityName='SimpleCar', properties={Year: 2012, ListPrice: 22000});
						</pre>
					</div>
					<cfdump var="#prc.newcar.getMemento()#" expand="true" label="Car Memento">
				</div>
			</div>
		</div>
		<div class="card border-0 shadow mb-4">
			<a href="##collapse3" class=" card-header border-0 py-3" data-toggle="collapse"
					role="button" aria-expanded="false" aria-controls="collapse3" data-target="##collapse3">
				<h6 class="m-0 font-weight-bold text-primary">
					Find a Specific Car
				</h6>
			</a>
			<div class="collapse" id="collapse3" data-parent="##accordion">
				<div class="card-body">
					<div class="col-12">
						<pre>
						var foundCar = ORMService.findWhere( entityName='SimpleCar', criteria={ CarID = 12 } );
						</pre>
					</div>
					<cfdump var="#prc.mycar.getMemento()#" expand="true" label="Car Memento">
				</div>
			</div>
		</div>
		<div class="card border-0 shadow mb-4">
			<a href="##collapse4" class=" card-header border-0 py-3" data-toggle="collapse"
					role="button" aria-expanded="false" aria-controls="collapse4" data-target="##collapse4">
				<h6 class="m-0 font-weight-bold text-primary">
					List Cars
				</h6>
			</a>
			<div class="collapse" id="collapse4" data-parent="##accordion">
				<div class="card-body">
					<div class="col-12">
						<pre>
						var carList = ORMService.list( entityName='SimpleCar', max=3, asQuery=false );
						</pre>
					</div>
					<cfdump var="#prc.cars#" expand="true" label="Cars Memento">
				</div>
			</div>
		</div>
	</div>
</cfoutput>