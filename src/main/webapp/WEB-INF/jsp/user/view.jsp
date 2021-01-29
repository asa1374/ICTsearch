<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	          <th>제목 : ${boardData.title} </th>
	        </tr>
	      </thead>
	      <tbody>
	      	<tr>
				<td>날짜 : ${boardData.newsRegistTime} </td>
			</tr>
	      	<tr>
				<td>뉴스사 : ${boardData.newsKind} </td>
			</tr>
			<tr>
				<td>본문 : <br/> <p>${boardData.contents}</p> </td>
			</tr>
			<tr>
				<td>검색어 : ${boardData.serchKeyword} </td>
			</tr>
	      </tbody>
	    </table>
	  </div>
	</div>
	<div style="text-align: right;">
		<a href="/main.do" class="btn btn-primary" style="margin-right: 15px; margin-bottom: 5px;">목록</a>
	</div>
 </div>
</body>
</html>