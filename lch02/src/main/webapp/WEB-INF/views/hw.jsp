<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
	   body{
	 margin:0px;
	
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
	 overflow-x:hidden;
	 overflow-y:auto;
	
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
	body{
	
	margin:0px;
	
	}
	
	

</style>
<script>
function info(){
	
	var a = document.querySelector('#userpw');
	
	var b = document.querySelector('#userpwinfo');
	if(a.value.length <8 || a.value.length >16){
		
		
		
		
		document.querySelector('#main1').innerHTML = '비밀번호는 8자이상 16자 이하입니다';
		document.querySelector('#main1').style.color= 'red';
	document.querySelector('#main').innerHTML = '비밀번호 일치';
	document.querySelector('#main').style.color= 'white';
	
			
	}else{
		
		document.querySelector('#main1').innerHTML = '비밀번호는 8자이상 16자 이하입니다';
		
		document.querySelector('#main1').style.color= 'white';	
		
		if(a.value==b.value){
			
					
			
			document.querySelector('#main').innerHTML = '비밀번호가 일치합니다.';
			document.querySelector('#main').style.color= 'blue';	
			
			 
			 
		}else if(a.value!=b.value ){
			
			
			
		 document.querySelector('#main').innerHTML= '비밀번호가 일치하지 않습니다.';
		 
		 document.querySelector('#main').style.color= 'red';	
			
		
	}
	
} 
	
}
	

	
	



	
	
	</script>
</head>
<body>

	

<div class="main">
	

<a href="" ><li style="color:white;"> d</li></a></ul>
<ul><a href="main.jsp" style="color:white"><li> <h4>메인페이지</h4></li></a></ul>
<ul><a href="#" style="color:black; position:relative; left:435px; bottom:30px;"><li> <h1>LOGO</h1></li></a></ul>

<ul><a href="hw" style="position:relative; left:1030px; bottom:20px;"><li><h4>회원가입</h4></li></a></ul>
<ul><a href="login" style="position:relative; left:790px; bottom:20px;"><li> <h4>로그인</h4></li></a></ul>


</div>




	
 <h3 style="position:relative;right:578px; top:85px;">회원가입</h3>
 
 
 <!--  <h1 style="position:relative;  left:723px;"><img src="./img/ec.jpg"  style="height:200px; width:300px;"  ></h1>-->
<div id="login" style="position:relative; left:700px; top:280px;">
<form action="hw" method="POST">
  <h4 style="position:relative; bottom:192px;"></h4><input type="text" required id="userid" name="userid" placeholder="아아디를 입력해주세요" style="height:50px; width:397px; position:relative; bottom:205px; right:640px;  "><br>
  <br>
  <br>

  <h4 style="position:relative; right:3px; bottom:235px;"></h4><input type="password"  required id="userpw"name="userpw" onchange=info() placeholder="비밀번호 입력을 해주세요 "style="height:50px; width:400px;  position:relative; bottom:250px; right:3px;">
   <span  id="main1" style="position:relative; bottom:235px; font-size:13px;"></span>
  <br>
  <br>
    <h4 style="position:relative; right:3px; bottom:259px;"></h4><input type="password" id="userpwinfo" placeholder="비밀번호를 다시 입력해 주세요"  onchange=info() required style="height:50px; width:400px;  position:relative; bottom:274px; right:2px;required;" >
    <span  id="main" style="position:relative; bottom:260px; font-size:13px;"></span>
    <br>
  <br>
      <h4 style="position:relative; right:5px; bottom:280px;"></h4> <input type="text" id="useremail" placeholder="이메일을 입력해주세요" required name="useremail"style="height:50px;  width:400px;  position:relative; bottom:293px; right:2px;">
      <br>
  <br>
	    <h4 style="position:relative; right:5px; bottom:298px;"></h4> <input type="text"  id="userage" placeholder="회원님의 나이를 입력해주세요"  required name="userage" style="height:50px; width:400px;  position:relative; bottom:313px; right:3px;">
  <br>
  <br>
  
     <h4 style="position:relative; right:7px; bottom:325px;"></h4><input type="date"  required name="date" placeholder="영문,숫자 최소 8자" style=" height:50px; width:400px;  position:relative; bottom:341px; right:6px; ">
	 

   <input type="submit" value="회원가입 " style="position:relative; color:white; background-color:#9999cc; bottom:240px; right:422px;  width:410px; height:50px; ">
   
      <input type="checkbox" style="position:relative; right:835px; bottom:290px;" > <a href="" style="color:red; font-size:12px; position:relative; right:840px; bottom:293px;">개인정보 수집에 동의하십니까?</a>
</form>
<a href="#" style="position:relative; bottom:220px; font-size:13px; right:3px; color:gray;">아이디/비밀번호 찾기</a>
<a href="login" style="position:relative;  bottom:220px; font-size:13px; left:225px; color:gray;">로그인</a>

    

</div>
<div class="footer" style="border:1px solid black; height:135px;  position:relative; top:110px; background-color:white; border:0px; " >
	<hr>
<ul><li><a href="" style="color:black;"><h4>회사소개</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>쇼핑가이드</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>개인정보보호정책</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>이용약관</h4></a></li></ul>
</div>

 

</body>
</html>