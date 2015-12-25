<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页公司简介</title>
</head>
<body bgcolor="yellowgreen">
<form action="Intro.jsp">
 	<table border="0" width="50%" align="center"  bgcolor="khaki" cellpadding="10" cellspacing="10">
 		<tr>
 			<td align="left" valign="top" 
 			    style="font-stytle:arial;color:blue;font-size:30px;padding-top:20px;padding-bottom:5px; 
 			    border-bottom:1px solid #110;font-family:楷体;">公司简介</td>
 		</tr>
 		<tr>
 			<td align="center" valign="middle" width="45%"><table width="100%" cellpadding="5"  >
 				<tr>
 					<td width="20%" align="left" 
 					    style="font-stytle:arial;color:mediumvioletred;font-size:20px;padding-top:0px;padding-bottom:
 					          20px;font-family:楷体;">简介主题:</td>
 					<td width="80%">
 					<textarea rows="1" cols="50"></textarea>
 					</td>
 				</tr>
 				<tr>
 				<tr>
 					<td width="20%" align="left" 
 					    style="font-family:arial;color:mediumvioletred;font-size:20px;padding-top:0px;padding-bottom:190px;
 					      font-family:楷体;">发表内容:</td>
 					<td>
 						<textarea rows="10" cols="50" ></textarea>
 					</td>
 				</tr>
 				
 			<tr>
 				<table>
 					<td width="100%" valign="bottom" align="center"  >
 					  <lable>
 						<input type="submit" name="button"  id="button"  value="提交" style="color:green; font-family: 
 						            楷体; font-style:normal;"/>
 						<input type="submit" name="button"  id="button"  value="重置" style="color:green; font-family:
 						            楷体; font-style:normal;"/>
 				     </lable>
 				   </td>
 				</table>
 			</tr>
 		   </table>
       </td>
     </tr>
   </table>
</form>
</body>
</html>