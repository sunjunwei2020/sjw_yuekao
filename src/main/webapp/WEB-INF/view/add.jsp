<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增页面</title>
<link href="/resource/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="/resource/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/bootstrap.min.js"></script>
</head>
<body>
	
	
	<form action="toAdd" method="post" enctype="multipart/form-data">
		
		付款订单：<input type="text" name="type"><br>
		付款日期：<input type="text" name="date1"><br>
		经办人：<input type="text" name="jname"><br>
		所属部门：<input type="text" name="bumen"><br>
		合同订单：<input type="text" name="htdd"><br>
		付款类型：<input type="text" name="qtype"><br>
		给付单位：<input type="text" name="gdanwei"><br>
		给付单位开户行：<input type="text" name="gyinhang"><br>
		账号：<input type="text" name="zhanghao"><br>
		接收部门：<input type="text" name="jbumen"><br>
		接收人：<input type="text" name="name"><br>
		付款事由：<input type="text" name="shiyou"><br>
		付款金额：<input type="text" name="jine"><br>
		图片：<input type="file" name="file"><br>
		备注：<input type="text" name="beizhu"><br>

		<button type="submit">添加</button>
	</form>
	
	
	
</body>
</html>