
    <%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>




 

<c:if test="${member.userid == 'admin'}" >
 
  <script>
  
  if(confirm('정말로 삭제 하시겠습니까?')){
	  
	  location.href="remove?bno=${bno}"
	  
			  
	  
  }else{
	  location.href="read?bno=${bno}"
			  
			  
			  
			  
			  
  }
  
  </script>
  
  
  </c:if>

<c:if test="${member.userid != writer}" >
 
  <script>
  
  alert('권한이 없습니다');
  
  
   location.href="read?bno=${bno}"
  
  
  
  </script>
 
 
 </c:if>
 
 <c:if test="${member.userid == writer}" >
 
  <script>
  
  if(confirm('정말로 삭제 하시겠습니까?')){
	  
	  location.href="remove?bno=${bno}"
	  
			  
	  
  }else{
	  location.href="read?bno=${bno}"
			  
			  
			  
			  
			  
  }
  
  
 
  
  
		  
  </script>
 
 
 </c:if>
  
  
 



</body>
</html>