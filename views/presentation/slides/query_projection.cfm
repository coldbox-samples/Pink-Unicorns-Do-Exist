<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#one">
                    Average Sale Price
                </a>
            </h4>
        </div>
        <div id="one" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var c = CarService.newCriteria();
...
c.isTrue( "IsSold" ).withProjections( avg="SalePrice" ).list();
</pre>
<cfdump var="#prc.avg#" expand="true">
            </div>
        </div>
    </div>
</div>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#two">
                    Total Sales
                </a>
            </h4>
        </div>
        <div id="two" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var c = CarService.newCriteria();
...
c.isTrue( "IsSold" ).withProjections( sum="SalePrice" ).list();
</pre>
<cfdump var="#prc.sum#" expand="true">
            </div>
        </div>
    </div>
</div>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#three">
                    Average and Total
                </a>
            </h4>
        </div>
        <div id="three" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var c = CarService.newCriteria();
...
c.isTrue( "IsSold" )
 .withProjections( 
    sum="SalePrice",
    avg="SalePrice" 
 )
 .list();
</pre>
<cfdump var="#prc.total#" expand="true">
            </div>
        </div>
    </div>
</div>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#four">
                    Sales Details
                </a>
            </h4>
        </div>
        <div id="four" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var c = CarService.newCriteria();
...
c.isTrue( "IsSold" )
 .withProjections( 
    property="Year,Description,SaleDate,AcquisitionDate,SalePrice,ListPrice"
 )
 .list()
</pre>
<cfdump var="#prc.properties#" expand="true">
            </div>
        </div>
    </div>
</div>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#five">
                    Sales Details (Readable)
                </a>
            </h4>
        </div>
        <div id="five" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var c = CarService.newCriteria();
...
c.isTrue( "IsSold" )
 .withProjections( 
    property="Year,Description,SaleDate,AcquisitionDate,SalePrice,ListPrice"
 )
 .resultTransformer( c.ALIAS_TO_ENTITY_MAP )
 .list()
</pre>
<cfdump var="#prc.transformed#" expand="true">
            </div>
        </div>
    </div>
</div>