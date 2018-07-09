<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/img/asset-favicon.ico">
    <title>十次方-通知页面</title>

    <!-- 页面 css js -->

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/normalize-css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/yui/cssgrids-min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sui/sui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sui/sui-append.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-other-notice.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-headline-logined.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-index-login.css" />
</head>

<body class="notice">
    <!--引用组件-->
    <!--头部导航/反转颜色-->
   <header style="margin: 15px 0px 0px">
        <div class="wrapper">
            <div class="sui-navbar">
                <div class="navbar-inner">
                    <a href="sj-index-logined.html" class="sui-brand"><img src="${pageContext.request.contextPath}/img/widget-logo-inverse.png" alt="猿圈儿" /></a>
                    <ul class="sui-nav">
                        <li><a href="${pageContext.request.contextPath }">头条</a></li>
                        <li><a href="./sj-qa-logined.html" target="_blank">问答</a></li>
                        <li><a href="./sj-activity-index.html" target="_blank">活动</a></li>
                        <li><a href="${pageContext.request.contextPath }/dates">交友</a></li>
                        <li><a href="./sj-spit-index.html" target="_blank">吐槽</a></li>
                        <li><a href="./sj-recruit-index.html" target="_blank">招聘</a></li>
                    </ul>
                    <form class="sui-form sui-form pull-left">
                        <input type="text" placeholder="输入关键词...">
                        <span class="btn-search fa fa-search"></span>
                    </form>
                    <div class="sui-nav pull-right info">
                        <ul class="sui-nav">
                    		<c:if test="${empty existUser}">
	                        	<li><a href="${pageContext.request.contextPath}/user?method=registUI" class="sui-btn btn-login">注册</a></li>
	                        	<li><a href="${pageContext.request.contextPath}/user?method=loginUI" class="sui-btn btn-login">登录</a></li>
                    		</c:if>
                    		<c:if test="${not empty existUser}">
	                        	<li><a href="./sj-other-notice.html" target="_blank" class="notice">通知</a></li>
		                        <li class="hover">
		                            <span class="fa fa-plus"></span>
		                            <ul class="hoverinfo">
		                                <li><i class="fa fa-share-alt" aria-hidden="true"></i> <a href="./sj-headline-submit.html">去分享</a></li>
		                                <li><i class="fa fa-question-circle" aria-hidden="true"></i> <a href="./sj-qa-submit.html" target="_blank">提问题</a></li>
		                                <li><i class="fa fa-comments" aria-hidden="true"></i><a href="./sj-spit-submit.html" target="_blank">去吐槽</a></li>
		                                <li><i class="fa fa-heartbeat" aria-hidden="true"></i> <a href="./sj-makeFriends-submit.html" target="_blank">发约会</a></li>
		                            </ul>
		                        </li>
		                        <li>
		                        	<a href="${pageContext.request.contextPath }/user?method=homepage&flag=homepage" class="homego">
				                        <c:if test="${empty existUser.image}"><img src="${pageContext.request.contextPath}/img/widget-myphoto.jpg" alt="用户头像" width="39"></c:if>
				                        <c:if test="${not empty existUser.image }"><img src="${pageContext.request.contextPath}/${existUser.image }" alt="用户头像" width="39"></c:if>
									</a>
								</li>
                    		</c:if>
                        </ul>
                    </div>
                </div>
            </div>
    </header>
    <!--两列布局-->
    <div class="wrapper">
        <div class="notice-time">
            <h5 class="notice-title">通知提醒</h5>
            <div class="notice-content">
                <div class="mark-all">
                    <a href="javascript:void(0);" class="sui-btn btn-bordered btn-large">全部标记为已读</a>
                </div>
                <div class="notice-day">
                    <!-- <div class="everyday">
                        <p class="date">今天</p>
                        <ul class="operate">
                            <li><span class="name">Alex</span>评论了你的问题 <span class="red"><a href="#">网页链接如何直接打开微信，并进入公众号关注页面？</a></span></li>
                            <li><span class="name">Alex</span>赞了你的问题 <span class="grey"><a href="#">网页链接如何直接打开微信，并进入公众号关注页面？</a></span></li>
                        </ul>
                    </div>
                    <div class="everyday">
                        <p class="date">昨天</p>
                        <ul class="operate">
                            <li><span class="name">BiPeng</span>收藏了你的问题 <span class="red"><a href="#">网页链接如何直接打开微信，并进入公众号关注页面？</a></span></li>
                        </ul>
                    </div> -->
                    <c:forEach items="${list }" var="bean">
	                    <div class="everyday">
	                        <ul class="operate">
	                            <li><fmt:formatDate value="${bean.a_date }" pattern="yyyy年MM月dd日"/>, <span class="name">${bean.a_username }</span>${bean.a_content } <span class="red"><a href="#">${bean.a_title }</a></span>
	                          <!--       <span class="btns">
	                            <a href="javascript:void(0);" class="sui-btn btn-bordered  btn-danger btn-xlarge">忽略</a>
	                            <a href="javascript:void(0);" class="sui-btn btn-danger btn-xlarge">同意</a></span> -->
	                            </li>
	                        </ul>
	                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/sui/sui.min.js"></script>
    <script>
        $(function() {
            $(".hover").hover(function() {
                $(".hoverinfo").stop().animate({
                    opacity: "show"
                }, "slow");
                $(this).find(".fa-plus").css("color", "#e64620");
            }, function() {
                $(".hoverinfo").stop().animate({
                    opacity: "hide"
                }, "slow");
                $(this).find(".fa-plus").css("color", "#fff");
            })
        })
    </script>
</body>