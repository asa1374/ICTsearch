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
		
		/* $(document).ready(function(){
			
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
			$("#pageIndex").val(index);
			$("#infoForm").attr("method", "get");
			$("#infoForm").attr("action", "/main.do");
			$("#infoForm").submit();
		}
		
	</script>
</head>
<body>
<!-- 
<div class="card mb-3">
	<div class="card-header">
	  <i class="fas fa-table"></i>
	  	검색부분
	</div>
	<div class="card-body">
		
		<div class="table-responsive">
			
				<table class="table_style5 mb10" >
				<colgroup>
				<col style="width:100px;">
				<col style="width:auto;">
				<col style="width:115px;">
				<col style="width:auto;">
				</colgroup>
				
				<tbody>
					<tr>
						<th scope="row"><label for="discOrgan">기관명</label></th>
						<td style="padding-right: 100px;">
							<select id="discOrgan" name="discOrgan" style="width:auto;" title="기관명 선택">
								<option value="">선택</option>
								<%-- <option value="ME" <c:if test="${paramMap.discOrgan eq 'ME'}">selected</c:if>>환경부</option>
								<option value="HG" <c:if test="${paramMap.discOrgan eq 'HG'}">selected</c:if>>한강유역환경청</option>
								<option value="ND" <c:if test="${paramMap.discOrgan eq 'ND'}">selected</c:if>>낙동강유역환경청</option>
								<option value="GG" <c:if test="${paramMap.discOrgan eq 'GG'}">selected</c:if>>금강유역환경청</option>
								<option value="YS" <c:if test="${paramMap.discOrgan eq 'YS'}">selected</c:if>>영산강유역환경청</option>
								<option value="WJ" <c:if test="${paramMap.discOrgan eq 'WJ'}">selected</c:if>>원주지방환경청</option>
								<option value="DG" <c:if test="${paramMap.discOrgan eq 'DG'}">selected</c:if>>대구지방환경청</option>
								<option value="JJ" <c:if test="${paramMap.discOrgan eq 'JJ'}">selected</c:if>>전북지방환경쳥</option>
								<option value="GI" <c:if test="${paramMap.discOrgan eq 'GI'}">selected</c:if>>수도권대기지방환경청</option>
								<option value="EA" <c:if test="${paramMap.discOrgan eq 'EA'}">selected</c:if>>지방청소계</option>
								<option value="ZZZ" <c:if test="${paramMap.discOrgan eq 'ZZZ'}">selected</c:if>>미분류</option> --%>
							</select>
						</td>
						<th scope="row"><label for="bizGubun">사업구분</label></th>
						<td style="padding-right: 100px;">
							<select id="bizGubun" name="bizGubun" style="width:auto;" title="사업구분 선택">
								<option  value="">선택</option>
								<%-- <c:forEach var="item" items="${eiaCode}" varStatus="status" >
									<option value="${item.comCd}" <c:if test="${paramMap.bizGubun eq item.comCd}">selected</c:if>>${item.comCdNm}</option>
								</c:forEach> --%>
							</select>
						</td>
						<th scope="row" style="width: 100px"><label for="replyDtStart">완료년도</label></th>
						<td>
							<select id="replyDtStart" name="replyDtStart" style="width:70px;" title="시작 완료년도 선택">
									<option value="">선택</option>
									<%-- <c:forEach begin="2008" end="2018" varStatus="status">
										<option <c:if test="${paramMap.replyDtStart eq status.index}">selected</c:if>>${status.index}</option>
									</c:forEach> --%>
							</select>
						</td>
						<th scope="row" style="padding-right: 20px;"><label for="replyDtEnd">~</label></th>
						<td>
							<select id="replyDtEnd" name="replyDtEnd" style="width:70px;" title="마지막 완료년도 선택">
									<option value="">선택</option>
									<%-- <c:forEach begin="2008" end="2018" varStatus="status">
										<option <c:if test="${paramMap.replyDtEnd eq status.index}">selected</c:if>>${status.index}</option>
									</c:forEach> --%>
							</select>
						</td>
					</tr>
					<tr>
						<th scope="row">사업명</th>
						<td><input type="text" id="bizNm" name="bizNm" value="${paramMap.bizNm}" style="width:250px;" title="검색어를 입력하세요" onkeypress="checkEnterResu(event)">
						</td>
						<th scope="row">사업코드</th>
						<td><input type="text" id="eiaCd" name="eiaCd" value="${paramMap.eiaCd}" style="width:250px;" title="검색어를 입력하세요" onkeypress="checkEnterResu(event)"></td>
						<th scope="row"><label for="isInsert">입력현황</label></th>
						<td>
							<select id="isInsert" name="isInsert" title="입력현황 선택">
									<option value="">선택</option>
									<%-- <option value="Y" <c:if test="${paramMap.isInsert eq 'Y'}">selected</c:if>>입력완료</option>
									<option value="N" <c:if test="${paramMap.isInsert eq 'N'}">selected</c:if>>미입력</option> --%>
							</select>
						</td>
					</tr>
					 
					</tbody>
				</table>
				
				<div class="btn_area">
					<div class="fl_r" style="float: right;">
						<a href="javascript:goPage(1);" class="btn btn-primary">검색</a>
					</div>
				</div>
		  	</form>
		</div>
	</div>
	
</div>
-->
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
				
			<!-- 	
			<label for="replyDtStart">완료년도</label>	
			<select id="replyDtStart" name="replyDtStart" style="width:70px;" title="시작 완료년도 선택">
				<option value="">선택</option>
				<c:forEach begin="1990" end="1999" varStatus="status">
					<option <c:if test="${paramMap.replyDtStart eq status.index}">selected</c:if>>${status.index}</option>
				</c:forEach>
			</select>
			<label for="replyDtEnd">~</label>
			<select id="replyDtEnd" name="replyDtEnd" style="width:70px;" title="마지막 완료년도 선택">
				<option value="">선택</option>
				<c:forEach begin="1990" end="1999" varStatus="status">
					<option <c:if test="${paramMap.replyDtEnd eq status.index}">selected</c:if>>${status.index}</option>
				</c:forEach>
			</select>
			 -->
				
				
			<div style="float: left; margin-right: 10px; margin-top: 3px;">
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
	          <th>순번ㅋ</th>
	          <th>신문사종류</th>
	          <th>뉴스제목</th>
	     	  <th>크롤링시간</th>
	     	  <th>기사등록시간</th>
	        </tr>
	      </thead>
	      <tbody>
         	<c:forEach var="row" items="${boardDataListVO.list}" varStatus="status">
				<tr>
					<td scope="row">${row.no}</td>
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
