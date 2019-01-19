<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#one">
                    Inject Virtual Entity Service
                </a>
            </h4>
        </div>
        <div id="one" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
property name="virtualCarService" inject="entityService:SimpleCar";
...
</pre>
            </div>
        </div>
    </div>
</div>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#two">
                    Create a Car
                </a>
            </h4>
        </div>
        <div id="two" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var newCar = virtualCarService.new( properties={Year: 2012, ListPrice: 22000});
</pre>
<cfdump var="#prc.newcar#" expand="true">
            </div>
        </div>
    </div>
</div>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#three">
                    Find a Specific Car
                </a>
            </h4>
        </div>
        <div id="three" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var foundCar = virtualCarService.findWhere( criteria={ CarID = 12 } );
</pre>
<cfdump var="#prc.mycar#" expand="true">
            </div>
        </div>
    </div>
</div>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#four">
                    List Cars
                </a>
            </h4>
        </div>
        <div id="four" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var carList = virtualCarService.list( max=3, asQuery=false );
</pre>
<cfdump var="#prc.cars#" expand="true">
            </div>
        </div>
    </div>
</div>