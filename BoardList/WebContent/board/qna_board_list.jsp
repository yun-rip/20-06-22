<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "vo.PageInfo" %>
<%@page import = "vo.BoardBean" %>
<%@page import = "java.util.*" %>
<%@page import = "java.text.SimpleDateFormat" %>          

<%
	ArrayList<BoardBean> articleList = (ArrayList<BoardBean>)request.getAttribute("articleList");
	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount = pageInfo.getListCount();
	int nowPage = pageInfo.getPage();
	int maxPage = pageInfo.getMaxPage();
	int startPage = pageInfo.getStartPage();
	int endPage = pageInfo.getEndPage();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR"/>
<title>Insert title here</title>
<style type="text/css">
#registForm {
	width: 500px;
	height: 600px;
	border: 1px solid red;
	margin: auto;
}

h2 {
	text-align: center;
}

table {
	margin: auto;
	width: 450px;
}

#tr_top {
	background: orange;
	text-align: center;
}

#pageList {
	margin: auto;
	width: 500px;
	text-align: center;
}

#emptyArea {
	margin: auto;
	width: 500px;
	text-align: center;
}
</style>
</head>
<body>
	<section id = "listForm">
		<h2>
			�� ���<a href = "boardWriteForm.bo">�Խ��Ǳ۾���</a>
		</h2>
		<table>
			<%
			if (articleList != null && listCount > 0){
			%>
			
				<tr id = "tr_top">
					<td>��ȣ</td>
					<td>����</td>
					<td>�ۼ���</td>
					<td>��¥</td>
					<td>��ȸ��</td>
				</tr>
				<%
				for (int i = 0; i<articleList.size(); i++){
				%>
				<tr>
					<td><%=articleList.get(i).getBOARD_NUM() %></td>
					
					<td>
						<%if(articleList.get(i).getBOARD_RE_LEV()!=0){ %>
						<%for (int a=0; a <= articleList.get(i).getBOARD_RE_LEV()*2; a++){  %>
						&nbsp; <%} %> �� <%}else{ %> �� <%} %>
						<a href ="boardDetail.bo?board_num=<%=articleList.get(i).getBOARD_NUM()%>&page= <%=nowPage %>">
							<%=articleList.get(i).getBOARD_SUBJECT()%>
						</a>
					</td>
					
					<td><%=articleList.get(i).getBOARD_NAME() %></td>
					<td><%=articleList.get(i).getBOARD_DATE() %></td>
					<td><%=articleList.get(i).getBOARD_READCOUNT() %></td>
				</tr>
				<%} %>
		</table>
	</section>
	
	<section id = "pageList">
		<%if (nowPage<=1) { %>
		[����]&nbsp;
		<%}else{ %>
		<a href = "boardList.bo?page=<%=nowPage-1 %>">[����]</a>&nbsp;
		<%} %>
		
		<%for (int a = startPage; a<=endPage; a++){
					if (a==nowPage){%>
		[<%=a %>]
		<%}else{ %>
		<a href = "boardList.bo?page<%=a %>">[<%=a %>]
		</a>&nbsp;
		<%} %>
		<%} %>
		
		<%if(nowPage>=maxPage){ %>
		[����]
		<%}else{ %>
		<a href = "boardList.bo?page=<%=nowPage+1 %>">[����]</a>
		<%} %>
		
	</section>
	<%}else{ %>
	<section id = "emptyArea">��ϵ� ���� �����ϴ�.</section>
	<%} %>
</body>
</html>