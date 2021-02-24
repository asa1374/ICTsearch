<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ICT</title>
<style type="text/css">
	.con{
		float: left;
	    width: 48%;
	    margin: 26px 22px 0 0;
	    /* border: 1px solid #ddd; */
	}
</style>
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
				      <th style="width: 100px;">제목 </th>
				      <td>${boardData.title} </td>
				    </tr>
				</thead>
				<tbody>
				  	<tr>
				  		<th style="width: 100px;">기사 날짜 </th>
						<td>${boardData.newsRegistTime} </td>
					</tr>
					<tr>
						<th style="width: 100px;">뉴스사 </th>
						<td>${boardData.newsKind} </td>
					</tr>
					<tr>
						<th style="width: 100px;">본문 </th>
						<td><p>${boardData.contents}</p> </td>
					</tr>
					<%-- <tr>
						<td>검색어 : ${boardData.serchKeyword} </td>
					</tr> --%>
				</tbody>
			</table>
		</div>
		<!-- <div class="sub_menu">
			<button id="biz_type">사업유형</button>
			<button id="eval_item">평가항목</button>
		</div> -->
		<div>
			<div>
				<div class="left_sub con">
					<h4>※ 사업유형 포함 단어 수</h4>
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
						    <tr>
						      <th style="text-align: center; width: 80px;">순번</th>
						      <th style="text-align: center; width: 304px;">사업유형</th>
						      <th style="text-align: center;">포함 단어</th>
						      <th style="text-align: center; width: 80px;">개수</th>
						    </tr>
						</thead>
						<tbody>
							<c:forEach var="row" items="${subDataList}" varStatus="status">
								<c:if test="${row.type eq '사업유형' }">
									<tr>
										<td style="text-align: center;">${status.count}</td>
								  		<td>${row.name}</td>
								  		<td>${row.searchkeyword}</td>
										<td style="text-align: center;">${row.count}</td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="right_sub con" >
					<h4>※ 평가항목 포함 단어 수</h4>
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
						    <tr>
						      <th style="text-align: center; width: 80px;">순번</th>
						      <th style="text-align: center; width: 304px;">평가항목</th>
						      <th style="text-align: center;">포함 단어</th>
						      <th style="text-align: center; width: 80px;">개수</th>
						    </tr>
						</thead>
						<tbody>
						  	<c:forEach var="row" items="${subDataList}" varStatus="status">
								<c:if test="${row.type eq '평가항목' }">
									<c:set var="sum" value="${sum+1}"/>
									<tr>
										<td style="text-align: center;">${sum}</td>
								  		<td>${row.name}</td>
								  		<td>${row.searchkeyword}</td>
										<td style="text-align: center;">${row.count}</td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div style="text-align: right;">
		<a href="/main.do" class="btn btn-primary" style="margin-right: 15px; margin-bottom: 5px;">목록</a>
	</div>
 </div>
</body>
</html>