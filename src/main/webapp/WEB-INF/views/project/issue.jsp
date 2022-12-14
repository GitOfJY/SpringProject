<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

						<tr>
							<th scope="col">
								<div>
									<a href="/web/project/centerinfo?projectseq=${seq.projectseq}">
										<span>기본정보</span>
									</a>
								</div>
							</th>

							<th scope="col">
								<div>
									<a href="/web/project/centerteam?projectseq=${seq.projectseq}">
										<span>팀원</span>
									</a>
								</div>
							</th>

							<th scope="col">
								<div>
									<a href="/web/project/centerwbs?projectseq=${seq.projectseq}">
										<span>WBS</span>
									</a>
								</div>
							</th>

							<th scope="col">
								<div>
									<a href="/web/project/assignment?projectseq=${seq.projectseq}">
										<span>배정현황</span>
									</a>
								</div>
							</th>

							<th scope="col">
								<div>
									<a href="#!">
										<span>이슈</span>
									</a>
								</div>
							</th>

							<th scope="col">
								<div>
									<a href="/web/project/outputlist?projectseq=${seq.projectseq}">
										<span>산출물</span>
									</a>
								</div>
							</th>

							<th scope="col">
								<div>
									<a href="/web/project/costlist?projectseq=${seq.projectseq}">
										<span>비용</span>
									</a>
								</div>
							</th>
						</tr>
					</table>
				</div>

				<!-- 검색 -->
				<div class="d-sm-flex align-items-center justify-content-between mb-4">
					<form id="issueForm" class="form-inline">
						<div class="form-group">
							<b style="margin-right: 3px">긴급여부</b>
							<select id="imergency" name="imergency" style="margin-right: 8px">
								<option value="">전체</option>
								<option value="y">긴급</option>
								<option value="n">일반</option>
							</select>
						</div>
						<div class="form-group">
							<input id="title" name="title" type="text" class="form-control bg-light border-0 small" placeholder="이슈제목으로 검색..." aria-label="Search" aria-describedby="basic-addon2">
						</div>
						<div class="form-group">
							<button id="search" class="btn btn-primary">
								<i class="fas fa-search fa-sm"></i>
							</button>
						</div>
						<input type="hidden" name="projectseq" value="${seq.projectseq}" />
					</form>

					<a href="/web/issue/issueadd" class="btn btn-primary btn-icon-split">
						<span class="icon text-white-50"> <i class="fa fa-plus" aria-hidden="true"></i>
						</span> <span class="text">이슈 등록</span>
					</a>
				</div>
				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<thead class="text-center">
							<tr>
								<!-- 헤더 -->
								<th>긴급여부</th>
								<th>이슈제목</th>
								<th>프로젝트 명</th>
								<th>구분</th>
								<th>등록일자</th>
								<th>조치희망일</th>
								<th>조치완료일</th>
							</tr>
						</thead>
						<c:if test="${fn:length(issue) == 0}">
							<tbody>
								<tr>
									<td colspan="8" style="text-align: center;">검색된 내용이 없습니다.</td>
								</tr>
							</tbody>
						</c:if>
						<c:if test="${fn:length(issue) > 0}">
							<c:forEach items="${issue}" var="list">
								<tbody>
									<tr>
										<c:if test="${list.imergency == 'y'}">
											<td style="text-align: center; color: red;">
												<i class="fa fa-exclamation"></i>
											</td>
										</c:if>
										<c:if test="${list.imergency == 'n'}">
											<td></td>
										</c:if>
										<td>
											<a href="/web/issue/issueedit?issueseq=${list.issueseq}">${list.title}</a>
										</td>
										<td>${list.projectname}</td>
										<td>${list.itype}</td>
										<td>${list.regdate}</td>
										<td>${list.hopedate}</td>
										<td>${list.managedate}</td>
									</tr>
								</tbody>
							</c:forEach>
						</c:if>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	$(document).ready(function() {

		var form = document.getElementById("issueForm");

		$("#search").click(function() {
			form.action = "/web/project/issuesearch";
			form.method = "GET";
			form.submit();
		});

	});
</script>