<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎 - 演習問題3</title>
</head>
<body>
	<h1>Java基礎 - 演習問題3</h1>
	<p>ロボットへメッセージの送信</p>
	<form action="result.jsp" method="post">
		<div>名前:<input type="text" name="name"></div>
		<div>年齢:<input type="text" name="age"></div>
		<div>
			<input type="radio" name="blood_type" value="typeA">A型
			<input type="radio" name="blood_type" value="typeB">B型
			<input type="radio" name="blood_type" value="typeO">O型
			<input type="radio" name="blood_type" value="typeAB">AB型
		</div>
		<button type="submit">送信</button>
	</form>
</body>
</html>