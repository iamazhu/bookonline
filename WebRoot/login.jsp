<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�û���¼</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/style.css">

	<script type="text/javascript">
	function od()
	{
		var f=document.form1;
		if(f.name.value=="")
		{
			alert("�û���δ����");
			f.name.focus();
			f.name.select();
			return;
		}
		if(f.password.value=="")
		{
			alert("����δ����");
			f.password.focus();
			f.password.select();
			return;
		}
	}
	
	</script>
  </head>
  
  <body background="images/003.jpg">
    <center>
	<p align="center" class="style1 style3">��ӭ���붩Ʊϵͳ</p>
	<hr>
	<center>
			<%
				String message = (String)session.getAttribute("message") == null?"":(String)session.getAttribute("message");
				if(message != "" || !message.equals("")){
			%>
				<font size="5" color="#FF0000"><%=message%></font>
			<%
			}
			%>
	</center>		
		<form method="post" name="form1" action="LoginServlet" onSubmit="return od()">
			<table width="230" border="1" align="center" cellpadding="0" cellspacing="0">
					<tr>
					<td width="86" height="46"><div align="center">�û���:</div></td>
					<td width="138">
					<div align="center">
						<input name="userName" type="text" id="name" size="15">
					</div>
					</td>
					</tr>
		<tr>
			<td height="48"><div align="center">�� &nbsp;��:</div></td>
			<td>
				<div align="center">
					<input name="password" type="password" id="password" size="15">
				</div>
			</td>
		</tr>
		</table>
			<p align="center">
    			<input name="Sub1" type="submit" value="�ύ">
    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<input name="reset" type="reset" value="����">
			</p>
		</form>
		<a href="register.jsp">ע��</a>
		</center>
  </body>
</html>
  </body>
</html>
