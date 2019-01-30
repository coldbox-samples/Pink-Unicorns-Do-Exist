<!doctype html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>ColdBox + ORM: Pink Unicorns Do Exist!</title>
        <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
        <style type="text/css">
            body {
                font: 10pt verdana;
                font-family: verdana;
                padding: 0;
                margin: 0;
            }
            a {
                color: #0087dd;
                background-color: inherit;
                text-decoration: none;
            }
            a:hover {
                color: #CC0001;
                background-color: inherit;
                border-bottom:1px dotted #009CFF;
            }
            a.selected{
                color: #CC0001;
                background-color: inherit;
                border-bottom:1px dotted #009CFF;
            }
            #infobox{
                border:1px solid #CCCCCC;
                padding:10px;
                background-color:#fffff0;
                margin: 20px auto 10px auto;
                width: 95%;
             }
             td {
                 padding: 10px;
                 margin: 0;
             }
             h2 {
                 background-color: black;
                 margin: 0px;
                 color: #FFFFFF;
                 padding: 20px;
             }
             #sidebar {
                 border-left: 1px solid #DDDDDD;
                 width:250px;
             }
             #sidebar ul {
                 margin-left: 0;
                 padding-left: 0;
             }
             #sidebar ul h3 {
                 margin-top: 25px;
                 font-size: 16px;
                 padding-bottom: 10px;
                 border-bottom: 1px solid #ccc;
             }
             #sidebar li {
                 list-style-type: none;
             }
             #sidebar ul.links li {
                 margin-bottom: 5px;
             }
             img.middle{
                vertical-align: middle;
             }
             h4 {font-weight:bold;}
             table.cfdump_cfc, table.cfdump_array, table.cfdump_struct, pre{ font-size:16px !important;}
        </style>
    </head>
    <body>
        <cfoutput><h2 class="header">ColdBox + ORM: #event.getPrivateValue( 'pageTitle', "Listing" )#</h2></cfoutput>
        <div class="container-fluid">
            <div class="row hero" style="padding-top:40px;">
                <div class="col-md-9">
                    <!--- Render The View. This is set wherever you want to render the view in your Layout. --->
                    <cfoutput>#renderView()#</cfoutput>
                </div>
                <cfoutput>
                    <div class="col-md-3">

                    	<p class="text-center">
                    		<img src="https://www.ortussolutions.com/__media/coldbox-185-logo.png">
                    	</p>

                    	<br>

                        <ul class="list-group">
                            <li class="list-group-item"><a href="#event.buildLink( to='slides/baseormservice' )#">Base ORM Service</a></li>
                            <li class="list-group-item"><a href="#event.buildLink( to='slides/activeentity' )#">Active Entity</a></li>
                            <li class="list-group-item"><a href="#event.buildLink( to='slides/virtualentityservice' )#">Virtual Entity Service</a></li>
                            <li class="list-group-item"><a href="#event.buildLink( to='slides/concreteservice' )#">Concrete Service</a></li>
                            <li class="list-group-item"><a href="#event.buildLink( to='slides/populate' )#">Populate()</a></li>
                            <li class="list-group-item"><a href="#event.buildLink( to='slides/validation' )#">Validation</a></li>
                            <li class="list-group-item">
                            	<h3>Criteria Builder</h3>
                                <ul>
                                    <li class="list-group-item"><a href="#event.buildLink( to='slides/query_simple' )#">Simple Query</a></li>
                                    <li class="list-group-item"><a href="#event.buildLink( to='slides/query_projection' )#">Projection</a></li>
                                    <li class="list-group-item"><a href="#event.buildLink( to='slides/query_alias' )#">Aliases</a></li>
                                    <li class="list-group-item"><a href="#event.buildLink( to='slides/query_subquery' )#">Subquery</a></li>
                                    <li class="list-group-item"><a href="#event.buildLink( to='slides/query_logging' )#">SQL Logging</a></li>
                                </ul>
                            </li>
                        </ul>

                    </div>
                </cfoutput>
            </div>
        </div>
    </body>
</html>