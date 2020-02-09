<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>
	#menu a:hover{
	
	
	 color:#0099ff;
	
	}
		.main{
	
	 outline:0px dotted  black;

	 height:50px;

	 
      position:relative;

	  left:0px;
      background-color:white;
	   box-shadow:5px 5px 5px 5px WhiteSmoke;
	 
	
	}
	.main >ul{
	
	 float:left;
	list-style:none;
       width:15%;

	   color:white;

 position:relative;

	 bottom:19px;
	   }
	 a{	
	
    font-size:15px; color:black;
	text-decoration:none;

	 font-family: 'Nanum Gothic', sans-serif;

	}

.main >ul >a{
	
   color:black;
   
  
	
	}
.main >ul >a:hover{
	color:#6666ff;
	
	}
	body{
	 margin:0px;
	
	}
	.footer >ul{
	
	 list-style:none;

	 float:left;

	 color:white;
	
	}
	.footer >ul >li >a{
	
	 position:relative;

	 left:650px;
	  text-decoration:none;
	
	}

}
</style>
</head>
<body>
<div class="main">
	

<ul><a href="" ><li style="color:white;"> d</li></a></ul>
<ul><a href="main.jsp" style="color:white"><li> <h4>메인페이지</h4></li></a></ul>
<ul><a href="#" style="color:black; position:relative; left:116px; bottom:10px;"><li> <h1>LOGO</h1></li></a></ul>

<ul><a href="hww.html" style="position:relative; left:710px;"><li><h4>회원가입</h4></li></a></ul>
<ul><a href="#" style="position:relative; left:490px;"><li> <h4>로그인</h4></li></a></ul>

</div>







 
 
 <h3 style="position:relative; right:898px; top:210px;">로그인</h3>
 
<div id="login" style="position:relative; left:700px; top:400px;">
<form action="login" method="POST">
   <h4 style="position:relative; bottom:192px;"></h4><input type="text" placeholder="아이디를 입력해주세요" required name="userid" id="userid" style="height:50px; width:397px;;position:relative; bottom:205px;  border-radius:7px;" ><br>
  <br>
  <br>

  <h4 style="position:relative; right:3px; bottom:235px;"></h4><input type="password" placeholder="패스워드를 입력해주세요" required name="userpw"  id="userpw" style="height:50px; width:400px; ; position:relative; bottom:250px; right:3px;  border-radius:7px;">
  
 

  <br>
    

   <input type="submit" value="로그인 "  style="position:relative; color:white; background-color:#9999cc; bottom:220px; right:7px;  width:410px; height:50px; border-radius:7px;">
   
      
</form>
<div id="menu">
<a href="#" style="position:relative;bottom:200px; font-size:13px; right:3px; color:#0033ff;">아이디/비밀번호 찾기</a>
<a href="hw" style="position:relative; bottom:200px; font-size:13px; left:220px; color:gray;">회원가입</a>
</div>
    
    

</div>

<div class="footer" style="border:1px solid black; height:135px;  position:relative; top:440px; background-color:white; border:0px; " >
	<hr>
<ul><li><a href="" style="color:black;"><h4>회사소개</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>쇼핑가이드</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>개인정보보호정책</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>이용약관</h4></a></li></ul>
</div>
</body>
</html>