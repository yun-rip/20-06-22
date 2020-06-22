<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
 <%@page import = "vo.BoardBean" %>
 
 <%
 	BoardBean article = (BoardBean)request.getAttribute("article");
 	String nowPage = (String)request.getAttribute("page");
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#articleForm {
	width: 500px;
	height: 500px;
	border: 1px solid red;
	margin: auto;
}

h2 {
	text-align: center;
}

#basicInfoArea {
	height: 40px;
	text-align: center;
}

#articleContentArea {
	background: orange;
	margin-top: 20px;
	height: 350px;
	text-align: center;
	overflow: auto;
}

#commandList {
	margin: auto;
	width: 500px;
	text-align: center;
}
</style>
</head>
<body>
	<section id = "articleForm">
		<h2>�� ����  �󼼺���</h2>
		<section id = "basicInfoArea">
			����:
			<%=article.getBOARD_SUBJECT() %>
			÷������:
			<%if(!(article.getBOARD_FILE()==null)){ %>
			<a href = "file_down?downFile=<%=article.getBOARD_FILE() %>">> <%=article.getBOARD_FILE() %>
			</a>
			<%} %>
		</section>
		<section id = "articleContentArea">
			<%=article.getBOARD_CONTENT() %>
		</section>
	</section>
	<section id = "commandList">
		<a href = "boardReplyForm.bo?board_num=<%=article.getBOARD_NUM() %>&page=<%=nowPage %>"> [�亯]</a> 
		<a href = "boardModifyForm.bo?board_num=<%=article.getBOARD_NUM() %>"> [����]</a> 
		<a href = "boardDeleteFprm.bo?board_num=<%=article.getBOARD_NUM() %>&page=<%=nowPage %>"> [����]</a> 
		<a href = "boardList.bo?page=<%=nowPage %>"> [���]</a>&nbsp;&nbsp;
	</section>
</body>
</html>