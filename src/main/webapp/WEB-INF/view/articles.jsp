<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="/js/jquery-1.8.2.min.js"></script>
<link href="/css/css.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<form action="list" method="post">
 <table class="table">
       	<thead>
       		<tr>
       			<td colspan="10">
       					<input type="hidden" name="page">
       					开始时间:<input type="date" name="start" value="${start}">----
       					结束时间:<input type="date" name="end" value="${end}">
       					<input type="submit" value="查询">
       					&emsp;&emsp;
       					<select  name="dtj"  onchange="bian()">
       						<option <c:if test="${dtj=='created'}">selected</c:if> value="created">发表时间</option>
       						<option <c:if test="${dtj=='user_id'}">selected</c:if> value="user_id">作者</option>
       						<option <c:if test="${dtj=='complain_num'}">selected</c:if> value="complain_num">评论数量</option>
       					</select>
       			</td>
       		</tr>
       		<tr>
       			<td>ID</td>
       			<td>标题</td>
       			<td>发表时间</td>
       			<td>作者</td>
       			<td>评论数量</td>
       		</tr>
       	</thead>
       	<tbody>
       		<c:forEach items="${info.list}" var="art">
       			<tr>
       				<td>${art.id }</td>
       				<td>${art.title }</td>
       				<td>${art.created }</td>
       				<td>${art.username }</td>
       				<td>${art.complain_num}</td>
       			</tr>
       		</c:forEach>
       	</tbody>
       	<tfoot>
       		<tr>
       			<td colspan="10">
       				<center>
	       				<button name="pageNum" value="1">第一页</button>
	  					<button name="pageNum" value="${info.prePage==1?1:info.prePage}">上一页</button>
	  					当前${info.pageNum}页/共${info.pages}页
	  					<button name="pageNum" value="${info.nextPage==1?info.pages:info.nextPage}">下一页</button>
	  					<button name="pageNum" value="${info.pages}">末页</button>
       				</center>
       			</td>
       		</tr>
       	</tfoot>
       </table>
     </form>
</body>
</html>