<cfparam name="prc.pageTitle" default="">
<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="ColdBox cborm module">
	<meta name="author" content="Ortus Solutions, Corp">
	<title>cborm #prc.pageTitle# - Pink Unicorns Do Exist!</title>

	<!--- Base URL --->
	<base href="#event.getHTMLBaseURL()#">

	<!-- Bootstrap + Fontawesome-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

	<!-- Custom styles for this template-->
	<link href="/includes/css/sb-admin-2.min.css" rel="stylesheet">
	<link href="/includes/css/Unicorns.css" rel="stylesheet">
</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<nav style="overflow-y: auto;height: 100%;padding-bottom: 49px;">
			<ul class="navbar-nav nav-menu-fixed bg-gradient-coldbox sidebar accordion" id="accordionSidebar" >
				<li class="nav-item #event.getCurrentAction()==  'baseormservice' ?'active':''#  ">
					<a class="nav-link" href="#event.buildLink( to='slides/baseormservice' )#">
						<span>Base ORM Service</span>
					</a>
				</li>
				<li class="nav-item #event.getCurrentAction()==  'activeentity' ?'active':''# ">
					<a class="nav-link" href="#event.buildLink( to='slides/activeentity' )#">
						<span>Active Entity</span>
					</a>
				</li>
				<li class="nav-item #event.getCurrentAction()==  'virtualentityservice' ?'active':''# ">
					<a class="nav-link" href="#event.buildLink( to='slides/virtualentityservice' )#">
						<span>Virtual Entity Service</span>
					</a>
				</li>
				<li class="nav-item #event.getCurrentAction()==  'concreteservice' ?'active':''# ">
					<a class="nav-link" href="#event.buildLink( to='slides/concreteservice' )#">
						<span>Concrete Service</span>
					</a>
				</li>
				<li class="nav-item #event.getCurrentAction()==  'populate' ?'active':''# ">
					<a class="nav-link" href="#event.buildLink( to='slides/populate' )#">
						<span>Populate()</span>
					</a>
				</li>
				<li class="nav-item #event.getCurrentAction()==  'validation' ?'active':''# ">
					<a class="nav-link" href="#event.buildLink( to='slides/validation' )#">
						<span>Validation</span>
					</a>
				</li>

				<hr class="sidebar-divider">

				<!-- Dashboards Accordion Menu -->
				<div class="sidebar-heading">
					Criteria Builder
				</div>

				<li class="nav-item #event.getCurrentAction()==  'query_simple' ?'active':''# ">
					<a class="nav-link " href="#event.buildLink( to='slides/query_simple' )#">
						<span>Simple Query</span>
					</a>
				</li>

				<li class="nav-item #event.getCurrentAction()==  'query_projection' ?'active':''# ">
					<a class="nav-link" href="#event.buildLink( to='slides/query_projection' )#">
						<span>Projection</span>
					</a>
				</li>
				<li class="nav-item #event.getCurrentAction()==  'query_alias' ?'active':''# ">
					<a class="nav-link" href="#event.buildLink( to='slides/query_alias' )#">
						<span>Aliases</span>
					</a>
				</li>
				<li class="nav-item #event.getCurrentAction()==  'query_subquery' ?'active':''# ">
					<a class="nav-link" href="#event.buildLink( to='slides/query_subquery' )#">
						<span>Subquery</span>
					</a>
				</li>
				<li class="nav-item #event.getCurrentAction()==  'query_logging' ?'active':''# ">
					<a class="nav-link" href="#event.buildLink( to='slides/query_logging' )#">
						<span>SQL Logging</span>
					</a>
				</li>

				<!-- Divider -->
				<hr class="sidebar-divider d-none d-md-block">
			</ul>
			<!-- End of Sidebar -->
		</nav>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav class="navbar navbar-expand navbar-light bg-coldbox topbar mb-4 static-top shadow navbar-fixed" >
					<a class="sidebar-brand d-flex align-items-center justify-content-center my-2" href="#event.buildLink( to='' )#">
						<div class="sidebar-brand-text mx-3">
							<img src="/includes/images/logo-coldbox.png" style="width:241px;">
						</div>
					</a>
				</nav>
				<!-- End of Topbar -->

				<div class="container-fluid container-fixed" id="containerView">
					<div id="top-container"></div>
					#renderView()#
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-coldbox footer-fixed" >
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Ortus Solutions #now().year()#</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded z-index-1001" href="##top-container">
		<i class="fas fa-angle-up"></i>
	</a>

	<!--- Custom scripts for all pages --->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="/includes/js/sb-admin-2.min.js"></script>

</body>

</html>
</cfoutput>