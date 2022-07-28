<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<link rel="stylesheet" href="resources/assets/css/main.css" />
		<link rel="stylesheet" href="resources/assets/css/board.css" />
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
							<a href="#" class="boardAll" onclick="showAll()">전체</a>
							<a href="#" class="boardMy" onclick="showMy()">내가 쓴 글</a>
							<a href="writer.html" class="">글 작성</a>
						</div>
						<div class="board_scroll">
							<ul class="board_selectAll">
								<!-- a태그가 기록 하나 -->
								<a href="view.html">
									<li class="board_list">
										<div class="preview_img">
											<img class="board_img" src="resources/assets/css/images/img_test.jpg" alt="">
										</div>
										<div class="board_tnd">
											<div class="board_title">벌써5시반</div>
											<div class="board_wdv">
												<span class="board_writer">김건우</span>
												<span class="board_date">2022-07-13</span>
												<span class="board_views">조회수 <span class="views_cnt">1234</span></span>
											</div>
										</div>
										<div class="comments_box">
											<div class="board_comments">댓글<br>999</div>
										</div>
									</li>
								</a>
								<a href="view.html">
									<li class="board_list">
										<div class="preview_img">
											<img class="board_img" src="resources/assets/css/images/img_test.jpg" onerror="">
										</div>
										<div class="board_tnd">
											<div class="board_title">벌써5시반</div>
											<div class="board_wdv">
												<span class="board_writer">김건우</span>
												<span class="board_date">2022-07-13</span>
												<span class="board_views">조회수 <span class="views_cnt">1234</span></span>
											</div>
										</div>
										<div class="comments_box">
											<div class="board_comments">댓글<br>1</div>
										</div>
									</li>
								</a>
							</ul>
							<ul class="board_selectMy">
								<a href="view.html">
									<li class="board_list">
										<div class="preview_img">
											<img class="board_img" src="/assets/css/images/img_test.jpg" onerror="">
										</div>
										<div class="board_tnd">
											<div class="board_title">와 오늘 다금바리 먹음</div>
											<div class="board_wdv">
												<span class="board_writer">김건우</span>
												<span class="board_date">2022-07-27</span>
												<span class="board_views">조회수 <span class="views_cnt">1234</span></span>
											</div>
										</div>
										<div class="comments_box">
											<div class="board_comments">댓글<br>1</div>
										</div>
									</li>
								</a>
							</ul>
						</div>
						<div class="search_box">
							<input type="text" class="search_input" placeholder="검색어 입력">
							<button class="search_button">검색</button>
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
					<span class="copyright">&copy; Untitled. Design: <a href="http://html5up.net">HTML5 UP</a>.</span>
				</footer>
			</div>
		</div>
	</body>
	<script>
		window.onload = function() { document.body.classList.remove('is-preload'); }
		window.ontouchmove = function() { return false; }
		window.onorientationchange = function() { document.body.scrollTop = 0; }
	</script>
	<script src="resources/assets/js/board.js"></script>
</html>