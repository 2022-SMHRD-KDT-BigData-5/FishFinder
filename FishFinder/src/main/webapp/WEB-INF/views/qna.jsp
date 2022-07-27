<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<link rel="stylesheet" href="assets/css/qna.css" />
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
					<h1>Q&A</h1>
					<div class="qna_box">
						<div class="qna_menu">
							<a href="#">전체</a>
							<a href="#">주로 묻는 질문</a>
							<a href="#">나의 질문</a>
							<a href="qna_write.html">질문하기</a>
						</div>
						<div class="qna_scroll">
							<ul>
								<li>
									<div class="qna_qa">
									<c:forEach var="qlist" items="${qlist}">
										<div class="qna_q" id="clickQ-${cnt}"><span  id="clickQ-1-toggle" value="${qlist.q_seq}">+</span>
											<span class="qna_title">
											<c:choose>
												<c:when test="${fn:length(qlist.q_content) > 20}">
													<c:out value="${fn:substring(qlist.q_content,0,19)}"/>...				
												</c:when>
												<c:otherwise>
													<c:out value="${qlist.q_content}"/>
												</c:otherwise>
											</c:choose>
											</span>
											<div class="qna_date" id='date${qlist.q_date}'>${ fn:split(qlist.q_date, " ")[0]}</div>
										</div>
									</c:forEach>
										<div class="qna_a" id="showA-1" >${answer.a_content}</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<nav>
						<ul>
							<li><a href="index.html" class="icon solid fa-home"><span class="label">Home</span></a></li>
							<li><a href="history.html" class="icon solid fa-history"><span class="label">History</span></a></li>
							<li><a href="board.html" class="icon solid fa-list"><span class="label">Board</span></a></li>
							<li><a href="qna.html" class="icon solid fa-question"><span class="label">Q&A</span></a></li>
						</ul>
					</nav>
				</header>
				<!-- Footer -->
				<footer id="footer">
	               <span class="copyright"><a href="join.html">Logout</a>.</span>
	               <!-- 관리자 로그인 시 이동 가능한 버튼 -->
	               <span class="copyright"><a href="admin.html">Admin</a>.</span>
	            </footer>
			</div>
		</div>
	</body>
	<script>
		window.onload = function() { document.body.classList.remove('is-preload'); }
		window.ontouchmove = function() { return false; }
		window.onorientationchange = function() { document.body.scrollTop = 0; }
		// 접고 펼치기
		const items = document.querySelectorAll('.qna_q');

		function openCloseAnswer() {
			const answerId = this.id.replace('clickQ', 'showA');

			if(document.getElementById(answerId).style.display === 'block') {
			document.getElementById(answerId).style.display = 'none';
			document.getElementById(this.id + '-toggle').textContent = '+';
			} else {
			document.getElementById(answerId).style.display = 'block';
			document.getElementById(this.id + '-toggle').textContent = '-';
			}
		}

		items.forEach(item => item.addEventListener('click', openCloseAnswer));
	</script>
</html>