<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.required {
	color: #d97474;
}
.container {
	color: #666
}
</style>
<div class="container">
	<br>
	<div class="row">
		<div class="col-lg-7 mx-auto">
			<div class="card">
				<div class="card-header bg-primary text-white">산출물 등록</div>
				<div class="card-body">
					<div class="container">
						<form name="fileForm" method="POST" action="/web/project/outputaddok" enctype="multipart/form-data">
							<div class="controls">
								<div class="row">
									<div class="col">
										<div class="form-group">
											<label for="form_file">파일 <span class="required">*</span></label>
											<input id="form_file" type="file" name="title" class="form-control" required="required">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="form_project">프로젝트 <span class="required">*</span></label>
											<c:if test="${not empty projectlist}">
												<select id="form_project" name="projectseq" class="form-control" required="required">
													<option value="" selected disabled>프로젝트를 선택하세요</option>
													<c:forEach items="${projectlist}" var="pro">
														<option value="${pro.projectseq}">${pro.name}</option>
													</c:forEach>
												</select>
											</c:if>
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label for="form_work">작업 <span class="required">*</span></label>
												<select id="form_work" name="workseq" class="form-control" required="required">
													<option value="" selected disabled>작업을 선택하세요</option>
												</select>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="form_type">산출물 종류 <span class="required">*</span></label>
											<select id="form_type" name="otypeseq" class="form-control" required="required">
												<option value="" selected disabled>산출물 종류를 선택하세요</option>
												<option value="1">개발기획서</option>
												<option value="2">개발계획서</option>
												<option value="3">개발검증보고서</option>
												<option value="4">개발완료보고서</option>
												<option value="6">기타보고</option>
											</select>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="form_message">파일 설명</label>
											<textarea id="form_message" name="fileexplain" class="form-control" rows="5"></textarea>
										</div>
									</div>

									<div class="col-md-12 d-md-flex justify-content-md-end">
										<input type="submit" class="btn btn-primary mr-1 pt-2" value="저장">
										<input type="button" class="btn btn-primary pt-2" value="취소" onclick="history.back();">
									</div>
								</div>
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
$(document).ready(function() {
	$("select[name='projectseq']").change(function(){
		var projectseq = $(this).val(); // 선택한 구분1
		
		$.ajax({
			type: 'post',
			url: 'outputaddsearch',
			data: {projectseq : projectseq},
			datatType: 'json',
			success: function(data) {
				console.log(data);
				
				let temp = "";
				
				$("select[name='workseq']").empty(); // 구분2 셀렉트박스 비우기
				
				temp += "<option value=selected disabled>작업을 선택하세요</option>";
				
				$(data).each(function(index, item){		
					temp += "<option value='"+item.wworkseq+"'>"+item.wname+"</option>";
				});
				console.log(temp);
				$("select[name='workseq']").append(temp); // 구분2 셀렉트박스에 넣기
				
			}, error:function(a, b, c){
            	console.log(a, b, c);
			}
		});
	});
});
</script>