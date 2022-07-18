<%@page import="com.smhrd.domain.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<h2>SpringMVC01</h2>
		<div class="panel panel-default">
			<div class="panel-heading">Panel Heading</div>
			<div class="panel-body">
				<%-- list를 가져와서 출력 --%>
				<%
					// request 영역에 저장된 list 꺼내오기
								List<Board> list = (List<Board>) request.getAttribute("list");
								out.print(list.size());
				%>
				<table class="table table-bordered table-hover">
					<tr>
						<td>글번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>날짜</td>
						<td>조회수</td>
					</tr>
					<!-- 자바에서 forEach문 -->
					<%
						for (Board board : list) {
					%>
					<tr>
						<td><%=board.getIdx()%></td>
						<%-- 
						// 1. 쿼리스트링
						url?key(name)=value&... 
						
						// 2. Path Variable
						url/value1/value2/....
						Path Variable을 쓸때는
						경로 앞에 /ContextPath/를 붙여줄것
						
						--%>
						<td><a href="/web/boardContent.do/<%=board.getIdx()%>"><%=board.getTitle()%></a></td>
						<td><%=board.getWriter()%></td>
						<td><%=board.getIndate()%></td>
						<td><%=board.getCount()%></td>
					</tr>
					<%
						}
					%>

				</table>
				<button onclick="location.href='boardInsert.do' "
					class="btn btn-sm btn-success">작성</button>

			</div>
			<div class="panel-footer">빅데이터 12차 박동명</div>
		</div>
	</div>

</body>
</html>
