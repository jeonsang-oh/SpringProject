<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�񿡽Ǳ� �ζ�</title>
</head>
<body>
<h1>�񿡽Ǳ� �ζ�</h1>
 <p>�� ����Ʈ�� ����� ��ȣ�� �帳�ϴ�!</p>
 <br>
 <h2>��ȣ �̱�</h2>
 
 <p>���� Ƚ�� 
	 <select id='buyLine'>
	 	<option value='5'>5��</option>
	 	<option value='10'>10��</option>
	 	<option value='15'>15��</option>
	 	<option value='20'>20��</option>
	 </select>
	 <span><button id ="getNumber" type="button">��ȣ �̱�</button></span> 
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
			alert("��Ž���!");
		}
	});
})

</script>