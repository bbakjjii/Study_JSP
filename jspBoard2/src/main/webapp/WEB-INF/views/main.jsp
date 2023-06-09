<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판 연습해보기</title>
</head>
<body>

	<h3># 게시판 만들어보기 (1)</h3>
	<ul>
		<li>아무나 id와 비밀번호를 설정하고 글을 쓸 수 있다</li>
		<li>글 목록을 볼 때 한 페이지에 10개씩 나와야 한다</li>
		<li>최근에 적은 글부터 보여야 한다</li>
		<li>글 목록 아래에 다음 페이지 또는 원하는 페이지로 넘어갈 수 있는 기능이 있어야 한다</li>
		<li>게시글 정보 테이블에 반드시 시퀀스를 통해 ID를 부여할 것</li>
	</ul>
	
	<h3># 게시판 만들어 보기(2)</h3>
	<ul>
		<li>만들어진 글 목록의 제목을 클릭하면 해당 글의 내용을 보는 페이지로 넘어가기</li>
		<li>글의 내용을 볼 때마다 조회수가 올라간다</li>
		<li>목록 페이지의 적당한 위치에 글 쓰기 버튼을 만들고
			그 버튼을 누르면 글을 쓸 수 있는 폼이 있는 페이지로 넘어가기</li>
	</ul>
	
	<h3># 게시판 만들어 보기(3)</h3>
	<ul>
		<li>글 내용을 보는 곳에서 글 수정 버튼을 누르면 비밀번호를 입력하는 창으로 넘어가기</li>
		<li>비밀번호를 맞추면 글 내용을 수정하는 페이지로 넘어가기</li>
		<li>비밀번호를 못 맞추면 전체 글 목록으로 넘어가기</li>
		<li>글 내용을 보는 곳에서 글 삭제 버튼을 누르면 비밀번호를 입력하는 창으로 넘어가기</li>
		<li>★과제 : 비밀번호를 맞추면 해당 글을 삭제 후 목록으로 가고 못 맞추면 삭제하지 않고 목록으로 넘어가기</li>
	</ul>
	
	<h3># 게시판 만들어보기(4)</h3>
	<ul>
		<li>★과제 : 게시글 내용을 보는 곳 아래에는 댓글을 입력할 수 있다</li>
		<li>★과제 : 댓글 입력자도 아이디와 비밀번호를 직접 입력하여 댓글을 작성할 수 있다</li>
		<li>★과제 : 해당 글에 대한 댓글 개수가 목록에서 글 제목 오른쪽에 보여야 한다 ex:[3]</li>
	</ul>

	<!-- 1 -->
	<!-- 32 -->
	<a href="<%=request.getContextPath() %>/list">게시판 보러 가기</a>


</body>
</html>