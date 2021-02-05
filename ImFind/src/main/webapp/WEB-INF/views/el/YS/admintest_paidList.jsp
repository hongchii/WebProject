<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<style type="text/css">
.layout-boxed .wrapper, .layout-boxed .wrapper::before {
	margin: 0 auto;
	max-width: 1850px !important; /*1250px*/
}
#fh5co-logo {
    font-size: 31px;
    margin-left: 20px;
    margin-top: 10px;
    padding: 0;
    text-transform: uppercase;
    font-weight: 700;
    font-family: 'Noto Sans KR', sans-serif;
    display: block;
}
</style>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 3 | Boxed Layout</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 참고
 -->
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/el/css/bootstrap.min.css" type="text/css"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/el/css/YS_css/newstyle.css" type="text/css"> --%>
<!--    참고 -->
<!-- Font Awesome :필요-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/el/Admin_plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/el/Admin_plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/el/Admin_plugins/datatables-responsive/css/responsive.bootstrap4.min.css">

<!-- Theme style :중요-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/el/Admin_dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<script type="text/javascript">
	
</script>
</head>
<body class="hold-transition sidebar-mini layout-boxed">
	<!-- Site wrapper -->
	<div class="wrapper">
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<div id="fh5co-logo"><a href="./home.do">ImFind<span>.</span></a></div>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img
							src="${pageContext.request.contextPath}/resources/el/Admin_dist/img/user1.png"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">Admin</a>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<li class="nav-header">관리자 메뉴</li>

						<li class="nav-item has-treeview"><a href="./admintest"
							class="nav-link"> <i class="nav-icon fas fa-tree"></i>
								<p>회원관리</p>
						</a></li>
						<li class="nav-item has-treeview"><a
							href="./admintest_payList" class="nav-link"> <i
								class="nav-icon fas fa-table"></i>
								<p>
									결제관리 <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./admintest_payList"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>결제상태 리스트</p>
								</a></li>
								<li class="nav-item"><a href="./admintest_paidList"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>결제완료 리스트</p>
								</a></li>
								<li class="nav-item"><a href="./admintest_refundList"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>환불거래 리스트</p>
								</a></li>
								<li class="nav-item"><a href="./admintest_cancelList"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>환불완료 리스트</p>
								</a></li>
							</ul></li>
						<!-- 정산 사이드 메뉴 추가  -->
						<li class="nav-item has-treeview"><a
							href="./admintest_payList" class="nav-link"> <i
								class="nav-icon fas fa-table"></i>
								<p>
									정산관리 <i class="fas fa-angle-left right"></i>
								</p>
						</a>
						<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./admintest_adjustmentList2"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>미정산 리스트</p>
								</a></li>
								<li class="nav-item"><a href="./admintest_adjustmentList"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>정산완료 리스트</p>
								</a></li>
							</ul></li>
						<!-- 정산 사이트 메뉴 마암 -->
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>관리자페이지</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">관리자페이지</a></li>
								<li class="breadcrumb-item"><a href="#">결제관리</a></li>
								<li class="breadcrumb-item active">결제완료리스트</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<!-- Default box -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">결제 완료 조회</h3>
								</div>
								<div class="card-tools">

									<!-- /.card-header -->
									<div class="card-body">
										<table id="output" class="table table-bordered table-hover">
											<!-- <table id="output" class="table table-bordered table-hover"> -->
											<thead>
												<tr>
													<th>id</th>
													<th>payCode</th>
													<th>pay_Amount</th>
													<th>pay_State</th>
													<th>pay_Date</th>
												</tr>
											</thead>
											<tbody></tbody>
											<!-- <tbody></tbody>                  
                  <tbody id="output"> 
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>contact</th>
                    <th>email</th>
                    <th>account_Num</th>
                    <th>bank</th>
                    <th>account_holder</th>
                    <th>join_date</th>
                  </tr>
                  </tfoot> -->
										</table>


									</div>
									<!-- /.card-body -->
								</div>
								<!-- /.card -->
								<!-- </div> -->





								<!-- 붙일 테이블 가져옴 끝. -->

								<!-- Site wrapper -->
								<!--   </div> -->
								<!-- /.card-body -->
								
								<!-- /.card-footer-->
							</div>
							<!-- /.card -->
						</div>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
	</div>

	
	<!-- /.control-sidebar -->
	<!--  </div> -->
	<!-- ./wrapper -->




	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/el/Admin_plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath}/resources/el/Admin_plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- DataTables -->
	<script
		src="${pageContext.request.contextPath}/resources/el/Admin_plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/el/Admin_plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/el/Admin_plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/el/Admin_plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/resources/el/Admin_dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script
		src="${pageContext.request.contextPath}/resources/el/Admin_dist/js/demo.js"></script>

	<script>
		$(function() {
			$('#output').empty();
			payList();
			
		});

		function payList() {
			$('#output').empty();

			var form = '<thead><tr><th>회원ID</th><th>주문번호</th><th>결제금액</th><th>결제상태</th><th>결제승인시각</th></tr></thead><tbody>';
			$('#output').append(form);

			$("#output").DataTable({
				paging : true,
				"pageLength" : 10,
				pagingType : "simple_numbers",
				"search": {
				    "caseInsensitive": false
				  },

				"ajax" : {
					"url" : "/imfind/adminpaid2",
					"type" : "POST",
					"dataSrc" : function(res) {
						
						var data = res.data;
						return data;
					}
				},
				"columns" : [ {
					"data" : "id"
				}, {
					"data" : "payCode"
				}, {
					"data" : "pay_Amount"
				}, {
					"data" : "pay_State"
				}, {
					"data" : "pay_Date"
				},

				]

			});

		};

	</script>
</body>
</html>

