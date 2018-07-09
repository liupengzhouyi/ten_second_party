<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/img/asset-favicon.ico">
    <title>十次方-登录注册</title>

    <!-- 页面 css js -->

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/normalize-css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/yui/cssgrids-min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sui/sui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sui/sui-append.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-person-loginsign.css" />
</head>

<body>
    <!--头部导航-->
    <header class="head-login">
        <div class="wrapper">
            <div class="sui-navbar">
                <div class="navbar-inner">
                    <a href="${pageContext.request.contextPath}/pages/sj-index-login.html" class="sui-brand">
              <img src="${pageContext.request.contextPath}/img/widget-logo.png" alt="十次方">
            </a>
                    <span class="login-text">| 登录注册</span>
                </div>
            </div>
         </div>
    </header>
    <div class="wrapper loginsign">
        <div class="item signup">
            <div class="form">
                <h3 class="loginsign-title">注册新账号</h3>
                <form class="sui-form" method="post" action="${pageContext.request.contextPath }/user">
                	<input type="hidden" name="method" value="regist">
                    <div class="control-group">
                        <label for="inputname" class="control-label">用户名</label>
                        <div class="controls">
                            <input type="text" id="inputname" name="username" placeholder="昵称" class="input-xlarge" data-rules="required">
                        </div>
                    </div>
                    <div class="different">
                        <div class="control-group types">
                            <div class="controls">
                                <label data-toggle="radio" class="radio-pretty inline  checked">
		                            <input type="radio" name="radio" checked="checked" class="myradio"><span  class="type-text">用Email注册</span>
		                        </label>
                            </div>
                        </div>
                        <div class="radio-content">
                            <div id="a1" class="email">
                                <div class="control-group inputemail">
                                    <input type="text" name="email" placeholder="输入邮箱" class="input-xlarge">
                                    <!-- 邮箱注册 -->
                                    <!-- <input type="hidden" class="registType" name="registType" value="email"> -->
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="control-group">
                            <label for="inputpassword" class="control-label">密码</label>
                            <div class="controls">
                                <input type="password" name="password" id="inputpassword" placeholder="请输入6-16位密码" class="input-xlarge">
                            </div>
                        </div>
                    <div class="control-group btn-signup">
                        <label class="control-label"></label>
                        <div class="controls">
                           <!--  <label data-toggle="checkbox" class="checkbox-pretty inline">
			                    <input type="checkbox" name="remember-me" ><span class="type-text" style="font-size:12px;">同意协议并接受《服务条款》</span>
			                </label> -->
                            <button type="submit" class="sui-btn btn-danger btn-yes">注 册</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
        <div class="item">
            <div class="form">
                <h3 class="loginsign-title">用户登录<small>${msg }</small></h3>
                <form class="sui-form login-form" method="post" action="${pageContext.request.contextPath }/user">
                	<input type="hidden" name="method" value="login">
                    <div class="control-group">
                        <label for="inputname" class="control-label">用户名或Email：</label>
                        <div class="controls">
                            <input type="text" id="inputname" name="username" placeholder="用户名或Email" class="input-xlarge" data-rules="required">
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="inputpassword" class="control-label">密码：</label>
                        <div class="controls">
                            <input type="password" id="inputpassword" name="password" placeholder="输入登录密码" class="input-xlarge">
                        </div>
                    </div>


                    <div class="controls">
                        <label data-toggle="checkbox" class="checkbox-pretty inline">
                <input type="checkbox" name="remember-me" ><span class="type-text" style="font-size:12px;">记住登录状态</span>
            </label>
                        <button type="submit" class="sui-btn btn-danger btn-yes">登 录</button>

                    </div>
                </form>
            </div>
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

    <script type="text/javascript" charset="UTF-8" src="${pageContext.request.contextPath}/plugins/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" charset="UTF-8" src="${pageContext.request.contextPath}/plugins/sui/sui.min.js"></script>
    <script>
      $(function() {
            var myradio = $(".myradio");
            var div = $(".radio-content").children("div");

            $("#a2").find(".registType").removeAttr("name");
            myradio.click(function() {
                $(this).attr("checked", "checked");
                $(this).siblings().attr("checked", false);

                for (var i = 0; i < div.length; i++) {
                    if (myradio[i].checked) {
                        div[i].style.display = "block";
                        $(div[i]).find(".registType").attr("name","registType");
                    } else {
                        div[i].style.display = "none";
                        $(div[i]).find(".registType").removeAttr("name");
                    }
                }
            })
        }) 
    </script>
</body>