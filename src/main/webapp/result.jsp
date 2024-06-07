<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 request.setCharacterEncoding("UTF-8");
 String name = request.getParameter("name");
 String _age = request.getParameter("age");
 String blood_type = request.getParameter("blood_type");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎 - 演習問題3</title>
</head>
<body>
	<h1>Java基礎 - 演習問題3</h1>
		<p>ロボットからの返信</p>
			<div>
				こんにちは、<%= name != null && !name.isEmpty() ? name : "名無し"  %>さん!
				<%
					if("ロボット".equals(name)){
						out.println("私と同じ名前ですね!");
					}
				%>
			
			</div>
			<div>
				<%
				 int age = -1;
				 if(_age != null && !_age.isEmpty()){
						try{
							age = Integer.parseInt(_age);
						} catch (NumberFormatException e){
							out.println("年齢の形式が正しくありません。");
						}
					}else{
						out.println("年齢が入力されていません。");
					}
				 
					if(age != -1){
						if(age == 20){
							out.println("私と同い年ですね!");
						}else if(age >= 20){
							int kekka = age -20;
							out.println("私より、" + kekka + "歳年上ですね!");
						}else{
							int kekka = 20 - age;
							out.println("私より、" + kekka + "歳年下ですね!");
						}
					}
				%>
			</div>
			<div>
				<%
					switch (blood_type){
						case "typeA":
							out.println("私もA型です!");
							break;
						case "typeB":
							out.println("B型の人と話すのは初めてです!");
							break;
						case "typeO":
							out.println("私の父がO型です!");
							break;
						case "typeAB":
							out.println("私の母がAB型です!");
							break;
					}
				%>
			</div>
</body>
</html>