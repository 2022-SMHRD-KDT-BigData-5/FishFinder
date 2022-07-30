<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<!--
	Aerial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Aerial by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/board.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<!-- fontawesome token -->
		<script src="https://kit.fontawesome.com/e340e95114.js" crossorigin="anonymous"></script>
	</head>
	<body class="is-preload">
		<div id="wrapper">
			<div id="bg"></div>
			<div id="overlay"></div>
			<div id="main">
				<!-- Header -->
				<header id="header">
					<h1>Board</h1>
					<div class="board_box">
						<div class="board_menu">
							<a href="/fish/view" class="boardAll" onclick="showAll()">전체</a>							
							<a href="/fish/viewMy"class="boardMy" onclick="showMy()">내가 쓴 글</a>
							<a href="/fish/viewIn" class="">글 작성</a>
						</div>
						<div class="board_scroll">
							<ul class="board_selectAll">
							<!-- a태그가 기록 하나 -->
								<c:forEach var="list" items="${list}">
								<a href='javascript:open(${list.article_seq})'>
									<li class="board_list">
										<div class="preview_img">
											<img class="board_img" src="assets/css/images/img_test.jpg" onerror="">
										</div>
										<div class="board_tnd">
											<div class="board_title"><c:out value="${list.article_title}"/></div>
											<div class="board_wdv">
												<span class="board_writer"><c:out value="${list.user_num}"/></span>
												<span class="board_date" id='date${list.article_date}'>${ fn:split(list.article_date, " ")[0]}</span>
												<span class="board_views">조회수 <span class="views_cnt" id="count${list.article_seq}"><c:out value="${list.article_cnt}"/></span></span>
											</div>
										</div>
										<div class="comments_box">
											<div href="javascript:commCnt(${list.article_seq})" class="board_comments">댓글<br><c:out value="${ctotal}"/></div>
										</div>
									</li>									
								</a>
								</c:forEach>
							</ul>
							<ul class="board_selectMy">
								<c:forEach var="list" items="${clist}">
								<c:when test="${mlist.user_num == sessionScope.user_num}">
								<a href='javascript:open(${mlist.article_seq})'>
									<li class="board_list">
										<div class="preview_img">
											<img class="board_img" src="/fish/resources/assets/css/images/img_test.jpg" onerror="">
										</div>
										<div class="board_tnd">
											<div class="board_title">><c:out value="${mlist.article_title}"/></div>
											<div class="board_wdv">
												<span class="board_writer"><c:out value="${clist.user_num}"/></span>
												<span class="board_date" id='date${clist.article_date}'>${ fn:split(mlist.article_date, " ")[0]}</span>
												<span class="board_views">조회수 <span class="views_cnt"><c:out value="${mlist.article_cnt}"/></span></span>
											</div>
										</div>
										<div class="comments_box">
											<div href="javascript:commCnt(${mlist.article_seq})" class="board_comments">댓글<br><c:out value="${ctotal}"/></div>
										</div>
									</li>
								</a>
								</c:when>
								</c:forEach>
							</ul>
						</div>
						<div class="search_box">
							<!-- search{s} -->		
							<div class="form-group row justify-content-center">			
							<div class="w100" style="padding-right:10px">				
								<select class="form-control form-control-sm" name="searchType" id="searchType">					
									<option value="article_title">제목</option>					
									<option value="article_content">본문</option>									
								</select>			
							</div>			
							<div class="w300" style="padding-right:10px">				
								<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">			
							</div>			
							<div>				
								<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>			
							</div>		
							</div>		
							<!-- search{e} -->
						</div>
					</div>
					<nav>
						<ul>
							<li><a href="/fish/index" class="icon solid fa-home"><span class="label">Home</span></a></li>
							<li><a href="/fish/history" class="icon solid fa-history"><span class="label">History</span></a></li>
							<li><a href="/fish/view" class="icon solid fa-list"><span class="label">Board</span></a></li>
							<li><a href="/fish/qna" class="icon solid fa-question"><span class="label">Q&A</span></a></li>
						</ul>
					</nav>
				</header>
				<!-- Footer -->
				<footer id="footer">
	               <span class="copyright"><a href="/fish/join">Logout</a>.</span>
	               <!-- 관리자 로그인 시 이동 가능한 버튼 -->
	              	<c:if test="${sessionScope.user_type == 1}">
	               		<span class="copyright"><a href="/fish/admin">Admin</a>.</span>
	               	</c:if>
					<span class="copyright">&copy; Untitled. Design: <a href="http://html5up.net">HTML5 UP</a>.</span>
            	</footer>
			</div>
		</div>
	</body>
	<c:url var="getBoardListURL" value="/board/getBoardList"/>
	<script>
		window.onload = function() { document.body.classList.remove('is-preload'); }
		window.ontouchmove = function() { return false; }
		window.onorientationchange = function() { document.body.scrollTop = 0; }
		
		// 검색창
		$(document).on('click', '#btnSearch', function(e){		
			e.preventDefault();		
			var url = "${getBoardList}";    // <c:url>로 선언한 url을 사용		
			url = url + "?searchType=" + $('#searchType').val();		
			url = url + "&keyword=" + $('#keyword').val();		
			location.href = url;		
			console.log(url);	
		});
	</script>
	<script type="text/javascript" src="resources/js/board.js"></script>
</html>