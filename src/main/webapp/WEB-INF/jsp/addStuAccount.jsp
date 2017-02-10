<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>增加用户</title>

<script type="text/javascript">
	function check(obj){
		var username = obj;
		var checkUserNameResult = document.getElementById("checkUserNameResult");
		if(username.trim().length==0){
			checkUserNameResult.innerHTML="输入不能为空";
			obj.focus();
		}else{
			checkUserNameResult.innerHTML="";
		}
	}
</script>

</head>
<body>
	<form action="/firstt/admin/addStuAccount" method="post">
		学号:
		<input type="text" name="sno" onblur="check(this.value);"/>
			<span id="checkUserNameResult" style="color:red"></span><br/>
		<input type="submit" value="提交">
	</form>
</body>
</html>