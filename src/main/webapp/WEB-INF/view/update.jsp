<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改页面</title>
<link href="/resource/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="/resource/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/bootstrap.min.js"></script>
</head>
<body>
	
	
	<form action="toUpdate" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${f.id }">
		付款订单：<input type="text" name="type" value="${f.type }"><br>
		付款日期：<input type="text" name="date1" value='<fmt:formatDate value="${f.createddate }" pattern="yyyy-MM-dd"/>'><br>
		经办人：<input type="text" name="jname" value="${f.jname }"><br>
		所属部门：<input type="text" name="bumen" value="${f.bumen }"><br>
		合同订单：<input type="text" name="htdd" value="${f.htdd }"><br>
		付款类型：<input type="text" name="qtype" value="${f.qtype }"><br>
		给付单位：<input type="text" name="gdanwei" value="${f.gdanwei }"><br>
		给付单位开户行：<input type="text" name="gyinhang" value="${f.gyinhang }"><br>
		账号：<input type="text" name="zhanghao" value="${f.zhanghao }"><br>
		接收部门：<input type="text" name="jbumen" value="${f.jbumen }"><br>
		接收人：<input type="text" name="name" value="${f.name }"><br>
		付款事由：<input type="text" name="shiyou" value="${f.shiyou }"><br>
		付款金额：<input type="text" name="jine" value="${f.jine}"><br>
		图片：<input type="file" name="file"><br>
		备注：<input type="text" name="beizhu" value="${f.beizhu}"><br>

		<button type="submit">修改</button>
	</form>
	
	
	
</body>
</html>