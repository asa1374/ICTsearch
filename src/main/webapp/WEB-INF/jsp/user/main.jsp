<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ethree" uri="/WEB-INF/tld/ethree.tld"%>
<!DOCTYPE html>
<html lang="kr">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>ICT</title>

	<script type="text/javascript">
		/* $(document).ready(function(){ ㅋㅋㅋㅋㅋㅋㅋㅋㅋㄴㅇㄹㄴㅇㄹㄴ
			ㄴㅇㄹㄴㅇㄹㄴㅇㄹ
			$("#replyDtStart").change(function(){
			    if($('#replyDtStart').val() > $('#replyDtEnd').val()){
			    	if($('#replyDtEnd').val() != ''){
				    	$('#replyDtEnd').val($('#replyDtStart').val()).attr("seleted","seleted");
			    	}
			    }
			});
			
 			$("#replyDtEnd").change(function(){
 				if($("#replyDtStart").val() > $("#replyDtEnd").val()){
			    	$('#replyDtStart').val($("#replyDtEnd").val()).attr("seleted","seleted");
			    }
			});
 			
  			$("#bizNm").keydown(function(key) {
                if (key.keyCode == 13) {
                	goPage(1);
                }
            });
  			$("#eiaCd").keydown(function(key) {
                if (key.keyCode == 13) {
                	goPage(1);
                }
            });
			
		});
	
		
		
		function writeData(eiaCode) {
			$("#eiaCode").val(eiaCode);
			
			$("#infoForm").attr("method", "post");
			$("#infoForm").attr("action", "/user/eia/write.do");
			$("#infoForm").submit();
		}
		
		function viewData(eiaCode) {
			alert(eiaCode);
			$("#eiaCode").val(eiaCode);
			
			$("#infoForm").attr("method", "post");
			$("#infoForm").attr("action", "/user/eia/view.do");
			$("#infoForm").submit();
		} */
		$(document).ready(function(){
			$("#replyDtStart").change(function(){
			    if($('#replyDtStart').val() > $('#replyDtEnd').val()){
			    	if($('#replyDtEnd').val() != ''){
				    	$('#replyDtEnd').val($('#replyDtStart').val()).attr("seleted","seleted");
			    	}
			    }
			});
			
 			$("#replyDtEnd").change(function(){
 				if($("#replyDtStart").val() > $("#replyDtEnd").val()){
			    	$('#replyDtStart').val($("#replyDtEnd").val()).attr("seleted","seleted");
			    }
			});
 			
 			$("#title").keydown(function(key) {
	            if (key.keyCode == 13) {
	            	goPage(1);
	            }
	        });
		});
		function goPage(index) {
			
			if($("#replyDtStart").val() !== "" || $("#replyDtEnd").val() !== ""){
				if ($("#replyDtStart").val() === "") {
					alert("기간 시작년도를 선택해주세요");
					return;
				} else if ($("#replyDtEnd").val() === "") {
					alert("기간 마지막년도를 선택해주세요");
					return;
				}
			}
			$("#pageIndex").val(index);
			$("#infoForm").attr("method", "get");
			$("#infoForm").attr("action", "/main.do");
			$("#infoForm").submit();
		}
		
	</script>
</head>
<body>
<div class="card mb-3">
	<div class="card-header">
	  <i class="fas fa-table"></i>
	  	검색부분
	</div>
	<div class="card-body">
		
		<div class="table-responsive">
			 <form name="infoForm" id="infoForm">
				<input type="hidden" id="pageIndex" name="pageIndex" value="${paramMap.pageIndex}" />
				<input type="hidden" id="no" name="no"/>
				
			<div class="search_box" style="margin-top: 6px; margin-right:30px;">
				<label for="replyDtStart">기사등록기간  :  </label>	
				<select id="replyDtStart" name="replyDtStart" style="width:70px;" title="시작 등록년도 선택">
					<option value="">선택</option>
					<c:forEach begin="1990" end="1999" varStatus="status">
						<option <c:if test="${paramMap.replyDtStart eq status.index}">selected</c:if>>${status.index}</option>
					</c:forEach>
				</select>
				<label for="replyDtEnd">~</label>
				<select id="replyDtEnd" name="replyDtEnd" style="width:70px;" title="마지막  등록년도 선택">
					<option value="">선택</option>
					<c:forEach begin="1990" end="1999" varStatus="status">
						<option <c:if test="${paramMap.replyDtEnd eq status.index}">selected</c:if>>${status.index}</option>
					</c:forEach>
				</select>
			</div>
			<div class="search_box">
				<label>검색   :   </label>
				<input type="text" id="title" name="title" value="${paramMap.title}" style="width:250px;" title="검색어를 입력하세요" placeholder="검색어를 입력하세요" onkeypress="checkEnterResu(event)">
			</div>
			<div class="btn_area">
				<a href="javascript:goPage(1);" class="btn btn_jsm">검색</a>
			</div>
			</form>
		</div>
	</div>
</div>
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
	          <th style="width: 80px;">순번</th>
	     	  <th style="width: ;">사업유형</th>
	     	  <th style="width: ;">평가항목</th>
	          <th style="width: 150px;">신문사종류</th>
	          <th>뉴스제목</th>
	     	  <th style="width: 130px;">크롤링시간</th>
	     	  <th style="width: 130px;">기사등록일자</th>
	        </tr>
	      </thead>
	      <tbody>
         	<c:forEach var="row" items="${boardDataListVO.list}" varStatus="status">
				<tr>
					<td scope="row">${row.no}</td>
					<td scope="row">${row.bizType}</td>
					<td scope="row">${row.evalItem}</td>
					<td scope="row">${row.newsKind}</td>
					<td>
						<%-- <a href="/user/boardNotice.do?seq=${row.boardSeq}">${row.boardTitle}</a> --%>
						 <a href="/view.do?no=${row.no}">${row.title}</a>
					</td>
					<td>${row.crawlingTime}</td>
					<td>${row.newsRegistTime}</td>
				</tr>
			</c:forEach>
	      </tbody>
	    </table>
	  </div>
	</div>
	<div style="text-align: center;">
		<ul class="paging">
			<ethree:paging listHelperVO="${boardDataListVO}" jsFunction="goPage" />
		</ul>
	</div>
 </div>
</body>
</html>
