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
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/qna.css" />
		<link rel="stylesheet" href="assets/css/view.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<!-- fontawesome token -->
		<script src="https://kit.fontawesome.com/e340e95114.js" crossorigin="anonymous"></script>
		<script src="/assets/js/view.js"></script>
	</head>
	<body class="is-preload">
		<div id="wrapper">
			<div id="bg"></div>
			<div id="overlay"></div>
			<div id="main">
				<!-- Header -->
				<header id="header">
					<h1>View</h1>
					<div class="qna_box">
						<div class="view_scroll">
							<div class="view_title">벌써 5시 반</div>
							<div class="view_writer">김건우</div>
							<div class="view_dvc">
								<span class="view_date">2022-07-13 </span>
								<span class="view_views">조회수 1234 </span>
								<span class="view_comments">댓글 123</span>
							</div>
							<div class="view_content">
								<div class="view_image">
									<img src="https://cdn.pixabay.com/photo/2018/04/15/17/45/fish-3322230_960_720.jpg" class="view_img">
								</div>
								<div class="content">
								글 내용<br>글 내용<br>글 내용<br>
								글 내용<br>글 내용<br>글 내용<br>
								</div>
							</div>
							<div class="comments_menu">
								<!-- 수정 삭제는 내 글에서만 -->
								<div class="view_md">
									<a href="#" class="view_modify">수정</a>
									<a href="#" class="view_delete">삭제</a>
									<a href="#" class="view_report">신고</a>
									<a href="#here"><span class="write_comments">댓글쓰기</span></a>
								</div>
							</div>
							<div class="comments_box">
								<div class="comments_writer">김아무개</div>
								<div class="comments_content">
									댓글 내용<br>댓글 내용<br>댓글 내용
								</div>
								<div class="comments_dmd">
									<div class="comments_date">2022-07-19</div>
									<div class="comments_md">
										<a href="#" class="comments_modify">수정</a>
										<a href="#" class="comments_delete" onclick="commDel()">삭제</a>
									</div>
								</div>
							</div>
							<div class="comments_box">
								<div class="comments_writer">김아무개</div>
								<div class="comments_content">
									댓글 내용<br>댓글 내용<br>댓글 내용
								</div>
								<div class="comments_dmd">
									<div class="comments_date">2022-07-19</div>
									<div class="comments_md">
										<a href="#" class="comments_modify">수정</a>
										<a href="#" class="comments_delete" onclick="commDel()">삭제</a>
									</div>
								</div>
							</div>
							<div class="comments_box">
								<div class="comments_writer">김아무개</div>
								<div class="comments_content">
									댓글 내용<br>댓글 내용<br>댓글 내용
								</div>
								<div class="comments_dmd">
									<div class="comments_date">2022-07-19</div>
									<div class="comments_md">
										<a href="#" class="comments_modify">수정</a>
										<a href="#" class="comments_delete" onclick="commDel()">삭제</a>
									</div>
								</div>
							</div>
							<div class="comments_box">
								<div class="comments_writer">김아무개</div>
								<div class="comments_content">
									댓글 내용<br>댓글 내용<br>댓글 내용
								</div>
								<div class="comments_dmd">
									<div class="comments_date">2022-07-19</div>
									<div class="comments_md">
										<a href="#" class="comments_modify">수정</a>
										<a href="#" class="comments_delete" onclick="commDel()">삭제</a>
									</div>
								</div>
							</div>
							<div class="comm_write_box">
								<a name="here"><textarea class="comm_text"></textarea></a>
								<button class="custom-btn btn-3"><span>등록</span></button>
							</div>
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
	</script>
</html>eta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>