<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��ҳ��</title>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<script language="javascript" type="text/javascript" src="js/javascript.js"></script>
</head>
<script language="javascript" type="text/javascript" src="js/zimu.js"></script>
<script language="javascript">
	function  check(){
		var f = document.form1;
		if(f.qidian.value == f.zhongdian.value){
			alert("�����յ㲻����ͬ��");
			return false;
		}
		else return true;
	}
</script>

<body onLoad="glowtext()"onResize="fix()"onScroll="fix()" >
	<div id="wrap">
	<div id="header">
		<div  align="center" id="glowdiv" style="position:absolute; visibility:visible; width:649px; text-align:center; top:6px; font-family:����; font-size:30pt; color:000000; height: 60px; right:150px;">  
</div>
	</div>
	<div class="clear"></div>
      <div id="top">
	  	<div class="clear"></div>
			<ul id="nav2">
				<li><a href="#">��ҳ</a></li>
				<li><a href="ModifyServlet?param=0">�޸ĸ�����Ϣ</a></li>
				<li><a href="ViewServlet?param=0">�鿴������Ϣ</a></li>
				<li><a href="passwordmodify.jsp">�޸�����</a></li>
				<li><a href="AddServlet">��ӻ�Ʊ��Ϣ</a></li>
				<li><a href="#">����</a></li>
		</ul>
	  </div>
	  <div class="clear"></div>
	  
      <div id="content">	  
        <div id="sub"><!-- �Ҹ���-->
	         <p align="center">�������վ</p>
		   		<img src="images/002.jpg"/>
        </div>
		   <div id="sub2">
				<hr>
				<p align="center"><font size="6" color="blue">
				��ӭ��<%=session.getAttribute("userName")%>���뱾ϵͳ
				</font></p>
				<hr>
		   		<p align="center">��ѯ��Ʊ��Ϣ</p>
		   		<form name="form1" method="post" action="QueryServlet" onSubmit="return check()">
					<table width="280"cellpadding="1" cellspacing="1" border="1" align="center">
						<tr>
							<td width="100" height="12" align="center">����</td>
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
					</table>
					<p align="center">
						  		<input name="chaxun" type="submit" id="chaxun" value="��ѯ">
					</p>
				</form>
        </div>		   
	  </div>
	  
	  <div class="clear"></div>
	  
      <div id="footer">
	  		<ul>
				<li><a href="#">С��</a></li>
				<li><a href="#">���ܺͰ�ȫ</a></li>
				<li><a href="#">��ϵ����</a></li>
				<li><a href="#">��������</a></li>
				<li><a href="#">�ٱ�����</a></li>
				<li><a href="#cn">��ɺ��̱�</a></li>
				<li><a href="#">��Ʒ���Э��</a></li>
				<li><a href="#">���ͷ���</a></li>
        	</ul>
        <div class="clear"></div>
		<center>
        <p id="copyright">��Ȩ���� 2009 ������С�� <a href="#">��������Ȩ��</a>��</p>
        <p id="terms">ʹ�ô���վ����ʾ��ͬ�����<a href="#">ʹ������</a>��</p>
        <p id="searchengine">�� <a href="#" target="new">Baidu</a> �ṩ����֧��<br>
            Ӣ����ҳ</p>
		</center>
    </div>
	  
	  </div>
	</div>
</body>
</html>
