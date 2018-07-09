<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!--引用组件-->
        <!--头部导航-->
        <header>
            <div class="sui-navbar">
                <div class="navbar-inner">
                    <a href="${pageContext.request.contextPath}/pages/sj-headline-login.html" class="sui-brand"><img src="${pageContext.request.contextPath}/img/widget-logo.png" alt="猿圈儿" /></a>
                    <ul class="sui-nav">
                        <li><a href="${pageContext.request.contextPath}">头条</a></li>
                        <li><a href="${pageContext.request.contextPath}/pages/sj-qa-login.html" target="_blank">问答</a></li>
                        <li><a href="${pageContext.request.contextPath}/pages/sj-activity-index.html" target="_blank">活动</a></li>
                        <li><a href="${pageContext.request.contextPath}/date?method=index">交友</a></li>
                        <li><a href="${pageContext.request.contextPath}/pages/sj-spit-index.html" target="_blank">吐槽</a></li>
                        <li><a href="${pageContext.request.contextPath}/pages/sj-recruit-index.html" target="_blank">招聘</a></li>
                    </ul>
                    <form class="sui-form sui-form pull-left">
                        <input type="text" placeholder="输入关键词...">
                        <span class="btn-search fa fa-search"></span>
                    </form>
                    <div class="sui-nav pull-right info">
                    	<ul class="sui-nav">
                    		<!-- 判断session中是否用登录用户 -->
                    		<c:if test="${empty existUser }">
	                        	<li><a href="${pageContext.request.contextPath}/user?method=registUI" class="sui-btn btn-login">注册</a></li>
	                        	<li><a href="${pageContext.request.contextPath}/user?method=loginUI" class="sui-btn btn-login">登录</a></li>
                    		</c:if>
                    		<c:if test="${not empty existUser }">
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
		                        	<a href="${pageContext.request.contextPath }/user?method=homepage" class="homego">
		                        		<!-- 判断用户是否有头像,若没有则使用默认头像 -->
		                        		<c:if test="${empty existUser.image }">
		                        			<img src="${pageContext.request.contextPath}/img/photo/widget-myphoto.jpg" alt="用户头像" width="39">
		                        		</c:if>
		                        		<c:if test="${not empty existUser.image }">
				                       	 	<img src="${pageContext.request.contextPath}/${existUser.image }" alt="用户头像" width="39">
				                       	</c:if>
									</a>
								</li>
                    		</c:if>
                    		
	                        	
                        </ul>
                    </div>
                </div>
     		 </div>
        </header>
