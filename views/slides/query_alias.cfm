<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#one">
                    Query by Make
                </a>
            </h4>
        </div>
        <div id="one" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var c = CarService.newCriteria();
...
c.createAlias( "Make", "make", c.LEFT_JOIN )
 .isEq( "make.LongName", "Ford" )
 .list()
</pre>
<cfdump var="#prc.make#" expand="true">
            </div>
        </div>
    </div>
</div>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#two">
                    Query by Sales Person
                </a>
            </h4>
        </div>
        <div id="two" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var c = CarService.newCriteria();
...
c.createAlias( "SalesPeople", "staff" )
 .createAlias( "staff.Position", "position" )
 .isEq( "position.LongName", "General Manager" )
 .list();
</pre>
<cfdump var="#prc.salespeople#" expand="true">
            </div>
        </div>
    </div>
</div>