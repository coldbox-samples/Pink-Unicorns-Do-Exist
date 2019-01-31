<div class="accordion" id="accordion">
	<div class="card border-0 shadow mb-4">
		<a href="#collapse1" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse1" data-target="#collapse1">
			<h6 class="m-0 font-weight-bold text-primary">
				Simple Query SQL
			</h6>
		</a>
		<div class="collapse" id="collapse1" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					select<br>
						&nbsp this_.CarID as CarID2937_0_,<br>
						&nbsp this_.CreatedDate as Created17_2937_0_,<br>
						&nbsp this_.Description as Descript2_2937_0_,<br>
						&nbsp this_.`Year` as Year3_2937_0_,<br>
						&nbsp this_.ListPrice as ListPrice2937_0_,<br>
						&nbsp this_.SalePrice as SalePrice2937_0_,<br>
						&nbsp this_.AcquisitionDate as Acquisit6_2937_0_,<br>
						&nbsp this_.SaleDate as SaleDate2937_0_,<br>
						&nbsp this_.StockNumber as StockNum8_2937_0_,<br>
						&nbsp this_.Rating as Rating2937_0_,<br>
						&nbsp this_.VIN as VIN2937_0_,<br>
						&nbsp this_.Fuel as Fuel2937_0_,<br>
						&nbsp this_.Engine as Engine2937_0_,<br>
						&nbsp this_.Transmission as Transmi13_2937_0_,<br>
						&nbsp this_.Mileage as Mileage2937_0_,<br>
						&nbsp this_.IsSold as IsSold2937_0_,<br>
						&nbsp this_.Active as Active2937_0_,<br>
						&nbsp this_.MakeID as MakeID2937_0_,<br>
						&nbsp this_.ModelID as ModelID2937_0_,<br>
						&nbsp this_.CategoryID as CategoryID2937_0_,<br>
						&nbsp this_.ColorID as ColorID2937_0_<br>
					from<br>
						&nbsp Car this_<br>
					where<br>
						&nbsp this_.SaleDate between ? and ?
				</div>
			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse2" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse2" data-target="#collapse2">
			<h6 class="m-0 font-weight-bold text-primary">
				Projection SQL
			</h6>
		</a>
		<div class="collapse" id="collapse2" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					select<br>
						&nbsp avg(this_.SalePrice) as y0_<br>
					from<br>
						&nbsp Car this_<br>
					where<br>
						&nbsp this_.IsSold=?<br>
					<br>
					...<br>
					<br>
					select<br>
						&nbsp sum(this_.SalePrice) as y0_<br>
					from<br>
						&nbsp Car this_<br>
					where<br>
						&nbsp this_.IsSold=?<br>
					<br>
					...<br>
					<br>
					select<br>
						&nbsp this_.`Year` as y0_,<br>
						&nbsp this_.Description as y1_,<br>
						&nbsp this_.SaleDate as y2_,<br>
						&nbsp this_.AcquisitionDate as y3_,<br>
						&nbsp this_.SalePrice as y4_,<br>
						&nbsp this_.ListPrice as y5_<br>
					from<br>
						&nbsp Car this_<br>
					where<br>
						&nbsp this_.IsSold=?<br>
					<br>
					...<br>
					<br>
					select<br>
						&nbsp this_.`Year` as y0_,<br>
						&nbsp this_.Description as y1_,<br>
						&nbsp this_.SaleDate as y2_,<br>
						&nbsp this_.AcquisitionDate as y3_,<br>
						&nbsp this_.SalePrice as y4_,<br>
						&nbsp this_.ListPrice as y5_<br>
					from<br>
						&nbsp Car this_<br>
					where<br>
						&nbsp this_.IsSold=?
				</div>

			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse3" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse3" data-target="#collapse3">
			<h6 class="m-0 font-weight-bold text-primary">
				Alias SQL
			</h6>
		</a>
		<div class="collapse" id="collapse3" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					select<br>
						&nbsp this_.CarID as CarID2937_2_,<br>
						&nbsp this_.CreatedDate as Created17_2937_2_,<br>
						&nbsp this_.Description as Descript2_2937_2_,<br>
						&nbsp this_.`Year` as Year3_2937_2_,<br>
						&nbsp this_.ListPrice as ListPrice2937_2_,<br>
						&nbsp this_.SalePrice as SalePrice2937_2_,<br>
						&nbsp this_.AcquisitionDate as Acquisit6_2937_2_,<br>
						&nbsp this_.SaleDate as SaleDate2937_2_,<br>
						&nbsp this_.StockNumber as StockNum8_2937_2_,<br>
						&nbsp this_.Rating as Rating2937_2_,<br>
						&nbsp this_.VIN as VIN2937_2_,<br>
						&nbsp this_.Fuel as Fuel2937_2_,<br>
						&nbsp this_.Engine as Engine2937_2_,<br>
						&nbsp this_.Transmission as Transmi13_2937_2_,<br>
						&nbsp this_.Mileage as Mileage2937_2_,<br>
						&nbsp this_.IsSold as IsSold2937_2_,<br>
						&nbsp this_.Active as Active2937_2_,<br>
						&nbsp this_.MakeID as MakeID2937_2_,<br>
						&nbsp this_.ModelID as ModelID2937_2_,<br>
						&nbsp this_.CategoryID as CategoryID2937_2_,<br>
						&nbsp this_.ColorID as ColorID2937_2_,<br>
						&nbsp salespeopl4_.CarID as CarID2937_,<br>
						&nbsp staff1_.StaffID as StaffID,<br>
						&nbsp staff1_.StaffID as StaffID2944_0_,<br>
						&nbsp staff1_.CreatedDate as CreatedD2_2944_0_,<br>
						&nbsp staff1_.FirstName as FirstName2944_0_,<br>
						&nbsp staff1_.LastName as LastName2944_0_,<br>
						&nbsp staff1_.Username as Username2944_0_,<br>
						&nbsp staff1_.Password as Password2944_0_,<br>
						&nbsp staff1_.DOB as DOB2944_0_,<br>
						&nbsp staff1_.Address1 as Address8_2944_0_,<br>
						&nbsp staff1_.Address2 as Address9_2944_0_,<br>
						&nbsp staff1_.City as City2944_0_,<br>
						&nbsp staff1_.`State` as State11_2944_0_,<br>
						&nbsp staff1_.PostalCode as PostalCode2944_0_,<br>
						&nbsp staff1_.Phone as Phone2944_0_,<br>
						&nbsp staff1_.HireDate as HireDate2944_0_,<br>
						&nbsp staff1_.Active as Active2944_0_,<br>
						&nbsp staff1_.PositionID as PositionID2944_0_,<br>
						&nbsp (SELECT<br>
						&nbsp 	&nbsp p.LongName<br>
						&nbsp FROM<br>
						&nbsp 	&nbsp Position p<br>
						&nbsp WHERE<br>
						&nbsp 	&nbsp p.PositionID = staff1_.PositionID) as formula735_0_,<br>
						&nbsp position2_.PositionID as PositionID2946_1_,<br>
						&nbsp position2_.CreatedDate as CreatedD2_2946_1_,<br>
						&nbsp position2_.LongName as LongName2946_1_,<br>
						&nbsp position2_.ShortName as ShortName2946_1_,<br>
						&nbsp position2_.Active as Active2946_1_<br>
					from<br>
						&nbsp Car this_<br>
					inner join<br>
						&nbsp CarStaff salespeopl4_<br>
						&nbsp 	&nbsp on this_.CarID=salespeopl4_.CarID<br>
					inner join<br>
						&nbsp Staff staff1_<br>
						&nbsp 	&nbsp on salespeopl4_.StaffID=staff1_.StaffID<br>
					inner join<br>
						&nbsp Position position2_<br>
						&nbsp 	&nbsp on staff1_.PositionID=position2_.PositionID<br>
					where<br>
						&nbsp position2_.LongName=?
				</div>

			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse4" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse4" data-target="#collapse4">
			<h6 class="m-0 font-weight-bold text-primary">
				Subquery SQL
			</h6>
		</a>
		<div class="collapse" id="collapse4" data-parent="#accordion">
			<div class="card-body">
				<div class="div-pre col-12">
					select<br>
						&nbsp this_.CarID as CarID2937_0_,<br>
						&nbsp this_.CreatedDate as Created17_2937_0_,<br>
						&nbsp this_.Description as Descript2_2937_0_,<br>
						&nbsp this_.`Year` as Year3_2937_0_,<br>
						&nbsp this_.ListPrice as ListPrice2937_0_,<br>
						&nbsp this_.SalePrice as SalePrice2937_0_,<br>
						&nbsp this_.AcquisitionDate as Acquisit6_2937_0_,<br>
						&nbsp this_.SaleDate as SaleDate2937_0_,<br>
						&nbsp this_.StockNumber as StockNum8_2937_0_,<br>
						&nbsp this_.Rating as Rating2937_0_,<br>
						&nbsp this_.VIN as VIN2937_0_,<br>
						&nbsp this_.Fuel as Fuel2937_0_,<br>
						&nbsp this_.Engine as Engine2937_0_,<br>
						&nbsp this_.Transmission as Transmi13_2937_0_,<br>
						&nbsp this_.Mileage as Mileage2937_0_,<br>
						&nbsp this_.IsSold as IsSold2937_0_,<br>
						&nbsp this_.Active as Active2937_0_,<br>
						&nbsp this_.MakeID as MakeID2937_0_,<br>
						&nbsp this_.ModelID as ModelID2937_0_,<br>
						&nbsp this_.CategoryID as CategoryID2937_0_,<br>
						&nbsp this_.ColorID as ColorID2937_0_<br>
					from<br>
						&nbsp Car this_<br>
					where<br>
						&nbsp this_.CarID in (<br>
						&nbsp 	&nbsp select<br>
						&nbsp 	&nbsp 	carstaff_.CarID as y0_<br>
						&nbsp 	&nbsp from<br>
						&nbsp 	&nbsp 	Car carstaff_<br>
						&nbsp 	&nbsp inner join<br>
						&nbsp 	&nbsp 	CarStaff salespeopl4_<br>
						&nbsp 	&nbsp 		on carstaff_.CarID=salespeopl4_.CarID<br>
						&nbsp 	&nbsp inner join<br>
						&nbsp 	&nbsp 	Staff staff1_<br>
						&nbsp 	&nbsp 		on salespeopl4_.StaffID=staff1_.StaffID<br>
						&nbsp 	&nbsp inner join<br>
						&nbsp 	&nbsp 	Position position2_<br>
						&nbsp 	&nbsp 		on staff1_.PositionID=position2_.PositionID<br>
						&nbsp 	&nbsp where<br>
						&nbsp 	&nbsp 	position2_.LongName=?<br>
						&nbsp )
				</div>

			</div>
		</div>
	</div>
</div>