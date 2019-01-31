<div class="panel-group" id="accordion">
	<div class="card border-0 shadow mb-4">
		<a href="#collapse1" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse1" data-target="#collapse1">
			<h6 class="m-0 font-weight-bold text-primary">
				Average Sale Price
			</h6>
		</a>
		<div class="collapse" id="collapse1" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					var c = CarService.newCriteria();<br>
					...<br>
					c.isTrue( "IsSold" ).withProjections( avg="SalePrice" ).list();
				</div>
				<cfdump var="#prc.avg#" expand="true">
			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse2" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse2" data-target="#collapse2">
			<h6 class="m-0 font-weight-bold text-primary">
				Total Sales
			</h6>
		</a>
		<div class="collapse" id="collapse2" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					var c = CarService.newCriteria();<br>
					...<br>
					c.isTrue( "IsSold" ).withProjections( sum="SalePrice" ).list();
				</div>
				<cfdump var="#prc.sum#" expand="true">
			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse3" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse3" data-target="#collapse3">
			<h6 class="m-0 font-weight-bold text-primary">
				Average and Total
			</h6>
		</a>
		<div class="collapse" id="collapse3" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					var c = CarService.newCriteria();<br>
					...<br>
					c.isTrue( "IsSold" )<br>
					 .withProjections(<br>
						sum="SalePrice",<br>
						avg="SalePrice"<br>
					 )<br>
					 .list();
				</div>
				<cfdump var="#prc.total#" expand="true">
			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse4" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse4" data-target="#collapse4">
			<h6 class="m-0 font-weight-bold text-primary">
				Sales Details
			</h6>
		</a>
		<div class="collapse" id="collapse4" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					var c = CarService.newCriteria();<br>
					...<br>
					c.isTrue( "IsSold" )<br>
					 .withProjections(<br>
						property="Year,Description,SaleDate,AcquisitionDate,SalePrice,ListPrice"<br>
					 )<br>
					 .list()
				</div>
				<cfdump var="#prc.properties#" expand="true">
			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse5" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse5" data-target="#collapse5">
			<h6 class="m-0 font-weight-bold text-primary">
				Sales Details (Readable)
			</h6>
		</a>
		<div class="collapse" id="collapse5" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					var c = CarService.newCriteria();<br>
					...<br>
					c.isTrue( "IsSold" )<br>
					 .withProjections(<br>
						property="Year,Description,SaleDate,AcquisitionDate,SalePrice,ListPrice"<br>
					 )<br>
					 .resultTransformer( c.ALIAS_TO_ENTITY_MAP )<br>
					 .list()
				</div>
				<cfdump var="#prc.transformed#" expand="true">
			</div>
		</div>
	</div>
</div>