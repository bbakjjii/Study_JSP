<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="comment.Comment"%>
<%@ page import="comment.CommentDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.io.File" %>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {//유저아이디이름으로 세션이 존재하는 회원들은 
			userID = (String) session.getAttribute("userID");//유저아이디에 해당 세션값을 넣어준다.
		}
		if (userID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		} 
		int bbsID = 0;
		if (request.getParameter("bbsID") != null){
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		//댓글이 유효한지 판별
		int commentID = 0;
		if (request.getParameter("commentID") != null) {
			commentID = Integer.parseInt(request.getParameter("commentID"));
		}
		if (commentID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 댓글 입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		Comment comment = new CommentDAO().getComment(commentID);
		if (!userID.equals(comment.getUserID())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("history.back()");
			script.println("</script>");				
		} else {
			CommentDAO commentDAO = new CommentDAO();
			int result = commentDAO.delete(commentID);
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('댓글 삭제에 실패했습니다')");
				script.println("history.back()");
				script.println("</script>");
			}
			else { // result가 -1이 아닌 경우 전부 다 글쓰기 성공
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'view.jsp'"); // 댓글 삭제 성공시 게시글로 이동 (view.jsp)로 이동
				script.println("</script>");	
			}	
		}
		%>
</body>
</html>