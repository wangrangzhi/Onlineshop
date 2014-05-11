<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>My JSP 'regisit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script language="javascript">


function check()
{
	if(document.form.regname.value=="")
	{
		alert("注册名不能为空");
		document.form.regname.focus();
		return false;
	}
	else if(document.form.realname.value=="")
	{
		alert("真实姓名不能为空");
		document.form.realname.focus();
		return false;
	}
	else if(document.form.psw.value=="")
	{
		alert("密码不能为空");
		document.form.psw.focus();
		return false;
	}
	else if(document.form.addr.value=="")
	{
		alert("地址不能为空");
		document.form.addr.focus();
		return false;
	}
	else if(document.form.idfycard.value=="")
	{
		alert("身份证不能为空");
		document.form.idfycard.focus();
		return false;
	}
	else if(document.form.bankID.value=="")
	{
		alert("银行卡号不能为空");
		document.form.bankID.focus();
		return false;
	}
	else
	{

	form.target="_parent";
	form.submit();
	}

}
</script>

  </head>
  
  <body>
    <%@include file="header.jsp"%>
   
    <br/>
     <%@include file="buyerlogin.jsp"%>
        <br/>
        
        <form name="form" method="post" action="registaction">
        	<div align="center">
				<table>
					<tr>
						<td>注册名：</td>
						<td><input type="text" name="regname" ></td>
					</tr>
					<tr>
						<td>真实姓名：</td>
						<td><input type="text" name="realname" ></td>
					</tr>
					<tr>
						<td>密码：</td>
						<td><input type="password" name="psw" ></td>
					</tr>
					<tr>
						<td>生日</td>
						<td>	<select name="year" >
								            <%
										for(int i=1900;i<2050;i++)
										{
											out.println("<option value="+i+">"+i+"</option>");
										}
										%>
								</select>

								<select name="month" >
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>

								</select>

						</td>
					</tr>

					<tr>
						<td>性别：</td>
						<td><input type="radio" name="sexy" value="man" checked>男
							<input type="radio" name="sexy" value="woman" >女</td>
					</tr>
					<tr>
						<td>E:mail:</td>
						<td><input type="text" name="email" ></td>
					</tr>
					<tr>
						<td>地址：</td>
						<td><input type="text" name="addr" ></td>
					</tr>
					<tr>
						<td>身份证：</td>
						<td><input type="text" name="idfycard" ></td>
					</tr>
					<tr>
						<td><input type="button" value="注册" name="Submit" onClick="check()" /></td>
						<td>
							<input type="button" value="返回" name="Submit2" onclick="windows.history.go(-1);">

						</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
				</table>
        	</div>


        </form>
        
        
        
  </body>
</html>
