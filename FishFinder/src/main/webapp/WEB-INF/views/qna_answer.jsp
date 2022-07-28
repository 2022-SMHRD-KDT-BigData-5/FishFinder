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
		<link rel="stylesheet" href="resources/assets/css/qna_write.css" />
		<link rel="stylesheet" href="resources/assets/css/writer.css" />
		<link rel="stylesheet" href="resources/assets/css/qna_answer.css" />
		<noscript><link rel="stylesheet" href="resources/assets/css/noscript.css" /></noscript>
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
					<h1>Answer</h1>
					<div class="question_box">
						<div class="board_write">
							<div class="title">
								<dl class="title_answer">
									여기에 qna 질문내용
								</dl>
							</div>
							<div class="cont">
								<textarea class="qna_content" placeholder="답변하기."></textarea>
							</div>
						</div>
						<nav>
							<ul>
								<li><a href="#" class="icon solid fa-check"><span class="label">Check</span></a></li>
								<li><a href="javascript:history.back()" class="icon solid fa-sign-out"><span class="label">Exit</span></a></li>
							</ul>
						</nav>
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
</html>