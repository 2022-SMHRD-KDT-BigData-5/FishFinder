<%@page import="com.smhrd.domain.Community"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"
	import ="com.smhrd.web.SessionUserCounter"%>
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
		<h2>FishFinde22</h2>
		<div id="outter">
		<div style="float: right;">
		<select id="cntPerPage" name="sel" onchange="selChange()">
			<option value="5"
				<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
			<option value="10"
				<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
			<option value="15"
				<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
			<option value="20"
				<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
		</select>
		</div> <!-- 옵션선택 끝 -->
		<div class="panel panel-default">
		<div class="panel-heading">Panel Heading</div>
		<div class="panel-body">
			<div>커뮤니티 목록</div>
			<div>Total : ${paging.total}</div>
			<table class="table table-bordered table-hover">
				<thead>
				<tr>
					<td>글번호</td>
					<td>날짜</td>
					<td>작성자</td>
					<td>제목</td>
					<td>조회수</td>
				</tr>
				</thead>
				<c:set var="cnt" value="${paging.startRowNum }"/>
				<c:forEach var="list" items="${list}">
				<tr>
					<td><c:out value="${cnt}"/></td>
					<td id='date${list.article_date}'>${ fn:split(list.article_date, " ")[0]}</td>
					<td><c:out value="${list.user_num}"/></td>
					<td><a href='javascript:open(${list.article_seq})'><c:out value="${list.article_title}"/></a></td>
					<td id="count${list.article_seq}"><c:out value="${list.article_cnt}"/></td>
				</tr>
				<c:set var="cnt" value="${cnt+1}"/>
				</c:forEach>
			</table>
			<div>
			<div id="outter">
			<div style="display: block; text-align: center;">		
				<c:if test="${paging.startPage != 1 }">
					<a href="/viewList?nowPage=${paging.startPage-1}&cntPerPage=${paging.cntPerPage}" tabindex="-1" aria-disabled="true">Previous</a>
				</c:if>
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i">
				<c:choose>
					<c:when test="${i == paging.nowPage}">
						<b>${i}</b>
					</c:when>
					<c:when test="${i != paging.nowPage}">
						<a href="/viewList.do?nowPage=${i}&cntPerPage=${paging.cntPerPage}">${i}</a>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:if test="${paging.endPage != paging.lastPage}">
				<a href="/viewList?nowPage=${paging.endPage+1}&cntPerPage=${paging.cntPerPage}" aria-disabled="true">Next</a>
			</c:if>
			</div>	
			</div>
			<button onclick=" location.href='communityInsert.do' " class="btn btn-sm btn-success">작성</button>			
			</div>
			<div class="panel-footer">빅데이터12차 김승현</div>
		</div>
	</div>
</div>
</div>	
<script type="text/javascript" src="resources/js/community.js"></script>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="/viewList?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>

</body>
</html>
