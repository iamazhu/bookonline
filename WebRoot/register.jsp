<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�û�ע��</title>
    
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
        if(f.password.value=="")
        {
               alert("���벻��Ϊ��");
               f.password.focus();
                f.password.select();
		return false;
        }
        if(f.password.value.substring(0,1)==" ")
         {
            alert("��һλ����Ϊ��");
            f.password.focus();
            f.password.select();
            return false;
         }
       
        if(isNaN(f.password.value)!=true)
        {
                 if(f.password.value.length>12 || f.password.value.length<6)
                {	
                        alert("���볤�Ȳ���ȷ");
                        f.password.focus();
                        f.password.select();
                        return false;

                }
        }
        else
        {
                alert("�������Ϊ����");
                f.password.focus();
                f.password.select();
                return false; 
        }
        if(f.password.value.indexOf("-",0)>=0 || f.password.value.indexOf("+",0)>=0)
         {
            alert("���ܳ���+ - ��");
            f.password.focus();
            f.password.select();
            return false;
         }
        if(f.repassword.value=="")
        {
               alert("���벻��Ϊ��");
               f.repassword.focus();
                f.repassword.select();
		return false;
        }
        if(f.repassword.value.substring(0,1)==" ")
         {
            alert("��һλ����Ϊ��");
            f.repassword.focus();
            f.repassword.select();
            return false;
         }
        if(f.repassword.value!=f.password.value)
	{
		alert("���벻һ��!");
                f.repassword.focus();
                f.repassword.select();
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
    <p>&nbsp;</p>
<p align="center" class="style1">��ӭ��ע��</p>
<hr>
  <form name="form1" method="post" action="NewUser" onSubmit="return User()">
    <p>&nbsp;</p>
    <table width="443" border="1" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="94" height="38"><div align="center">
          <p>��&nbsp;�� ��:</p>
          </div></td>
        <td width="343">          
           <div align="left">
             <input name="userName" type="text" id="yonghu" size="20"  >
        <span>*�û�������Ϊ8-16��ĸ����</span></div></td>
      </tr>
      <tr>
        <td height="38"><div align="center">�� &nbsp;     &nbsp;��:</div></td>
        <td>          
          <div align="left">
          <input name="password" type="password" id="password" size="20" >        
        *���볤��Ϊ6-14����</div></td>
      </tr>
      <tr>
        <td height="38"><div align="center">�ظ�����:</div></td>
        <td>
          <div align="left">
            <input name="repassword" type="password" id="repassword" size="20">
            *���������뱣��һ��
          </div></td></tr>
      <tr>
        <td height="38"><div align="center">��ʵ����:</div></td>
        <td>
          <div align="left">
            <input name="realName" type="text" id="name" size="20"> 
            *ӦΪ��ʵ����
</div></td></tr>
      <tr>
        <td height="38"><div align="center">�� &nbsp;&nbsp;&nbsp;��:</div></td>
        <td>
          <div align="left">
            <input type="radio" name="gender" value="1" checked>
            ��
              <input type="radio" name="gender" value="2">
              Ů</div></td></tr>
      <tr>
        <td height="38"><div align="center">�绰����:</div></td>
        <td>
          <div align="left">
            <input name="tel" type="text" id="zhengjian" size="20">
 *�绰����Ϊ8-14λ����</div></td></tr>
      <tr>
        <td height="38"><div align="center">�����ʼ�:</div></td>
        <td>
          <div align="left">
            <input name="email" type="text" id="Email" size="20">
        </div></td></tr>
    </table>
    <p align="center">
      <input type="submit" name="submit" value="ע��">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" name="reset" value="����">
      
    </p>
  </form>
<p>&nbsp;</p>
  </body>
</html>
