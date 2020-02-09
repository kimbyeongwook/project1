<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page session="false"%>

<!DOCTYPE html> 

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


<html>

<head>

<title>게시판 목록</title>

</head>




<form action = "regist" method = "get">

<body>
 




<div class="main">
	

<ul><a href="" ><li style="color:white;"> d</li></a></ul>
<ul><a href="main.jsp" style="color:white"><li> <h4>메인페이지</h4></li></a></ul>
<ul><a href="#" style="color:black; position:relative; left:116px; bottom:10px;"><li> <h1>LOGO</h1></li></a></ul>

<ul><a href="hw" style="position:relative; left:710px;"><li><h4>회원가입</h4></li></a></ul>
<ul><a href="login" style="position:relative; left:490px;"><li> <h4>로그인</h4></li></a></ul>

</div>

<h2 style="position:relative; right:1299px;">자유 게시판</h2>

<table  width="880" style="color:gray; position:relative; width:1200px; left:300px;">

        <tr>

        <td width="77">

            <p align="center"><h5>번호</h5></p>

        </td>

        <td width="327">

            <p align="center"><h5>제목</h5></p>

        </td>

        <td width="197">

            <p align="center"><h5>작성자</h5></p>

        </td>

        <td width="155">

            <p align="center"><h5>작성일</h5></p>

        </td>

        <td width="90">

            <p align="center"><h5>조회수</h5></p>

        </td>

        </tr>

        

        <c:forEach items="${list}" var="boardVO">

	<tr>

        <td style="color:black;">${boardVO.bno}</td>

        <td><a href='/read?bno=${boardVO.bno}' style="color:black; text-decoration:none;">${boardVO.title}</a></td>

        <td>${boardVO.writer}</td>

        <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"

				value="${boardVO.regdate}" /></td>

        <td><span class="badge bg-red" style="color:gray;">${boardVO.viewcnt}</span></td>
        

	</tr>

		</c:forEach>

    </table>






     <button type ="submit" style="position:relative; left:1340px;">글쓰기</button>
     
     
     <div class="footer" style="border:1px solid black; height:135px;  position:relative; top:520px; background-color:white; border:0px; " >
     <hr>
<ul><li><a href="" style="color:black;"><h4>회사소개</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>쇼핑가이드</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>개인정보보호정책</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>이용약관</h4></a></li></ul>


</div>

   </body>

    </form>

</html>

