<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>비에실까 로또</title>
</head>
<body>
<h1>비에실까 로또</h1>
 <p>이 사이트는 무료로 번호를 드립니다!</p>
 <br>
 <h2>번호 뽑기</h2>
 
 <p>구매 횟수 
	 <select id='buyLine'>
	 	<option value='5'>5줄</option>
	 	<option value='10'>10줄</option>
	 	<option value='15'>15줄</option>
	 	<option value='20'>20줄</option>
	 </select>
	 <span><button id ="getNumber" type="button">번호 뽑기</button></span> 
 </p>
 
</body>
</html>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  


$('#getNumber').on("click", function() { 
	rootUrl = "http://localhost:8080/"
	
	$.ajax({
		type: "POST",
		url: rootUrl + "getBoard",
		data: {buyLine : $('#buyLine').val()},
		success: function(res) {
			var str = "";
			
			for (var i = 0; i < $('#buyLine').val(); i++) {
				str += res.lists[i].NO1+" "+res.lists[i].NO2+" "+res.lists[i].NO3+" "+res.lists[i].NO4+" "+res.lists[i].NO5+" "+res.lists[i].NO6+ "\n" 
			}  
				
			alert(str);
		}, 
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			alert("통신실패!");
		}
	});
})

</script>