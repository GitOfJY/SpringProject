<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
									<a href="#!">
										<span>기본정보</span>
									</a>
								</div>
							</th>

							<th scope="col">
								<div>
									<a href="/web/project/centerteam?projectseq=${dto.projectseq}">
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
					</table>
				</div>
				<div class="kt-portlet__head-label" style="margin-left: 30px;">
					<h4 class="kt-portlet__head-title">프로젝트 등록정보</h4>
				</div>

				<hr>

				<div style="margin-left: 30px; margin-right: 30px;">
					<div class="form-group row">
						<div class="col-lg-6">
							<label>프로젝트 명</label>
							<div class="form-control form-control-view" style="background-color: #F3F6F9;">${dto.name}</div>
						</div>

						<div class="col-lg-6">
							<label>프로젝트 코드</label>
							<div class="form-control form-control-view" style="background-color: #F3F6F9;">${dto.pcode}</div>
						</div>
					</div>

					<div class="form-group row">
						<div class="col-lg-6">
							<label>프로젝트 유형 <span class="required"></span></label>
							<div class="form-control form-control-view" style="background-color: #F3F6F9;">${dto.type}</div>
						</div>
						<div class="col-lg-6">
							<label>R&amp;D 구분 <span class="required"></span></label>
							<div class="form-control form-control-view" style="background-color: #F3F6F9;">${dto.state}</div>
						</div>
					</div>

					<div class="form-group row">
						<div class="col-lg-6">
							<label>프로젝트 관리자</label>
							<div class="row">
								<div class="col-lg-6">
									<div class="form-control form-control-view" style="background-color: #F3F6F9;">${dto.team}</div>
								</div>
								<div class="col-lg-6">
									<div class="form-control form-control-view" style="background-color: #F3F6F9;">${dto.employeename}</div>
								</div>
							</div>
						</div>

						<div class="col-lg-6">
							<label>PMO</label>
							<div class="row">
								<div class="col-lg-6">
									<div class="form-control form-control-view" style="background-color: #F3F6F9;">${pmo.team}</div>
								</div>
								<div class="col-lg-6">
									<div class="form-control form-control-view" style="background-color: #F3F6F9;">${pmo.employeename}</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>