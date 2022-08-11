<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- dashboardall.jsp -->
	<div>대시보드</div>
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">종합대시보드</h1>
	</div>
	
	<div class="row">
		<div class="card shadow mb-4" style="width:525px; margin:0 0px 0 13px;">
        	<div class="card-header py-3" >
        		 <nav class="navbar navbar-expand navbar-light bg-light mb-4" style="margin:0;">
                 	<h6 class="m-0 font-weight-bold text-primary">프로젝트 수행지표</h6>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">연도</a>
                            <div class="dropdown-menu dropdown-menu-right animated--grow-in" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">2022</a>
                                <a class="dropdown-item" href="#">2023</a>
                            </div>
                        </li>
                    </ul>
                </nav>            	
            </div>
            <div class="card-body">
               	<div class="table-responsive">
                   	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                       	<thead>
               	            <tr>
			                	<th>팀</th>
			                    <th>시작전</th>
			                    <th>진행중</th>
			                    <th>완료</th>
			                    <th>홀드</th>
			                    <th>진행중단</th>
		                	</tr>
                        </thead>
                        <tbody>
                                     	
                        </tbody>
                    </table>
                 </div>
            </div>
        </div>
        
        
        <div class="card shadow mb-4" style="width:700px; margin:0 10px 0 20px;">
        	<div class="card-header py-3">
            	<h6 class="m-0 font-weight-bold text-primary">프로젝트 비용지표</h6>
            </div>
            <div class="card-body">
               	<div class="table-responsive">
                   	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                       	<thead>
               	            <tr>
			                	<th>팀</th>
			                    <th>서버유지</th>
			                    <th>개발툴</th>
			                    <th>기타</th>
		                	</tr>
                        </thead>
                        <tbody>
                                     	
                        </tbody>
                    </table>
                 </div>
            </div>
        </div>
        </div>

	 <div class="card shadow mb-4">
        	<div class="card-header py-3">
            	<h6 class="m-0 font-weight-bold text-primary">주요 프로젝트 현황</h6>
            </div>
            <div class="card-body">
               	<div class="table-responsive">
                   	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                       	<thead>
               	            <tr>
			            	<th>프로젝트 명</th>
			            	<th>프로젝트 코드</th>
			            	<th>프로젝트 유형</th>
			                <th>PL</th>
			                <th>팀</th>
			                <th>진행상태</th>
			                <th>시작일</th>
			                <th>완료일</th>
			                <th>산출물</th>
			                <th>이슈</th>
			                <th>상세</th>
		                </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${projectlist}" var="dto">
                        <tr>
                        	<td>${dto.projectname}</td>
                        	<td>${dto.pcode}</td>
                        	<td>${dto.rnd}</td>
                        	<td>${dto.pl}</td>
                        	<td>${dto.team}</td>
                        	<td>${dto.pstate}</td>
                        	<td>${dto.pfinishdate}</td>
                        	<td>${dto.pstartdate}</td>
			                <td>${not empty dto.outputcnt ? dto.outputcnt : "0"}</td>
			                <td>${not empty dto.issuecnt ? dto.issuecnt : "0"}</td>
			                <td>
			                	<a href="/web/project/assignment?projectseq=${dto.projectseq}">
								<i class="fas fa-search fa-sm">
								</a>
							</td>
		     			</tr>      	
                        </c:forEach>          	
                    </tbody>
                </table>
            </div>
        </div>
    </div>

	<div class="row">
	
		<!-- Donut Chart -->
	    <div class="col-xl-4 col-lg-5">
			<div class="card shadow mb-4">
				<!-- Card Header - Dropdown -->
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">이슈현황</h6>
				</div>
	            <!-- Card Body -->
	            <div class="card-body" style="height:456px;">
	              	<div id="chart1"></div>
	            </div>
	        </div>
	    </div>


	    <div class="col-xl-8 col-lg-7">
	       	<!-- Bar Chart -->
	        <div class="card shadow mb-4">
	       		<div class="card-header py-3">
	                 <h6 class="m-0 font-weight-bold text-primary">월별 현황</h6>
	            </div>
	            <div class="card-body">
	            	<figure class="highcharts-figure">
	  					<div id="container"></div>
				   		<table class="table table-bordered"></table>
					</figure>
	            </div>
	        </div>
	    </div>

    </div>       
        
        
        
        
	<script>
	
	Highcharts.chart('chart1', {
	    chart: {
	        plotBackgroundColor: null,
	        plotBorderWidth: null,
	        plotShadow: false,
	        type: 'pie'
	    },
	    title: {text: null},
	    tooltip: {pointFormat: '{series.name}: <b> {point.y}개</b>'},
	    accessibility: {
	        point: {valueSuffix: '개'}
	    },
	    plotOptions: {
	        pie: {
	            allowPointSelect: true,
	            cursor: 'pointer',
	            dataLabels: {enabled: true,format: '<b>{point.y}개'}}
	    	},
	        series: 
	        [{
	           name: '',
	           colorByPoint: true,
	           data: 
	          [<c:forEach items="${donutchart}" var="dto">
              {name: '${dto.state}',y: ${dto.scount}},
	          </c:forEach>]}
	        ]
	});
	
	
	
	Highcharts.chart('container', {
		  chart: {type: 'column'},
		  title: {text: null},
		  xAxis: {
		    categories: [
		    	<c:forEach items="${barchart}" var="dto">
		    	'${dto.pdate}',
		    	</c:forEach>]
		  },
		  yAxis: {min: 0,title: {text: null}},
		  tooltip: {
		    pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>',
		    shared: true
		  },
		  plotOptions: {column: {stacking: '건'}},
		  series: [{
		    name: '시작전',
		    data: [ 
		    	<c:forEach items="${barchart}" var="dto">
		    	${dto.projectstate=="시작전" ? dto.count : 0},
		    	</c:forEach> ]
		  }, {
		    name: '진행중',
		    data: [
		    	<c:forEach items="${barchart}" var="dto">
		    	${dto.projectstate=="진행중" ? dto.count : 0},
		    	</c:forEach>]
		  }, {
		    name: '지연진행',
		    data: [
		    	<c:forEach items="${barchart}" var="dto">
		    	${dto.projectstate=="지연진행" ? dto.count : 0},
		    	</c:forEach>]
		  }, {
			name: '홀드',
			data: [
				<c:forEach items="${barchart}" var="dto">
		    	${dto.projectstate=="홀드" ? dto.count : 0},
		    	</c:forEach>]
	      }, {
			name: '완료',
			data: [
				<c:forEach items="${barchart}" var="dto">
		    	${dto.projectstate=="완료" ? dto.count : 0},
		    	</c:forEach>
			]
		  }, {
			name: '진행중단',
			data: [
				<c:forEach items="${barchart}" var="dto">
		    	${dto.projectstate=="진행중단" ? dto.count : 0},
		    	</c:forEach>]
		  }]
		});
	
	//DashboardDTO(tname=null, projectstate=완료, pdate=2021/01, count=1), 
	//DashboardDTO(tname=null, projectstate=진행중, pdate=2022/02, count=1), 
	//DashboardDTO(tname=null, projectstate=시작전, pdate=2023/03, count=1)]

	
	</script>
	

	
	
	