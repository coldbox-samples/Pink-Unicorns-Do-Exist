<h3>Validate Some Stuff!</h3>
<pre>
this.constraints = {
    "Year" = { 
        required=true, 
        requiredMessage="Please enter a Year" 
    },
    "ListPrice" = { 
        required=true, 
        requiredMessage="Please enter a List Price", min=4000 
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
        unique=true, 
        uniqueMessage="Please enter a unique VIN"
    },
    "IsSold" = { 
        required=true, 
        requiredMessage="Specify whether this vehicle is sold or not", 
        type="boolean", 
        typeMessage="Please specify Yes or No for whether this vehicle is sold"
    }
};
...
var myCar = CarService.new();
...
var results = validateModel( myCar );
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
<cfdump var="#prc.validationResults#" expand="true">