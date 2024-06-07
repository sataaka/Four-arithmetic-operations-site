<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 request.setCharacterEncoding("UTF-8");
 String _right_side = request.getParameter("right_side");
 String _left_side = request.getParameter("left_side");
 String operator = request.getParameter("operator");
 
 boolean isFormSubmitted = false;
 /*65行目と78行目でエラーをtrueにすることで、明示的にflseになった時にフォーマットの表示を消すように設定している*/
 boolean isError = false;
 
 /*右側の値がnullまたは、空文字か検証　データがあれば、trueを返す*/
 Boolean isFormSubmitted_right = _right_side != null && !_right_side.isEmpty();
 /*左側の値がnullまたは、空文字か検証　データがあれば、trueを返す*/
 Boolean isFormSubmitted_left = _left_side != null && !_left_side.isEmpty();
 
 /*初期化*/
 int right_side = -1;
 int left_side = -1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JAVA 基礎 - 演習問題3(発展)</title>
</head>
<body>
	<h1>JAVA 基礎 - 演習問題3(発展)</h1>
		<p>四則演算</p>
		<div>数値を入力してください</div>
		<%
			//入力検証
			if(_right_side != null && !_right_side.isEmpty() && _left_side != null && !_left_side.isEmpty()){
					try{
						//数値に変換
						right_side = Integer.parseInt(_right_side);
						left_side = Integer.parseInt(_left_side);
							
							//計算と結果表示
							int kekka;
							switch (operator){
							 case "addition":
								 kekka = right_side + left_side;
								 out.println(kekka + "です。");
								 break;
							 case "subtraction":
								 kekka = right_side - left_side;
								 out.println(kekka + "です。");
								 break;
							 case "multiplication":
								 kekka = right_side * left_side;
								 out.println(kekka + "です。");
								 break;
							 case "division":
								 kekka = right_side / left_side;
								 out.println(kekka + "です。");
								 break;
							 case "surplus":
								 kekka = right_side % left_side;
								 out.println(kekka + "です。");
								 break;
							}
					  //数値以外が入力された場合にエラ-表示を行う
					} catch (NumberFormatException e){
						out.println("数値の形式が正しくありません。");
						//エラーとして認識するフラグ
						isError = true;
					}
			}else {
				//右側の文字が空文字なら(false)
				if(isFormSubmitted_right){
					out.println("右側の数値が入力されていません。");
				}
				//左側の文字が空文字じゃないなら(false)
				if(isFormSubmitted_left){
					out.println("左側の形式が入力されていません。");
				}
				//エラーとして認識するフラグ
				isError = true;
			}
		%>
		<div>
			<form action="javaBasicDev3.jsp" method="post">
				<div>
				<!-- エラーフラグ -->
				<% if(isError){ %>
					<input type="text" name="right_side">
					 	<select name="operator">
					 		<option value="addition">+</option>
					 		<option value="subtraction">-</option>
					 		<option value="multiplication">*</option>
					 		<option value="division">/</option>
					 		<option value="surplus">%</option>
					 	</select> 
					<input type="text" name="left_side">
					<button type="submit">計算</button>
				</div>
				<% } %>
			</form>
		</div>
		<!-- テストでGitに新しく更新できたか確認をします。 -->
</body>
</html>