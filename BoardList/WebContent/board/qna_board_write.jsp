<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MVC �Խ���</title>
<style type="text/css">
#registForm {
	width: 500px;
	height: 610px;
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

.td_left {
	width: 150px;
	background: orange;
}

.td_right {
	width: 300px;
	background: skyblue;
}

#commandCell {
	text-align: center;
}
</style>
</head>
<body>
	<!-- �Խ��� ��� -->

	<section id="writeForm">
		<h2>�Խ��Ǳ۵��</h2>
		<form action="boardWritePro.bo" method="post"
			enctype="multipart/form-data" name="boardform">
			<table>
				<tr>
					<td class="td_left"><label for="BOARD_NAME">�۾���</label></td>
					<td class="td_right"><input type="text" name="BOARD_NAME"
						id="BOARD_NAME" required="required" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_PASS">��й�ȣ</label></td>
					<td class="td_right"><input name="BOARD_PASS" type="password"
						id="BOARD_PASS" required="required" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_SUBJECT">�� ��</label></td>
					<td class="td_right"><input name="BOARD_SUBJECT" type="text"
						id="BOARD_SUBJECT" required="required" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_CONTENT">�� ��</label></td>
					<td><textarea id="BOARD_CONTENT" name="BOARD_CONTENT"
							cols="40" rows="15" required="required"></textarea></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_FILE"> ���� ÷�� </label></td>
					<td class="td_right"><input name="BOARD_FILE" type="file"
						id="BOARD_FILE" required="required" /></td>
				</tr>
			</table>
			<section id="commandCell">
				<input type="submit" value="���">&nbsp;&nbsp; <input
					type="reset" value="�ٽþ���" />
			</section>
		</form>
	</section>
	<!-- �Խ��� ��� -->
</body>
</html>