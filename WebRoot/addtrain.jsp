<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ӻ���Ϣ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script>
	function check(){
		var f = document.form1;
		if(f.qidian.value == f.zhongdian.value){
			alert("�����յ㲻����ͬ��");
			return false;
		}
		//�ж�Ʊ��
		if(f.piaojia.value == "")
		{
			alert("Ʊ�۲���Ϊ�գ�");
			return false;
		}
		if(f.piaojia.value.subString(0,1) == " ")
		{
			alert("��һλ����Ϊ�գ�");
			return false;
		}
		if(isNaN(f.piaojia.value) == ture)
		{
			alert("Ʊ�۱���Ϊ���֣�");
		}
		//�ж�ʣ��Ʊ��
		if(f.shengyu.value == "")
		{
			alert("Ʊ������Ϊ�գ�");
			return false;
		}
		if(f.shengyu.value.subString(0,1) == " ")
		{
			alert("��һλ����Ϊ�գ�");
			return false;
		}
		if(isNaN(f.shengyu.value) == ture)
		{
			alert("Ʊ������Ϊ���֣�");
		}
	}
	</script>

  </head>
  <body  background="images/003.jpg">
	<center>
	<p>&nbsp;</p>
	<p align="center" class="style1">��ӻ���Ϣ</p>
	<hr>
			<%
				String message = (String)session.getAttribute("message");
			%>
				<font size="5" color="#FF0000"><%=message%></font>
	</center>
	<center>
    <form name="form1" method="post" action="AddTrainServlet" onSubmit="return check()">
					<table width="280"cellpadding="1" cellspacing="1" border="1" align="center">
						<tr>
							<td width="100" height="12" align="center">&nbsp;����</td>
							<td>
								<div align="center">
									<select name="checi">
										<option value="K234">K234</option>
										<option value="T261">T261</option>
										<option value="K104">K104</option>
										<option value="1024">1024</option>
										<option value="1023">1023</option>
										<option value="T934">T934</option>
										<option value="K310">K310</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<td width="100" height="12" align="center">���</td>
							<td>
								<div align="center">
									<select name="qidian">
										<option value="���">���</option>
										<option value="����">����</option>
										<option value="����">����</option>
										<option value="�Ϻ�">�Ϻ�</option>
										<option value="֣��">֣��</option>
										<option value="����">����</option>
										<option value="�ɶ�">�ɶ�</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<td width="100" height="12" align="center">�յ�</td>
							<td>
								<div align="center">
									<select name="zhongdian">
										<option value="���">���</option>
										<option value="����">����</option>
										<option value="����">����</option>
										<option value="�Ϻ�">�Ϻ�</option>
										<option value="֣��">֣��</option>
										<option value="����">����</option>
										<option value="�ɶ�">�ɶ�</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<td width="100" height="12" align="center">ʱ��</td>
							<td>
								<div align="center">
									<input type="text" name="shijian" id="shijian">
								</div>
							</td>
						</tr>
						<tr>
							<td width="100" height="12" align="center">Ʊ��</td>
							<td>
								<div align="center">
									<input type="text" name="piaojia" id="piaojia">
								</div>
							</td>
						</tr>
						<tr>
							<td width="100" height="12" align="center">ʣ��Ʊ��</td>
							<td>
								<div align="center">
									<input type="text" name="shengyu" id="shengyu">
								</div>
							</td>
						</tr>						
					</table>
					<p align="center">
						<input name="tianjia" type="submit" id="tianjia" value="���">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="fanhui" type="button" id="fanhui" value="����" onclick="back()">
					</p>
				</form>
		</center>
  </body>
</html>
<script type="text/javascript">
function back(){
	var frm = form1;
	frm.action = "main.jsp";
	frm.submit();
	return;
}
</script>
