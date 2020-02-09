<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>





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
	input::placeholder{
	
	color:gray;
	
	font-size:30px;
	
	
	}
	

}


</style>




<html>


<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>게시판 목록</title>
<script>

function num(){
	
	
	
	alert('로그인을 하신후에 글을 작성 하실수 있습니다');
	location.href"login";
	
}

</script>
</head>



<body>



 <c:if test="${member == null }">

   
<div class="main">
	

<ul><a href="" ><li style="color:white;"> d</li></a></ul>
<ul><a href="main.jsp" style="color:white"><li> <h4>메인페이지</h4></li></a></ul>
<ul><a href="#" style="color:black; position:relative; left:116px; bottom:10px;"><li> <h1>LOGO</h1></li></a></ul>

<ul><a href="hw" style="position:relative; left:710px;"><li><h4>회원가입</h4></li></a></ul>
<ul><a href="login" style="position:relative; left:470px;"><li> <h4>로그인</h4></li></a></ul>

</div>



<h2 style="position:relative; right:1299px;">자유 게시판</h2>



<table  width="880" style="color:gray; position:relative; width:1200px; left:300px; border-top:1px solid black;">

 
   
        <tr>

        <td width="77" style=" border-bottom:1px solid WhiteSmoke; color:black;">

            <p align="center"><h5>번호</h5></p>

        </td>

        <td width="327" style=" border-bottom:1px solid WhiteSmoke; color:black;">

            <p align="center"><h5>제목</h5></p>

        </td>

        <td width="197" style=" border-bottom:1px solid WhiteSmoke; color:black;">

            <p align="center"><h5>작성자</h5></p>

        </td>

        <td width="155" style="border-bottom:1px solid WhiteSmoke; color:black;">

            <p align="center"><h5>작성일</h5></p>

        </td>

        <td width="90" style="border-bottom:1px solid WhiteSmoke; color:black;">

            <p align="center"><h5 style="position:relative; left:90px;">조회수</h5></p>

        </td>

        </tr>

        

        <c:forEach items="${list}" var="boardVO">

	<tr>

        <td style="color:gray; border-bottom:1px solid WhiteSmoke;  font-size:14px;">${boardVO.bno}</td>
        
      

        <td style="border-bottom:1px solid WhiteSmoke;"><a href='/read?bno=${boardVO.bno}' style="color:black; font-size:13px; text-decoration:none;">${boardVO.title}</a></td>
      

        <td style="border-bottom:1px solid WhiteSmoke; font-size:14px;" >${boardVO.writer}</td>

        <td style="border-bottom:1px solid WhiteSmoke; font-size:14px;"><fmt:formatDate pattern="yyyy-MM-dd HH:mm"

				value="${boardVO.regdate}" /></td>

        <td style="border-bottom:1px solid WhiteSmoke; font-size:14px;"><span class="badge bg-red" style="color:gray; position:relative; left:93px;">${boardVO.viewcnt}</span></td>
        

	</tr>

		</c:forEach>

    </table>
    <c:if test="${pageMaker.prev}" >

				<a href ="listPage${pageMaker.makeQuery(pageMaker.startPage - 1) }" style="position:relative; left:810px; top:40px;">«</a>

			</c:if>



			<c:forEach begin="${pageMaker.startPage }"

				end="${pageMaker.endPage }" var="idx">





				<c:out value="${pageMaker.cri.page == idx?'':''}" />

				<a href="listPage${pageMaker.makeQuery(idx)}" style="position:relative; left:810px; top:40px; ">${idx} </a>





			</c:forEach>



			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">



				<a href="listPage${pageMaker.makeQuery(pageMaker.endPage +1) }" style="position:relative; left:810px; top:40px;" > » </a>

 

			</c:if> <br>
            
           
   
 


 

   
  
   
<form>

     <button type ="button" onclick="alert('로그인을 해주세요');" style="position:relative; left:1440px; background-color:tomato;  height:30px;color:white;">글쓰기</button>
     
     
     </form> 
     
     
       <br>
       <form>
        <input type="text" placeholder="검색어를 입력해주세요" style="position:relative; left:630px; width:500px; height:60px; font-size:30px; ">
        <input type="submit" value="검색" style="position:relative; left:630px; height:66px;  width:75px; bottom:4px;">
       </form>
   
     
     <div class="footer" style="border:1px solid black; height:135px;  position:relative; top:237px; background-color:white; border:0px; " >
     
     
    
     <hr style="position:relative; top:0px;">
     
<ul><li><a href="" style="color:black;"><h4>회사소개</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>쇼핑가이드</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>개인정보보호정책</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>이용약관</h4></a></li></ul>


</div>

   </body>

   

</html>
</c:if>

 
 
 <c:if test="${member != null }">

<div class="main">
	

<ul><a href="" ><li style="color:white;"> d</li></a></ul>
<ul><a href="main.jsp" style="color:white"><li> <h4>메인페이지</h4></li></a></ul>
<ul><a href="#" style="color:black; position:relative; left:116px; bottom:10px;"><li> <h1>LOGO</h1></li></a></ul>

<ul><a href="logout" style="position:relative; left:710px;"><li><h4>로그아웃</h4></li></a></ul>
<ul><a href="#" style="position:relative; left:470px;"><li> <h4>${member.userid }</h4></li></a></ul>

</div>



<h2 style="position:relative; right:1299px;">자유 게시판</h2>



<table  width="880" style="color:gray; position:relative; width:1200px; left:300px; border-top:1px solid black;">

 
   
        <tr>

        <td width="77" style=" border-bottom:1px solid WhiteSmoke; color:black;">

            <p align="center"><h5>번호</h5></p>

        </td>

        <td width="327" style=" border-bottom:1px solid WhiteSmoke; color:black;">

            <p align="center"><h5>제목</h5></p>

        </td>

        <td width="197" style=" border-bottom:1px solid WhiteSmoke; color:black;">

            <p align="center"><h5>작성자</h5></p>

        </td>

        <td width="155" style="border-bottom:1px solid WhiteSmoke; color:black;">

            <p align="center"><h5>작성일</h5></p>

        </td>

        <td width="90" style="border-bottom:1px solid WhiteSmoke; color:black;">

            <p align="center"><h5 style="position:relative; left:90px;">조회수</h5></p>

        </td>

        </tr>

        

        <c:forEach items="${list}" var="boardVO">

	<tr>

        <td style="color:gray; border-bottom:1px solid WhiteSmoke;  font-size:14px;">${boardVO.bno}</td>
        
      

        <td style="border-bottom:1px solid WhiteSmoke;"><a href='/read?bno=${boardVO.bno}' style="color:black; font-size:13px; text-decoration:none;">${boardVO.title}</a></td>
      

        <td style="border-bottom:1px solid WhiteSmoke; font-size:14px;" >${boardVO.writer}</td>

        <td style="border-bottom:1px solid WhiteSmoke; font-size:14px;"><fmt:formatDate pattern="yyyy-MM-dd HH:mm"

				value="${boardVO.regdate}" /></td>

        <td style="border-bottom:1px solid WhiteSmoke; font-size:14px;"><span class="badge bg-red" style="color:gray; position:relative; left:93px;">${boardVO.viewcnt}</span></td>
        

	</tr>

		</c:forEach>

    </table>
    <c:if test="${pageMaker.prev}" >

				<a href ="listPage${pageMaker.makeQuery(pageMaker.startPage - 1) }" style="position:relative; left:810px; top:40px;">«</a>

			</c:if>



			<c:forEach begin="${pageMaker.startPage }"

				end="${pageMaker.endPage }" var="idx">





				<c:out value="${pageMaker.cri.page == idx?'':''}" />

				<a href="listPage${pageMaker.makeQuery(idx)}" style="position:relative; left:810px; top:40px; ">${idx} </a>





			</c:forEach>



			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">



				<a href="listPage${pageMaker.makeQuery(pageMaker.endPage +1) }" style="position:relative; left:810px; top:40px;" > » </a>

 

			</c:if> <br>
            
           
   
 


 

   
   <form action="regist" method="get">
   

     <button type ="submit" style="position:relative; left:1440px; background-color:tomato;  height:30px;color:white;">글쓰기</button>
     
     
       </form>
       <br>
       
       <form action="serchselect" method="get">
       
        <input type="text" name="serch" id="serch" placeholder="검색어를 입력해주세요" style="position:relative; left:630px; width:500px; height:60px; font-size:30px; ">
        
        <input type="submit" value="검색" style="position:relative; left:630px; height:66px;  width:75px; bottom:4px;">
        
       </form>
   
     
     <div class="footer" style="border:1px solid black; height:135px;  position:relative; top:237px; background-color:white; border:0px; " >
     
     
    
     <hr style="position:relative; top:0px;">
     
<ul><li><a href="" style="color:black;"><h4>회사소개</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>쇼핑가이드</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>개인정보보호정책</h4></a></li></ul>
	<ul><li><a href="" style="color:black;"><h4>이용약관</h4></a></li></ul>


</div>

   </body>

   

</html>
</c:if>

