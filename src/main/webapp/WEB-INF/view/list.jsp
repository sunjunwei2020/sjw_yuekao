<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resource/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="/resource/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$.post("qmoney",function(obj){
			for ( var i in obj) {
				var id = $("#q").html();
				
					if(id==obj[i].id){
						$("#q").html(obj[i].type);
					}
				
				
			}
		},"json")
		
	})

	//分页
	function goPage(page){
		location="list?pageNum="+page;
	}
	//新增
	function add(){
		location="add";
	}
	//修改
	function update(id){
		location="update?id="+id;
	}
</script>
</head>
<body>
	
	<form action="list" method="post">
		付款单号：<input type="text" name="id">
		付款类型：<input type="text" name="type">
		经办人：<input type="text" name="jname">
		所属部门：<input type="text" name="bumen">
		合同订单：<input type="text" name="htdd">
		给付单位：<input type="text" name="gdanwei">
		给付单位开户行：<input type="text" name="gyinhang">
		账号：<input type="text" name="zhanghao">
		接收部门：<input type="text" name="jbumen">
		接收人：<input type="text" name="name">
		付款事由：<input type="text" name="shiyou">
		付款金额：<input type="text" name="jine">
		备注：<input type="text" name="beizhu">
		请款类型：<input type="text" name="qtype">
		付款开始日期：<input type="text" name="date1">
		-<input type="text" name="date2">
		<button>查询</button>
	</form>
	
	
	<table class="table">
		<tr>
			<td>付款编号</td>
			<td>付款日期</td>
			<td>付款单类型</td>
			<td>经办人</td>
			<td>所属部门</td>
			<td>合同与订单</td>
			<td>请款类型</td>
			<td>给付单位</td>
			<td>给付单位开户行</td>
			<td>账号</td>
			<td>接收部门</td>
			<td>接收人</td>
			<td>付款事由</td>
			<td>付款金额</td>
			<td>付款图片</td>
			<td>备注</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${info.list }" var="f">
			<tr>
				<td>${f.id }</td>
				<td>
					<fmt:formatDate value="${f.createddate }" pattern="yyyy-MM-dd"/>
				</td>
				<td>${f.type }</td>
				<td>${f.jname }</td>
				<td>${f.bumen }</td>
				<td>${f.htdd }</td>
				<td id="q">${f.qtype }</td>
				<td>${f.gdanwei }</td>
				<td>${f.gyinhang }</td>
				<td>${f.zhanghao }</td>
				<td>${f.jbumen }</td>
				<td>${f.name }</td>
				<td>${f.shiyou }</td>
				<td>${f.jine }</td>
				<td>
					<img alt="无图片" src="/pic/${f.fpic }" style="width: 50px;height: 50px">
				</td>
				<td>${f.beizhu }</td>
				<td>
					<button onclick="add()">新增</button>
					<button onclick="update(${f.id})">修改</button>
				</td>
				
			</tr>
		</c:forEach>
	</table>
	<jsp:include page="/WEB-INF/view/pages.jsp"></jsp:include>
	
</body>
</html>