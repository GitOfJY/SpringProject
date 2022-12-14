<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Sidebar -->
<ul
	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
	id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="/web/dashboardall">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-laugh-wink"></i>
		</div>
		<div class="sidebar-brand-text mx-3">SY SoftWare</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item">
	<a class="nav-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> 
		<i class="fas fa-fw fa-cog"></i><span>대시보드</span>
	</a>
		<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item" href="/web/dashboardall">종합 현황</a> 
				<a class="collapse-item" href="/web/dashboardteam">팀별 현황</a> 
				<a class="collapse-item" href="/web/dashboardeach">개인별 현황</a> 
			</div>
		</div>
	</li>


	<!-- Nav Item - Utilities Collapse Menu -->
	<li class="nav-item">
		<a class="nav-link collapsed" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities"> 
			<i class="fas fa-fw fa-wrench"></i><span>프로젝트</span>
		</a>
		<div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item" href="/web/project/projectcenter">프로젝트 센터</a> 
				<a class="collapse-item" href="/web/project/outputslist">프로젝트 산출물</a>
			</div>
		</div>
	</li>
	
	
	<!-- Nav Item - AdminProject Collapse Menu -->
	<li class="nav-item adminProject">
		<a class="nav-link collapsed adminProject" data-toggle="collapse" data-target="#collapseAdminProject" aria-expanded="true" aria-controls="collapseAdminProject"> 
			<i class="fas fa-fw fa-wrench adminProject"></i><span class="adminProject">프로젝트 관리</span>
		</a>
		<div id="collapseAdminProject" class="collapse" aria-labelledby="headingAdminProject" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item" href="/web/plproject">프로젝트 관리</a> 
				<a class="collapse-item" href="/web/plstage">스테이지/작업 관리</a> 
				<a class="collapse-item" href="/web/plteam">팀원 관리</a>
			</div>
		</div>
	</li>


	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item">
	<a class="nav-link collapsed" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages"> 
		<i class="fas fa-fw fa-folder"></i> <span>내 작업</span>
	</a>
		<div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item" href="/web/emwork">작업 리스트</a> 
				<a class="collapse-item" href="/web/myproject/myoutputlist">산출물관리</a>
				<a class="collapse-item" href="/web/myproject/calendar">일정관리</a> 
				<a class="collapse-item" href="/web/issue/issuelist">이슈관리</a>
			</div>
		</div>
	</li>


	<!-- 관리자 -->
	<li class="nav-item admin">
	<a class="nav-link collapsed admin" data-toggle="collapse" data-target="#collapseAdmin" aria-expanded="true" aria-controls="collapseAdmin"> 
		<i class="fas fa-fw fa-cog admin"></i> <span class="admin">관리자</span>
	</a>
		<div id="collapseAdmin" class="collapse" aria-labelledby="headingOne" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item " href="/web/adminuser">사용자 관리</a>
				<a class="collapse-item " href="/web/adminproject">프로젝트 관리</a>
			</div>
		</div>
	</li>


	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>

</ul>
<!-- End of Sidebar -->

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

	<!-- Main Content -->
	<div id="content">

		<!-- Topbar -->
		<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

			<!-- Sidebar Toggle (Topbar) -->
			<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
				<i class="fa fa-bars"></i>
			</button>

			<!-- Topbar Search -->
			<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
				<div class="input-group">
					<input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
					<div class="input-group-append">
						<button class="btn btn-primary" type="button">
							<i class="fas fa-search fa-sm"></i>
						</button>
					</div>
				</div>
			</form>

			<!-- Topbar Navbar -->
			<ul class="navbar-nav ml-auto">

				<div class="topbar-divider d-none d-sm-block"></div>

				<!-- Nav Item - User Information -->
				<li class="nav-item dropdown no-arrow">
					<a class="nav-link dropdown-toggle" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
						<div style="margin: 15px 25px 15px 0px; padding: 10px;">${sessionScope.result.ename}</div>
						<img class="img-profile rounded-circle" src="/web/resources/img/undraw_profile.svg">
					</a> 
					
					<!-- Dropdown - User Information -->
					<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
						<a class="dropdown-item" href="/web/mypage"> 
							<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
						</a> 
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/web/logout"> 
							<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i> Logout
						</a>
					</div>
				</li>

			</ul>

		</nav>
		<!-- End of Topbar -->