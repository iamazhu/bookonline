<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�޸ĸ�����Ϣ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script language="javascript">
	function User()
{
	var f=document.form1;
	if(f.userName.value=="")
	{
		alert("���ֲ���Ϊ��");
        f.userName.focus();
        f.userName.select();
		return false;
	}
    if(f.userName.value.substring(0,1)==" ")
     {
        alert("��һλ����Ϊ��");
        f.userName.focus();
        f.userName.select();
        return false;
     }
	if(f.userName.value.length<8)
	{
		alert("�������û����Ȳ���ȷ");
                f.userName.focus();
                f.userName.select();
		return false;
	}
	if(f.userName.value.length>12)
	{
		alert("�������û����Ȳ���ȷ");
                f.userName.focus();
                f.userName.select();
		return false;
	}
        if(f.realName.value=="")
        {
            alert("��������Ϊ��");
            f.userName.focus();
            f.realName.select();
            return false;
        }
        if(f.realName.value.substring(0,1)==" ")
         {
            alert("��һλ����Ϊ��");
            f.realName.focus();
            f.realName.select();
            return false;
         }
       
        if(isNaN(f.realName.value))
        {
             if(f.realName.value.length<2 || f.realName.value.length>14)
            {
                alert("�������������������");
                f.realName.focus();
                f.realName.select();
                return false;
            }
         }
        else
        {
                alert("��������Ϊ����");
                f.realName.focus();
                f.realName.select();
                return false;    
        }
        
        if(f.tel.value=="")
        {
            alert("�绰����Ϊ��");
            f.tel.focus();
            f.tel.select();
            return false;
        }
       if(f.tel.value.substring(0,1)==" ")
         {
            alert("��һλ����Ϊ��");
            f.tel.focus();
            f.tel.select();
            return false;
         }
        
        if(isNaN(f.tel.value)!=true)
        {
            if(f.tel.value.length<8 || f.tel.value.length>14)
            {
                alert("�绰���볤�Ȳ���ȷ");
                f.tel.focus();
                f.tel.select();
                return false;
            }
        }
        else
        {
            alert("�绰����Ϊ����");
            f.tel.focus();
            f.tel.select();
            return false;
        }
        if(f.tel.value.indexOf("-",0)>=0 || f.tel.value.indexOf("+",0)>=0)
         {
            alert("���ܳ���+ - ��");
            f.tel.focus();
            f.tel.select();
            return false;
         }
        if(f.email.value=="")
        {
            return true;
        }
        else
        {
            if(f.email.value.substring(0,1)==" ")
             {
                alert("��һλ����Ϊ��");
                f.email.focus();
                f.email.select();
                return false;
             }
            if(f.email.value.indexOf("@",0)==-1)
            {
                            alert("��ַ����,��@����");
                             f.email.focus();
                            f.email.select();
                            return false;
            }	
            if(f.email.value.indexOf(".",0)==-1)
            {
                            alert("��ַ����,��.����");
                            f.email.focus();
                            f.email.select();
                            return false;
            }
        }      
}
</script>
</head>  
  <body background="images/003.jpg">

	<p align="center" class="style1">������Ϣ����</p>
	<hr>
	<center>
			<%
				String message = (String)session.getAttribute("errorMessage") == null?"":(String)session.getAttribute("errorMessage");
				if(message != "" || !message.equals("")){
			%>
				<font size="5" color="#FF0000"><%=message%></font>				
			<%				
			}
			%>
	</center>
	<p>&nbsp;</p>
    <p>&nbsp;</p>
<form name="form1" method="post" action="NoparamServlet?param=1" onsubmit="return User()">
    <p>&nbsp;</p>
    <table width="443" border="1" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="94" height="38">
			<div align="center">
          		<p>��&nbsp;�� ��:</p>
          	</div>
		</td>
        <td width="400">
			<div align="center">
           		<input name="userName" type="text" id="yonghu" size="20" readonly="true" value="${user.userName}"/>
        	</div>
		</td>
      </tr>
      <tr>
        <td height="38"><div align="center">��ʵ����:</div></td>
        <td>
			<div align="center">
          		<input name="realName" type="text" id="xingbin" size="20" value="${user.realName}">
        	</div>
		</td>
      </tr>
      <tr>
        <td height="38"><div align="center">�� &nbsp;&nbsp;&nbsp;��:</div></td> 
        <td>
			<div align="center">           
            	<select name="gender" >
               		<option value="${gender}">${gender}</option>
               		<option value="${genderChange}">${genderChange}</option>                
            	</select>            
            </div>
		</td>
      </tr>
      <tr>
        <td height="38"><div align="center">�绰����:</div></td>
        <td>
			<div align="center">
          		<input name="tel" type="text" id="zhengjian" size="20" value="${user.tel}">
        	</div>
		</td>
      </tr>
      <tr>
        <td height="38"><div align="center">�����ʼ�:</div></td>
        <td>
			<div align="center">
          		<input name="email" type="text" id="Email" size="20" value="${user.email}">
        	</div>
		</td>
      </tr>
    </table>
    <p align="center">
      <input type="submit" name="Submit" value="�޸�"> 
	  <input type="button" name="button1" value="����" onclick="back()">    
	</p>
 </form>
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
