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
   

    <!-- 页面 css js -->

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/normalize-css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/yui/cssgrids-min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sui/sui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sui/sui-append.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-person-homepage.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-index-login.css" />
    <title>社交-我的主页</title>
</head>

<body>
    <div class="wrapper">
        <!--引用组件-->
        <!--头部导航-->
       <%@include file="sj-top.jsp" %>


    </div>
    <div class="tab-nav ">
        <div class="wrapper">
            <ul class="fl sui-nav nav-tabs navbar-dark">
                <li class="active"><a href="#index" data-toggle="tab">首页</a></li>
                <li><a href="#php" data-toggle="tab">Php</a></li>
                <li><a href="#js" data-toggle="tab">Javascript </a></li>
                <li><a href="#python" data-toggle="tab">Python</a></li>
                <li><a href="#java" data-toggle="tab">Java</a></li>
            </ul>
            <span class="fr more"><a href="./sj-qa-allTag.html" target="_blank">更多</a></span>
            <div class="clearfix"></div>
        </div>

    </div>
    <div class="myhome-personinfo">
        <div class="wrapper">
            <div class="person-baseinfo">
                <!--头像信息-->
                <div class="photo">
                	<%-- <img src="${pageContext.request.contextPath}/img/widget-myphoto.jpg" alt="" class="person"> --%>
                	<!-- 判断用户是否有头像,若没有则使用默认头像 -->
                 		<c:if test="${empty existUser.image }">
                 			<img src="${pageContext.request.contextPath}/img/photo/widget-myphoto.jpg" alt="用户头像" class="person">
                 		</c:if>
                 		<c:if test="${not empty existUser.image }">
                  	 		<img src="${pageContext.request.contextPath}/${existUser.image }" alt="用户头像" class="person">
                     	</c:if>
                </div>
                <!--文字信息-->
                <div class="info">
                    <h1>${existUser.username }<span class="allinfo"><a href="${pageContext.request.contextPath }/user?method=myfile">查看完整档案</a></span></h1>
                    <ul class="fill">
                        <li>
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                            <c:if test="${empty existUser.city }">
                            	<span class="edit-item">  填写现居城市</span>
                            </c:if>
                            <c:if test="${not empty existUser.city }">
                            	<span>  ${existUser.city }</span>
                            </c:if>
                             <form  class="sui-form form-inline" action="${pageContext.request.contextPath }/user" method="post">
                            	<input type="hidden" name="method" value="updateInfo">
                            	<input type="hidden" name="flag" value="homepage">
                            	<input type="hidden" name="name" value="city">
                                <input type="text" name="value" placeholder="现居城市">
                                <button class="sui-btn btn-danger save-btn">保存</button>
                            </form>
                        </li>
                        <li>
                            <i class="fa fa-link" aria-hidden="true"></i>
                            <c:if test="${empty existUser.site }">
                            	<span class="edit-item">  填写个人网站</span>
                            </c:if>
                            <c:if test="${not empty existUser.site }">
                            	<span>  ${existUser.site }</span>
                            </c:if>
                            <form  class="sui-form form-inline" action="${pageContext.request.contextPath }/user" method="post">
                            	<input type="hidden" name="method" value="updateInfo">
                            	<input type="hidden" name="name" value="site">
                                <input type="text" name="value" placeholder="个人网站">
                                <input type="hidden" name="flag" value="homepage">
                                <button class="sui-btn btn-danger save-btn">保存</button>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
            <!--右侧编辑-->
            <div class="edit-info">
                <h4>个人简介<span class="addedit"><img  src="${pageContext.request.contextPath}/img/widget-edit.png" width="12" height="12"/>编辑</span></h4>
                <div class="info-box">
                    <div class="edit-intro">暂时没有个人简介</div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!--两列布局-->
    <div class="wrapper  myhome">
        <div class="left-list">
            <div class="sj-myhome-list">
                <ul class="home-list">
                    <li class="active"><a href="./sj-person-homepage.html">我的主页</a></li>
                    <li><a href="./sj-person-myanswer.html">我的回答</a></li>
                    <li><a href="./sj-person-myquestion.html">我的提问</a></li>
                    <li><a href="./sj-person-myshare.html">我的分享</a></li>
                </ul>
                <ul class="home-list bottom">
                    <li><a href="./sj-person-dynamic.html">个人动态</a></li>
                    <li><a href="./sj-person-myfocus.html">我的关注</a></li>
                    <li><a href="./sj-person-mycollect.html">我的收藏</a></li>
                    <li><a href="./sj-person-myreaded.html">浏览记录</a></li>
                    <li><a href="./sj-person-account.html">账户设置</a></li>
                </ul>
            </div>
        </div>
        <div class="right-content">
            <div class="home-content">
                <ul class="sui-nav nav-tabs nav-large">
                    <li class="active"><a href="#one" data-toggle="tab">我的提问</a></li>
                    <li><a href="#two" data-toggle="tab">我的回答</a></li>
                </ul>

                <div class="tab-content tab-wraped">
                    <div id="one" class="tab-pane active">
                        <ul class="question-list">

                            <li>
                                <span class="fl good"><span class="num">12</span> 有用</span>
                                <span class="title"><a href="#">有关PHP初级进阶的问题</a></span>
                                <span class="fr date">4月6日</span>
                                <span class="clearfix"></span>
                            </li>

                            <li>
                                <span class="fl good"><span class="num">12</span> 有用</span>
                                <span class="title"><a href="#">有关JAVA初级进阶的问题</a></span>
                                <span class="fr date">4月6日</span>
                                <span class="clearfix"></span>
                            </li>

                            <li>
                                <span class="fl good"><span class="num">12</span> 有用</span>
                                <span class="title"><a href="#">有关HTML5初级进阶的问题</a></span>
                                <span class="fr date">4月6日</span>
                                <span class="clearfix"></span>
                            </li>

                            <li>
                                <span class="fl good"><span class="num">12</span> 有用</span>
                                <span class="title"><a href="#">有关C++初级进阶的问题</a></span>
                                <span class="fr date">4月6日</span>
                                <span class="clearfix"></span>
                            </li>

                            <li>
                                <span class="fl good"><span class="num">12</span> 有用</span>
                                <span class="title"><a href="#">有关python初级进阶的问题</a></span>
                                <span class="fr date">4月6日</span>
                                <span class="clearfix"></span>
                            </li>

                        </ul>

                    </div>
                    <div id="two" class="tab-pane">

                        <ul class="question-list">

                            <li>
                                <span class="fl good"> <span class="num">8</span> 有用</span>
                                <span class="title"><a href="#">有关PHP初级进阶的问题</a></span>
                                <span class="fr date">2017-07-05 15:08</span>
                                <span class="clearfix"></span>
                            </li>

                            <li>
                                <span class="fl good"> <span class="num">7</span> 有用</span>
                                <span class="title"><a href="#">有关JAVA初级进阶的问题</a></span>
                                <span class="fr date">2017-07-05 15:08</span>
                                <span class="clearfix"></span>
                            </li>

                            <li>
                                <span class="fl good"> <span class="num">6</span> 有用</span>
                                <span class="title"><a href="#">有关HTML5初级进阶的问题</a></span>
                                <span class="fr date">2017-07-05 15:08</span>
                                <span class="clearfix"></span>
                            </li>

                            <li>
                                <span class="fl good"> <span class="num">12</span> 有用</span>
                                <span class="title"><a href="#">有关C++初级进阶的问题</a></span>
                                <span class="fr date">2017-07-05 15:08</span>
                                <span class="clearfix"></span>
                            </li>

                            <li>
                                <span class="fl good"> <span class="num">12</span> 有用</span>
                                <span class="title"><a href="#">有关python初级进阶的问题</a></span>
                                <span class="fr date">2017-07-05 15:08</span>
                                <span class="clearfix"></span>
                            </li>

                        </ul>

                    </div>
                </div>
                <div class="activities">
                    <h4 class="tit"><span>我的动态</span></h4>
                    <ul class="activities-content">
                        <li>
                            <div class="index-title">
                                <span class="author">本杰明</span>
                                <span class="operate">关注了标签</span> ·
                                <span class="time">3小时前</span>
                            </div>
                            <div class="guanzhuname">
                                <span class="tag">php</span>
                                <span class="tagnum">100</span> 关注
                            </div>
                            <div class="intro">
                                PHP，是英文超文本预处理语言 Hypertext Preprocessor 的缩写。PHP 是一种开源的通用计算机脚本语言，尤其适用于网络开发并可嵌入HTML中使用。PHP 的语法借鉴吸收C语言、Java和Perl等流行计算机语言的特点，易于一般程序员学习。

                            </div>
                        </li>
                        <li>
                            <div class="index-title">
                                <span class="author">本杰明</span>
                                <span class="operate">回答了问题</span> ·
                                <span class="time">3小时前</span>
                            </div>
                            <div class="question">
                                <p class="title">网页链接如何直接打开微信，并进入公众号关注页面</p>
                                <p class="content">现在针对这个微信是屏蔽的，你可以选择通过连接到一个其他的公众号文章中进行关注。</p>
                            </div>
                            <div class="qa-num">
                                <span>关注<i>1</i></span>
                                <span>回答<i>2</i></span>
                            </div>
                        </li>
                        <li>
                            <div class="index-title">
                                <span class="author">本杰明</span>
                                <span class="operate">收藏了文章</span> ·
                                <span class="time">3小时前</span>
                            </div>
                            <div class="question">
                                <p class="title">网页链接如何直接打开微信，并进入公众号关注页面</p>
                            </div>
                            <div class="qa-num">
                                <span><a href="#">http://baidu.com</a></span>
                            </div>
                        </li>
                        <li>
                            <div class="index-title">
                                <span class="author">本杰明</span>
                                <span class="operate">收藏了文章</span> ·
                                <span class="time">3小时前</span>
                            </div>
                            <div class="question">
                                <p class="title">网页链接如何直接打开微信，并进入公众号关注页面</p>
                            </div>
                            <div class="qa-num">
                                <span><a href="#">http://baidu.com</a></span>
                            </div>
                        </li>
                        <li>
                            <div class="index-title">
                                <span class="author">本杰明</span>
                                <span class="operate">回答了问题</span> ·
                                <span class="time">3小时前</span>
                            </div>
                            <div class="question">
                                <p class="title">网页链接如何直接打开微信，并进入公众号关注页面</p>
                                <p class="content">现在针对这个微信是屏蔽的，你可以选择通过连接到一个其他的公众号文章中进行关注。</p>
                            </div>
                            <div class="qa-num">
                                <span>关注<i>1</i></span>
                                <span>回答<i>2</i></span>
                            </div>
                        </li>


                    </ul>
                </div>


            </div>
        </div>
        <div class="clearfix"></div>
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
                $(this).find(".fa-plus").css("color", "#000");
            })
        })


        $(function() {
            $(".share .fa").hover(function() {
                $(this).css("opacity", "1.0");
            }, function() {
                $(this).css("opacity", "0.6")
            })
        })


        $(function() {
            // 个人简介
            $(".addedit").click(function() {
                var editBox = $(".edit-intro");
                var editBoxtxt = editBox.text();
                var input = $("<div><textarea class='editarea' type='text' /><div class='btns'><button class='sui-btn btn-default btn-cancel'>取消</button><button class='sui-btn btn-info btn-save'>保存</button></div></div>");
                editBox.html(input);

                // 点击保存
                $(".edit-intro .btn-save").click(function() {
                    var newval = $(".editarea").val();
                    if (newval == "") {
                        editBox.html("暂时没有个人简介")
                    } else if ($.trim(newval) != $.trim(editBoxtxt)) {
                        editBox.html(newval);
                    }
                })
                //点击取消
                $(".edit-intro .btn-cancel").click(function() {
                    editBox.html("暂时没有个人简介")
                })

            });
            $(".edit-item").click(function() {
                var txt = $(this).text(); //可变的值

                var rightform = $(this).siblings(".sui-form");
                var rightinput = $(this).siblings(".sui-form input").val(); // 输入的值

                rightform.show();

                // $(".save-btn").click(function(){
                //     console.log(rightinput);
                // })



            })


        })


        $(function() {
            $(".home-list li").click(function() {
                $(this).addClass("active");
                $(this).siblings().removeClass("active");
            })
        })
    </script>
</body>