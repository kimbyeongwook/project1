
<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




<!DOCTYPE html> 



<html>
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
	 overflow-x:hidden;
	 overflow-y:hidden;
	
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

}
.wi_line {
	border:solid 1px lightgray;
	margin-top:10px;
}
#in_content {
	margin-top:10px;
}
#in_content textarea {
	font:14px;
	color:#333;
	width: 950px;
	height: 400px;
	resize: none;
	border:0px;
}


}

</style>
<head>

<title>글읽기</title>

</head>

<form>

<body>


<c:if test="${member != null}">



<div class="main">
	

<ul><a href="" ><li style="color:white;"> d</li></a></ul>
<ul><a href="main.jsp" style="color:white"><li> <h4>메인페이지</h4></li></a></ul>
<ul><a href="#" style="color:black; position:relative; left:110px; bottom:10px;"><li> <h1>LOGO</h1></li></a></ul>

<ul><a href="logout" style="position:relative; left:710px;"><li><h4>로그아웃</h4></li></a></ul>
<ul><a href="#" style="position:relative; left:470px;"><li> <h4>${member.userid }</h4></li></a></ul>


</div>
 <form>
				<h1  name ="title" style="color:black; position:relative; right:1206px; border:0px; "> ${boardVO.title}</h1>			
			 
		</tr>
		<tr>
		<div id="menu1" style="font-size:12px; position:relative; left:363px; color:gray;">
			<h3><td  align="center" name ="writer" class="Td">  <input type="text" name ="writer" value ="${boardVO.writer}" readonly="readonly" style="border:0px; position:relative; top:34px; left:48px;"> </td></h3>
			<td style="width: 500px" name ="title"></td>
			
			<div style="position:relative; left:650px">
			<td  align="center" class="Td" > ${boardVO.regdate }</td>	
			<td  align="center" class="Td" name ="viewcnt">조회수: ${boardVO.viewcnt }</td>
			
		</tr>
		<button type="submit" formaction="modify" formmethod="get" style="color:gray; position:relative; left:0px; border:0px;">수정</button>
		<button type="submit" formaction="listPage" formmethod="get" style="color:gray; position:relative; left:0px; border:0px;">목록</button>
 
     <button   type="submit" formaction="removeselect" formmethod="get" style="color:gray; position:relative; left:0px; border:0px;">삭제</button>
     
     <hr style="position:relative; right:1063px; border:2px solid WhiteSmoke; width:958px;">
     </div>
        </div>
        
		<tr>
			<td class="Td" colspan="4" style="height: 500px; padding: 10px;">

			<br>
			    <div id="bonmun" style="border-bottom:1px solid white; ; margin:0; height:700px; width:960px; position:relative; left:410px;" >
				
              
               
               
             <div class="wi_line"></div>
                    <div id="in_content">
                        <textarea name="content" id="content" placeholder="내용"  readonly="readonly" >${boardVO.content}</textarea>
              
              
          </div> 
           <hr style="position:relative;  border:2px solid WhiteSmoke; width:958px;">
		
		
  </div>
  
<input type="text" name ="bno" value ="${boardVO.bno}" readonly="readonly" style="border:0px; color:white;">

</form>


   




<div class="footer" style="border:1px solid black; height:135px;  position:relative; bottom:146px; background-color:white; border:0px; " >
	<hr>
<ul><li><a href="" style="color:black;"><h4>회사소개</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>쇼핑가이드</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>개인정보보호정책</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>이용약관</h4></a></li></ul>
</div>

</body>



</html>


</c:if>

<c:if test="${member == null}">


<div class="main">
	

<ul><a href="" ><li style="color:white;"> d</li></a></ul>
<ul><a href="main.jsp" style="color:white"><li> <h4>메인페이지</h4></li></a></ul>
<ul><a href="#" style="color:black; position:relative;  left:110px; bottom:10px;"><li> <h1>LOGO</h1></li></a></ul>

<ul><a href="hw" style="position:relative; left:710px;"><li><h4>회원가입</h4></li></a></ul>
<ul><a href="login" style="position:relative; left:470px;"><li> <h4>로그인</h4></li></a></ul>


</div>
 <form>
				<h1  name ="title" style="color:black; position:relative; right:1206px; border:0px; "> ${boardVO.title}</h1>			
			 
		</tr>
		<tr>
		<div id="menu1" style="font-size:12px; position:relative; left:363px; color:gray;">
			<h3><td  align="center" name ="writer" class="Td">  <input type="text" name ="writer" value ="${boardVO.writer}" readonly="readonly" style="border:0px; position:relative; top:34px; left:48px;"> </td></h3>
			<td style="width: 500px" name ="title"></td>
			
			<div style="position:relative; left:650px">
			<td  align="center" class="Td" > ${boardVO.regdate }</td>	
			<td  align="center" class="Td" name ="viewcnt">조회수: ${boardVO.viewcnt }</td>
			
		</tr>
		<button type="submit" formaction="modify" formmethod="get" style="color:gray; position:relative; left:0px; border:0px;">수정</button>
		<button type="submit" formaction="listPage" formmethod="get" style="color:gray; position:relative; left:0px; border:0px;">목록</button>
 
     <button   type="submit" formaction="removeselect" formmethod="get" style="color:gray; position:relative; left:0px; border:0px;">삭제</button>
     
     <hr style="position:relative; right:1063px; border:2px solid WhiteSmoke; width:958px;">
     </div>
        </div>
        
		<tr>
			<td class="Td" colspan="4" style="height: 500px; padding: 10px;">

			<br>
			    <div id="bonmun" style="border-bottom:1px solid white; ; margin:0; height:700px; width:960px; position:relative; left:410px;" >
				
              
               
               
             <div class="wi_line"></div>
                    <div id="in_content">
                        <textarea name="content" id="content" placeholder="내용"  readonly="readonly" >${boardVO.content}</textarea>
              
              
          </div> 
           <hr style="position:relative;  border:2px solid WhiteSmoke; width:958px;">
		
		
  </div>
  
  
<input type="text" name ="bno" value ="${boardVO.bno}" readonly="readonly" style="border:0px; color:white;">

<hr style="position:relative; bottom:148px;">


	
 <div class="footer" style="border:1px solid black; height:135px;  position:relative; bottom:146px; background-color:white; border:0px; " >
	
<ul><li><a href="" style="color:black;"><h4>회사소개</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>쇼핑가이드</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>개인정보보호정책</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>이용약관</h4></a></li></ul>
</div>


</form>


   


</body>



</html>


</c:if>