<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <style>
	#board_write {
	width:900px;
	position:relative;
	margin:0 auto;
}
#write_area {
	margin-top:70px;
	font-size:14px;}
#in_name {
	margin-top:30px;
}
#in_name textarea {
	font-weight:bold;
	font-size:26px;
	color:#333;
	width: 900px;
	border:none;
	resize: none;
}
#in_title {
	margin-top:30px;
}
#in_title textarea {
	font-weight:bold;
	font-size:26px;
	color:#333;
	width: 900px;
	border:none;
	resize: none;
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
	width: 900px;
	height: 400px;
	resize: none;
}
#in_pw input {0
	font:14px;
	margin-top:10px;
}
.bt_se {
	margin-top:20px;
	text-align:center;
}
.bt_se button {
	width:100px;
	height:30px;
}
body{
	 margin:0px;
	 overflow-x:hidden;
	 overflow-y:auto;
	
	}
  </style>




 </head>
 <body>
 <script>
 
function cancle(){
	
	
	if(confirm('글 수정을 취소 하시겠습니까?')){
		
		
		location.href="read?bno=${boardVO.bno}";
		
		
		
	}else{
		
		
		
		
		location.href="modify?bno=${boardVO.bno}";
		
		
	}
	
}


</script>

 
 <c:if test="${member.userid!=boardVO.writer }" >
 
  <script>
  
  alert('권한이 없습니다');
  
  location.href="read?bno=${boardVO.bno}";
  
  
  
  
  </script>
  
  
 
 
 </c:if>
 
 
 
  
 
 

 
 

 <form action="modify" method="POST">
 
  <input type="text" name="bno" style="color:white; border:0px;" value="${boardVO.bno}"> </input>

	 <div id="board_write">
      
        <h4>게시글을 작성해 주세요</h4>
            <div id="write_area">


                
                    <div id="in_title">
                        <textarea name="title" id="title" rows="1" cols="55" placeholder="제목" maxlength="100" >${boardVO.title}</textarea>
                    </div>
                    <div class="wi_line"></div>
                    <div id="in_name">
                        <textarea name="writer" id="writer" rows="1" cols="55" placeholder="글쓴이" maxlength="100"  readonly="readonly" >${boardVO.writer}</textarea>
                    </div>
                    <div class="wi_line"></div>
                    <div id="in_content">
                        <textarea name="content" id="content" placeholder="내용" >${boardVO.content}</textarea>
                   
                   
                    <div class="bt_se">
                        <button type="submit" style="height:40px; background-color:#9999cc;  position:relative; color:white; right:100px; border-radius:7px;">작성</button>
                    </div>

                           
	
 </form>
 
 <button type="button" onclick="cancle();" style="height:40px; border:0px; color:black; position:relative; bottom:40px; width:100px;  color:white;left:500px; border-radius:7px;">취소</button>

</body>

</html>



