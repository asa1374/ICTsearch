<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<script type="text/javascript">
	function replBoardData() {
		
		var title = $.trim($("#title").val());
		
		if(title == null || title.length == 0) {
			alert("타이틀을 입력해주세요");
			return;
		}
		
		if(confirm("답글 등록 하시겠습니까?")) {
			$("#form").attr("method", "post");
			$("#form").attr("action", "/user/board/reply.do");
			$("#form").submit();
		}
	}
	</script>
</head>
<body>
<div class="card mb-3">
	<div class="card-header">
	  <i class="fas fa-table"></i>
	  	게시판
	</div>
	<div class="card-body">
	  <div class="table-responsive">
	    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	      <thead>
	        <tr>
	          <th>제목 : ${boardData.boardTitle} </th>
	        </tr>
	      </thead>
	      <tbody>
			<tr>
				<td scope="row">${boardData.boardContent} </td>
			</tr>
			<tr>
				<td scope="row">첨부파일 
					<c:if test="${not empty boardData.fileName }">
						<a href="/user/board/fileDown.do?seq=${boardData.boardSeq}" name="file">${boardData.fileName }</a> 
							(${boardData.fileSize }kb)
					</c:if>
				</td>
			</tr>
	      </tbody>
	    </table>
	  </div>
	</div>
	<div style="text-align: right;">
		<c:if test="${auth eq 'A' or boardData.userId eq id}">
			<a href="/user/board/updateView.do?seq=${boardData.boardSeq}" class="btn btn-primary" style="margin-right: 15px; margin-bottom: 5px;">수정</a>
		</c:if>
		<a href="/main2.do" class="btn btn-primary" style="margin-right: 15px; margin-bottom: 5px;">목록</a>
	</div>
 </div>
 <c:if test="${auth eq 'A'}">
	 <div class="card mb-3">
		<div class="card-header">
		  <i class="fas fa-table"></i>
		  	답글
		</div>
		<div class="card-body">
		  <div class="table-responsive">
		   <form id="form" name="form" enctype="multipart/form-data">
		   		<input type="hidden" id="origin" name="origin" value="${boardData.originalNo}" />
		   		<input type="hidden" id="ord" name="ord" value="${boardData.groupOrd}" />
		   		<input type="hidden" id="layer" name="layer" value="${boardData.groupLayer}" />
				<div class="form-group">
					<label for="title">제목</label>
					<input type="text" id="title" name="title" class="form-control" value="RE :: ${boardData.boardTitle}">
				</div>
				<div class="form-group">
					<label for="content">내용</label>
					<textarea id="content" name="content" rows="5" cols="25" class="form-control">${boardData.boardContent}</textarea>
				</div>
			</form>
		  </div>
		</div>
		<div style="text-align: right;">
			<a href="javascript:replBoardData();" class="btn btn-primary" style="margin-right: 15px; margin-bottom: 5px;">답글 등록</a>
		</div>
	 </div>
 </c:if>
</body>
</html>