<%@page import="com.smhrd.domain.Community"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<h2>SpringMVC01</h2>
		<div class="panel panel-default">
			<div class="panel-heading">게시판</div>
			<div class="panel-body">
				<table class="table table-hover">
					<tr>
						<td> 제목 : </td>
						<td> ${ requestScope.community.article_title } </td>
					</tr>
					<tr>
						<td> 작성자 : </td>
						<td> ${ community.user_num } </td>
					</tr>
					<tr>
						<td> 내용 : </td>
						<% pageContext.setAttribute("newLine", "\n"); %>
						<td> ${ fn:replace( community.article_content, newLine, "<br>") } </td>
					</tr>
					<tr>
						<td> 작성일 : </td>
						<td> ${ fn:split(community.article_date, " ")[0] } </td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<button onClick="goUpdate(${community.article_seq})" class="btn btn-sm btn-info" value="${community.article_seq}">수정</button>
							<button onClick="goDelete(${community.article_seq})" class="btn btn-sm btn-warning" value="${community.article_seq}">삭제</button>
							<button onClick="goList()" class="btn btn-sm btn-success">목록</button>
						</td>
					</tr>					
				</table>
			</div>
			<div class="panel-footer">빅데이터12차 김승현</div>
		</div>
	</div>
<script type="text/javascript">
	//목록가기
	function goList(){
		location.href = '/fish/communityList.do';
	}
	// 삭제하기
	function goDelete(article_seq){
		console.log(article_seq);
		location.href = '/fish/communityDelete.do?article_s eq=' + article_seq;
	}
	// 수정하기
	function goUpdate(article_seq){		
		location.href = '/fish/communityGoUpdate.do?article_seq=' + article_seq;
	}	
</script>
</body>
</html>
