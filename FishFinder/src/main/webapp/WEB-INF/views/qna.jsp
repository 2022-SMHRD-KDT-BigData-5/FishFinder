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
		<link rel="stylesheet" href="resources/assets/css/qna.css" />
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
										<div class="qna_q" id="clickQ-1"><span id="clickQ-1-toggle">+</span><span class="qna_title">Q. 글자 제한 두기<div class="qna_date">2022-07-19</div></span></div>
										<div class="qna_a" id="showA-1"></div>
									</div>
								</li>
								<li>
									<div class="qna_qa">
										<div class="qna_q" id="clickQ-2"><span id="clickQ-2-toggle">+</span><span>Q. 글자 제한 두기<div class="qna_date">2022-07-19</div></span></div>
										<div class="qna_a" id="showA-2">A. 답변은 글자 제한 영역 너무 차지하지 않게만</div>
									</div>
								</li>
								<li>
									<div class="qna_qa">
										<div class="qna_q" id="clickQ-3"><span id="clickQ-3-toggle">+</span><span>Q. 글자 제한 두기<div class="qna_date">2022-07-19</div></span></div>
										<div class="qna_a" id="showA-3"></div>
									</div>
								</li>
								<li>
									<div class="qna_qa">
										<div class="qna_q" id="clickQ-4"><span id="clickQ-4-toggle">+</span><span>Q. 글자 제한 두기<div class="qna_date">2022-07-19</div></span></div>
										<div class="qna_a" id="showA-4">A. 답변은 글자 제한 영역 너무 차지하지 않게만</div>
									</div>
								</li>
								<li>
									<div class="qna_qa">
										<div class="qna_q" id="clickQ-5"><span id="clickQ-5-toggle">+</span><span>Q. 글자 제한 두기<div class="qna_date">2022-07-19</div></span></div>
										<div class="qna_a" id="showA-5">A. 답변은 글자 제한 영역 너무 차지하지 않게만</div>
									</div>
								</li>
								<li>
									<div class="qna_qa">
										<div class="qna_q" id="clickQ-6"><span id="clickQ-6-toggle">+</span><span>Q. 글자 제한 두기<div class="qna_date">2022-07-19</div></span></div>
										<div class="qna_a" id="showA-6">A. 답변은 글자 제한 영역 너무 차지하지 않게만</div>
									</div>
								</li>
								<li>
									<div class="qna_qa">
										<div class="qna_q" id="clickQ-7"><span id="clickQ-7-toggle">+</span><span>Q. 글자 제한 두기<div class="qna_date">2022-07-19</div></span></div>
										<div class="qna_a" id="showA-7">A. 답변은 글자 제한 영역 너무 차지하지 않게만</div>
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
	 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
	$( document ).ready(function() {
         if($('.qna_a').text()===""){
        	 if(1===1){
        		 
        		 $(this).text("바보")
        	 }
         }

	})
	
	
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