<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.tap {
	border: 1px solid #E0E0E0;
	margin-left: auto;
	margin-right: auto;
	table-layout: fixed;
}

.multi-portlet {
	background: #ffffff;
	padding: 20px;
	margin-bottom: 15px;
	margin-left: 20px;
	margin-right: 20px;
	min-height: 570px;
	text-decoration-line: none;
	text-color: #EDF6F9;
}

.tap th {
	border: 1px solid #E0E0E0;
	text-align: center;
	background-color: #fff;
	height: 50px;
}

.col {text-align = center;
	
}

hr {
	margin-top: 25px;
}

.list {
	padding-top: 20px;
	padding-bottom: 20px;
	margin-bottom: 10px;
	border-radius: 8px;
	margin-right: 0px;
	margin-left: 0px;
}
</style>
<div class="multi-portlet">
	<div class="container-fluid">
		<!-- 표 헤더 -->
		<div class="card shadow mb-4">
			<div class="card-body">
				<div class="list">
					<table class="tap">
						<colgroup>
							<col style="width: 200px" />
							<col style="width: 200px" />
							<col style="width: 200px" />
							<col style="width: 200px" />
							<col style="width: 200px" />
							<col style="width: 200px" />
							<col style="width: 200px" />
						</colgroup>
						<c:forEach items="${team}" var="dto" end="0">
							<tr>
								<th scope="col">
									<div>
										<a href="/web/project/centerinfo?projectseq=${dto.projectseq}">
											<span>기본정보</span>
										</a>
									</div>
								</th>

								<th scope="col">
									<div>
										<a href="#!">
											<span>팀원</span>
										</a>
									</div>
								</th>

								<th scope="col">
									<div>
										<a href="/web/project/centerwbs?projectseq=${dto.projectseq}">
											<span>WBS</span>
										</a>
									</div>
								</th>

								<th scope="col">
									<div>
										<a href="/web/project/assignment?projectseq=${dto.projectseq}">
											<span>배정현황</span>
										</a>
									</div>
								</th>

								<th scope="col">
									<div>
										<a href="/web/project/issue?projectseq=${dto.projectseq}">
											<span>이슈</span>
										</a>
									</div>
								</th>

								<th scope="col">
									<div>
										<a href="/web/project/outputlist?projectseq=${dto.projectseq}">
											<span>산출물</span>
										</a>
									</div>
								</th>

								<th scope="col">
									<div>
										<a href="/web/project/costlist?projectseq=${dto.projectseq}">
											<span>비용</span>
										</a>
									</div>
								</th>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="kt-portlet__head-label" style="margin-left: 30px;">
					<h4 class="kt-portlet__head-title">프로젝트 팀원</h4>
				</div>
				<hr>
				<div class="table-responsive">
				<table class="table table-bordered table-hover" >
						<thead class="text-center">
							<tr>
								<th>이름</th>
								<th>부서</th>
								<th>직급</th>
								<th>이메일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${team}" var="dto">
								<tr style="text-align: center;">
									<td>${dto.ename}</td>
									<td>${dto.tname}</td>
									<td>${dto.position}</td>
									<td>${dto.email}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>