<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>ColdBox + ORM: Pink Unicorns Do Exist!</title>

   <!-- Bootstrap core CSS-->
   <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
   <link href="//netdna.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
   <script src="//netdna.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
	<cfoutput>
   <!-- Custom fonts for this template-->
		<link href="#event.getHTMLBaseURL()#/includes/template/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

		<!-- Page level plugin CSS-->
		<link href="#event.getHTMLBaseURL()#includes/template/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

		<!-- Custom styles for this template-->
		<link href="#event.getHTMLBaseURL()#includes/template/css/sb-admin-2.css" rel="stylesheet">
		<link href="#event.getHTMLBaseURL()#includes/template/css/Unicorns.css" rel="stylesheet">
	</cfoutput>
</head>

<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">

	<!-- Sidebar -->
	<nav style="overflow-y: auto;height: 100%;padding-bottom: 49px;">
		<cfoutput>
			<ul class="navbar-nav nav-menu-fixed bg-gradient-coldbox sidebar accordion" id="accordionSidebar" >

		<!-- Divider -->
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
		<!-- Heading -->
		<div class="sidebar-heading">
			Criteria Builder
		</div>

		<!-- Nav Item - Pages Collapse Menu -->

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
		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">

		</ul>
		<!-- End of Sidebar -->
		</cfoutput>
	</nav>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
		<nav class="navbar navbar-expand navbar-light bg-coldbox topbar mb-4 static-top shadow navbar-fixed" >
			<cfoutput><a class="sidebar-brand d-flex align-items-center justify-content-center my-2" href="#event.buildLink( to='' )#">
				<div class="sidebar-brand-text mx-3">
					<img src="#event.getHTMLBaseURL()#includes/images/logo-coldbox.png" style="width:241px;">
				</div>
			</a></cfoutput>
        </nav>
        <!-- End of Topbar -->

        <div class="container-fluid container-fixed" id="containerView">
			<div id="top-container"></div>
         <cfoutput>#renderView()#</cfoutput>


        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-coldbox footer-fixed" >
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Ortus Solutions <cfoutput>#now().year()#</cfoutput></span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded z-index-1001" href="#top-container">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
<cfoutput>
  <!-- Core plugin JavaScript-->
  <script src="#event.getHTMLBaseURL()#includes/template/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="#event.getHTMLBaseURL()#includes/template/js/sb-admin-2.js"></script>
</cfoutput>
  <!-- Page level plugins -->

</body>

</html>
