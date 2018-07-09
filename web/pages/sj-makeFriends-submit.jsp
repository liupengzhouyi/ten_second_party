<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/img/asset-favicon.ico">
    <title>十次方-发布约会</title>

    <!-- 页面 css js -->

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/normalize-css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/yui/cssgrids-min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sui/sui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sui/sui-append.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-makeFriends-submit.css" />
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-index-login.css" />
</head>

<body>
    <!--引用组件-->
    <!--头部导航/反转颜色-->
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
                        <li  class="active"><a href="${pageContext.request.contextPath }/dates">交友</a></li>
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
        <div class="release-date">
            <h3><span>发布约会</span></h3>
            <form class="sui-form form-horizontal" action="${pageContext.request.contextPath }/date" method="post">
            	<input type="hidden" name="method" value="save"/>
            	<input type="hidden" name="d_topic" id="topicId"/>
                <div class="control-group">
                    <label for="inputEmail" class="control-label topic">主题：</label>
                    <div class="controls">
                        <ul>
                            <li class="active">
                                <div class="topic d1">
                                    <span value="movie">看电影</span>
                                </div>
                            </li>
                            <li>
                                <div class="topic d2">
                                    <span value="eat">吃饭</span>
                                </div>
                            </li>
                            <li>
                                <div class="topic d3">
                                    <span value="sing">K 歌</span>
                                </div>
                            </li>
                            <li>
                                <div class="topic d4">
                                    <span value="cofe">喝咖啡</span>
                                </div>
                            </li>
                            <li>
                                <div class="topic d6">
                                    <span value="travel">旅行</span>
                                </div>
                            </li>
                             <li>
                                <div class="topic d8">
                                    <span value="other">其他</span>
                                </div>
                            </li>
                           <!--  <li>
                                <div class="topic d5">
                                    <span value="">运动</span>
                                </div>
                            </li>
                           
                            <li>
                                <div class="topic d7">
                                    <span>逛街</span>
                                </div>
                            </li> -->
                           
                        </ul>
                    </div>
                </div>
                <div class="control-group">
                	<label for="inputEmail" class="control-label">费用：</label>
                    <div class="controls">
                        <label data-toggle="radio" class="radio-pretty inline checked">
		                    <input type="radio" checked="checked" name="d_cost" value="我买单"><span class="cost">我买单</span>
		                </label>
		                 <label data-toggle="radio" class="radio-pretty inline">
		                    <input type="radio" name="d_cost" value="AA制"><span>AA制</span>
		                </label>
                    </div>
                </div>
                <div class="control-group">
                    <label for="inputPassword" class="control-label">时间：</label>
                    <div class="controls">
                       <!--  <span class="sui-dropdown dropdown-bordered select">
		                    <span class="dropdown-inner">
		                        <a id="drop4" role="button" data-toggle="dropdown" href="#" class="dropdown-toggle">
		                            <input value="hz" name="city" type="hidden"><i class="caret"></i><span>不限时间</span>
		                        </a>
		                        <ul id="menu4" role="menu" aria-labelledby="drop4" class="sui-dropdown-menu">
		                            <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="bj">平时周末</a></li>
		                        </ul>
                        	</span>
                        </span> -->
                        <input type="date" class="input-xxlarge"  name="d_time">
                    </div>
                </div>
                <div class="control-group">
                    <label for="inputaddress" class="control-label">地点：</label>
                    <div class="controls">
                        <input type="text" class="input-xxlarge" placeholder="详细地址" name="d_address">
                    </div>
                </div>
                <div class="control-group">
                    <label for="inputPassword" class="control-label desc">描述：</label>
                    <div class="controls">
                        <textarea rows="3" class="input-area" name="d_desc" placeholder="可输入0-30字的描述"></textarea>
                    </div>
                </div>
                <div class="btn-date">
                    <button type="submit" class="sui-btn btn-info btn-release ">发布约会</button>
                </div>
            </form>
        </div>
    </div>
    <div class="footer">
        <div class="wrapper">
            <div class="footer-bottom">
                <div class="link">
                    <dl>
                        <dt>网站相关</dt>
                        <dd>关于我们</dd>
                        <dd>服务条款</dd>
                        <dd>帮助中心</dd>
                        <dd>编辑器语法</dd>
                    </dl>
                    <dl>
                        <dt>常用链接</dt>
                        <dd>传智播客</dd>
                        <dd>传智论坛</dd>
                    </dl>
                    <dl>
                        <dt>联系我们</dt>
                        <dd>联系我们</dd>
                        <dd>加入我们</dd>
                        <dd>建议反馈</dd>
                    </dl>
                    <dl>
                        <dt>关注我们</dt>
                        <dd>微博</dd>
                        <dd>twitter</dd>
                    </dl>

                    <div class="xuke">
                        <h3>内容许可</h3>
                        <p>除特别说明外，用户内容均采用知识共享署名-非商业性使用-禁止演绎4.0 国际许可协议 (CC BY-NC-ND 4.0) 进行许可</p>
                        <p>本站由 传智研究院 提供更新服务</p>
                    </div>
                </div>


                <p class="Copyright">Copyright © 2017 传智问答社区 当前版本 0.0.1</p>
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
/*
 * 		<li class="active">
				 <div class="topic d1">
				 <span value="movie">看电影</span>
				</div>
		</li>
 */

        $(function() {
            $('.controls li').click(function() {
                $(this).addClass('active');
                $(this).siblings().removeClass('active');
                $("#topicId").val($(this).find("span").attr("value"));
            })
        })
    </script>
</body>