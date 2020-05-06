<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>角色行权限</title>
	<%@ include file="/common/jsp/common.jsp"%>
	<link rel="stylesheet" type="text/css" href="${ctx}/common/lib/zTree/css/zTreeStyle/zTreeStyle.css?version=${version}"/>
	<script type="text/javascript" src="${ctx}/common/lib/zTree/js/jquery.ztree.core.min.js?version=${version}"></script>
	<script type="text/javascript" src="${ctx}/common/lib/zTree/js/jquery.ztree.excheck.min.js?version=${version}"></script>
	<script type="text/javascript" src="${ctx}/sysmanage/rolerightsmanage/js/rolerightsmanage.js?version=${version}"></script>
</head>
<body>
	<table style="margin-left: 40px;margin-top: 10px;">
		<tr>
			<td>
				角色名：
			</td>
			<td>
				<input id="rolenameid" class="layui-input" type="text" value=""/>
			</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;<button class="layui-btn icon-btn" onclick="getRoleInfo()"><i class="layui-icon">&#xe615;</i>查询</button></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;<button class="layui-btn icon-btn" onclick="SaveRoleLimit()"><i class="layui-icon">&#xe63c;</i>保存</button></td>
		</tr>
	</table>
	<div style="height:40px;width:302px;background-color:#009688;margin-left: 40px;margin-top:10px;
		border-radius:4px 4px 0px 0px;color:#FFF;font-size:16px;text-align:center;line-height:40px">
		角色字典
	</div>
	<div id="roleTableid" style="width:300px;margin-left: 40px;overflow-y:scroll;border:1px solid #009688;"></div>
	<div id="menuDivId" style="margin-left: 380px;width: 312px;">
		<div style="height:40px;width:312px;background-color:#009688; 
			border-radius:4px 4px 0px 0px;color:#FFF;font-size:16px;text-align:center;line-height:40px">
		菜单字典
		</div>
		<div id="ztree" class="ztree" style="width: 300px;background-color: #FFF; overflow-y: scroll;border:1px solid #009688;"></div>
	</div>
	<!-- 页面加载loading -->
	<div class="page-loading">
	    <div class="ball-loader">
	        <span></span><span></span><span></span><span></span>
	    </div>
	</div>
</body>
</html>