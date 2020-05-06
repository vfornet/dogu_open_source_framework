﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>设置</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<%@ include file="/SYSTEM/common/jsp/common.jsp"%>
<style>
/** 消息列表样式 */
.message-list {
	position: absolute;
	top: 51px;
	bottom: 44px;
	left: 0;
	right: 0;
	overflow-y: auto;
	-webkit-overflow-scrolling: touch;
}

.message-list-item {
	padding: 10px 24px;
	border-bottom: 1px solid #e8e8e8;
	-ms-flex-align: start;
	align-items: flex-start;
	display: flex;
	-ms-flex: 1 1;
	flex: 1 1;
}

.message-list-item:hover, .message-btn-clear:hover, .message-btn-more:hover
	{
	background: #F2F2F2;
}

.message-item-icon {
	width: 40px;
	height: 40px;
	margin-right: 16px;
	display: block;
	margin-top: 4px;
}

.message-item-right {
	display: block;
	flex: 1 0;
	line-height: 24px;
}

.message-item-title {
	font-size: 14px;
	color: rgba(0, 0, 0, .65);
}

.message-item-text {
	color: rgba(0, 0, 0, .45);
	font-size: 12px;
}

.pull-right {
	float: right;
}

.message-btn-clear, .message-btn-more {
	display: block;
	padding: 10px 5px;
	text-align: center;
	line-height: 24px;
	color: #333;
}

.message-btn-clear {
	position: absolute;
	bottom: 0;
	left: 0;
	background: white;
	right: 0;
	border-top: 1px solid #e8e8e8;
}

.message-btn-more {
	color: #666;
	font-size: 13px;
}

.message-list-empty {
	text-align: center;
	color: rgba(0, 0, 0, .45);
	padding: 73px 0 88px;
}

.message-list-empty img {
	height: 76px;
	margin-bottom: 16px;
}

/** //消息列表样式结束 */
</style>
</head>
<body>
	<div class="layui-tab layui-tab-brief"
		style="padding: 5px 0; margin: 0;">
		<ul class="layui-tab-title" style="text-align: center;">
			<li class="layui-this">通知(5)</li>
			<li>私信(12)</li>
			<li>待办(3)</li>
		</ul>

		<div class="layui-tab-content" style="padding: 5px 0;">

			<!-- tab1 -->
			<div class="layui-tab-item layui-show">

				<div class="message-list">

					<!-- 实际项目请使用后台数据循环出来 -->
					<a class="message-list-item" href="javascript:;"> <img
						class="message-item-icon" src="${ctx}/SYSTEM/main/img/message.png">
						<div class="message-item-right">
							<h2 class="message-item-title">你收到了14份新周报</h2>
							<p class="message-item-text">10个月前</p>
						</div>
					</a>

					<!-- 列表为空 -->
					<div class="message-list-empty" style="display: none;">
						<img src="${ctx}/SYSTEM/main/img/img_msg_notice.svg">
						<div>没有通知</div>
					</div>

				</div>
				<a class="message-btn-clear" href="javascript:;">全部标记已读</a>

			</div>
			<!-- tab2 -->
			<div class="layui-tab-item">
				<div class="message-list">
					<a class="message-list-item" href="javascript:;"> <img
						class="message-item-icon" src="${ctx}/SYSTEM/main/img/head.png">
						<div class="message-item-right">
							<h2 class="message-item-title">xx评论了你</h2>
							<p class="message-item-text">哈哈哈哈哈哈</p>
							<p class="message-item-text">10个月前</p>
						</div>
					</a>
					<a class="message-list-item" href="javascript:;"> <img
						class="message-item-icon" src="${ctx}/SYSTEM/main/img/head.png">
						<div class="message-item-right">
							<h2 class="message-item-title">xx评论了你</h2>
							<p class="message-item-text">哈哈哈哈哈哈</p>
							<p class="message-item-text">10个月前</p>
						</div>
					</a>
					<a id="btn-more1" class="message-btn-more" href="javascript:;">加载更多</a>

					<!-- 列表为空 -->
					<div class="message-list-empty" style="display: none;">
						<img src="${ctx}/SYSTEM/main/img/img_msg_pri.svg">
						<div>没有消息</div>
					</div>

				</div>

				<a class="message-btn-clear" href="javascript:;">清空消息</a>

			</div>

			<!-- tab3 -->
			<div class="layui-tab-item">

				<div class="message-list">
					<a class="message-list-item" href="javascript:;">
						<div class="message-item-right">
							<span class="layui-badge pull-right">待完成</span>
							<h2 class="message-item-title">你收到了14份新周报</h2>
							<p class="message-item-text">10个月前</p>
						</div>
					</a>
					<!-- 列表为空 -->
					<div class="message-list-empty" style="display: none;">
						<img src="${ctx}/SYSTEM/main/img/img_msg_db.svg">
						<div>没有待办</div>
					</div>
				</div>
				<a class="message-btn-clear" href="javascript:;">清空待办</a>
			</div>
		</div>
	</div>
	<!-- 页面加载loading -->
	<div class="page-loading">
	    <div class="ball-loader">
	        <span></span><span></span><span></span><span></span>
	    </div>
	</div>
	<script>
	    layui.use(['element'], function () {
	        var $ = layui.jquery;
	        var element = layui.element;
	
	        // 加载更多按钮点击事件
	        $('#btn-more1').click(function () {
	            var $that = $(this);
	            var str = $that.prev()[0].outerHTML;
	            for (var i = 0; i < 5; i++) {
	                $that.before(str);
	            }
	        });
	
	        // 清空消息点击事件
	        $('.message-btn-clear').click(function () {
	            $(this).css('display', 'none');
	            $(this).prev().find('.message-list-item').remove();
	            $(this).prev().find('.message-btn-more').remove();
	            $(this).prev().find('.message-list-empty').css('display', 'block');
	        });
	    });
	</script>
</html>