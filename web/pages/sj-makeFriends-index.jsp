<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>猿圈儿-交友</title>

    <!-- 页面 css js -->

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/normalize-css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/yui/cssgrids-min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sui/sui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sui/sui-append.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-makeFriends-index.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-index-login.css" />
</head>

<body>
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
   
    <div class="banner">
        <div class="wrapper">
            <img src="${pageContext.request.contextPath}/img/page-banner.png" alt="">
        </div>

    </div>
    <!--两列布局-->
    <div class="wrapper tag-item">
        <div class="fl left-list">
            <div class="friend-dating-list">
                <ul class="friends">
                	<c:forEach items="${pb.data }" var="item">
	                    <li class="friend-item">
	                        <div class="fl photo">
	                            <div class="img"><img src="${pageContext.request.contextPath}/img/widget-dating-${item.d_topic }.png" alt=""></div>
	                        </div>
	                        <div class="fl content">
	                            <p class="title"><span class="name">${item.create_uname }</span> 发布了<span class="${item.d_topic }">
	                            		<c:choose>
	                                    		<c:when test="${item.d_topic=='eat' }">吃饭</c:when>
	                                    		<c:when test="${item.d_topic=='sing' }">K歌</c:when>
	                                    		<c:when test="${item.d_topic=='travel' }">旅行</c:when>
	                                    		<c:when test="${item.d_topic=='movie' }">看电影</c:when>
	                                    		<c:when test="${item.d_topic=='cofe' }">喝咖啡</c:when>
	                                    		<c:otherwise>其他</c:otherwise>
	                                    </c:choose>
	                            </span>的约会</p>
	                            <p class="aa"><span class="money"><i class="fa fa-jpy" aria-hidden="true"></i> 费用：${item.d_cost }</span> <span class="time"><i class="fa fa-clock-o" aria-hidden="true"></i> 时间：${item.d_time }</span></p>
	                            <p class="point"><i class="fa fa-map-marker" aria-hidden="true"></i> 地点：${item.d_address }</p>
	                            <p class="desc"><i class="fa fa-pagelines" aria-hidden="true"></i> 描述：${item.d_desc }</p>
	                            <p class="maketime">
		                            <fmt:formatDate value="${item.d_createtime }" pattern="yyyy-MM-dd HH:mm:ss"/>
	                            </p>
	                        </div>
	                        <a href="javascript:;" class="havedate">
	                            <div class="fr xy">
	                                <div class="date-btn">
	                                    <span class="circle"></span>
	                                    <span class="${item.flag }">
	                                    	<c:choose>
	                                    		<c:when test="${item.flag==0 }">响应约会</c:when>
	                                    		<c:when test="${item.flag==1 }">约会发布者</c:when>
	                                    		<c:when test="${item.flag==2 }">已申请约会</c:when>
	                                    	</c:choose>
	                                    </span>
	                                </div>
	                                <form action="${pageContext.request.contextPath}/date" method="post">
			                       		<input type="hidden" name="date_id" value="${item.d_id }"/>
			                       		<input type="hidden" name="method" value="join"/>
			                       		<input type="hidden" name="a_content" value="响应了你的约会"/>
			                       		<input type="hidden" name="u_id" value="${item.create_uid }"/>
			                       		<c:choose>
	                                    		<c:when test="${item.d_topic=='eat' }"><input type="hidden" name="a_title" value="吃饭"/></c:when>
	                                    		<c:when test="${item.d_topic=='sing' }"><input type="hidden" name="a_title" value="K歌"/></c:when>
	                                    		<c:when test="${item.d_topic=='travel' }"><input type="hidden" name="a_title" value="旅行"/></c:when>
	                                    		<c:when test="${item.d_topic=='movie' }"><input type="hidden" name="a_title" value="看电影"/></c:when>
	                                    		<c:when test="${item.d_topic=='cofe' }"><input type="hidden" name="a_title" value="喝咖啡"/></c:when>
	                                    		<c:otherwise><input type="hidden" name="a_title" value="其他"/></c:otherwise>
	                                    </c:choose>
	                                </form>
	                            </div>
	                        </a>
	                       
	                        <div class="clearfix"></div>
	                    </li>
                    </c:forEach>
              	</ul>
                
                <!-- ========================================================= -->
                <!--分页 -->
				<div class="sui-pagination">
					<ul>
						<!-- 判断当前页是否是第一页,若是不可点  -->
						<c:if test="${pb.pageNumber == 1 }">
							<li  class="prev disabled">
								<a href="javascript:void(0)">
									上一页
								</a>
							</li>
						</c:if>
						<c:if test="${pb.pageNumber != 1 }">
							<li  class="prev">
								<a href="${pageContext.request.contextPath }/date?method=index&pageNumber=${pb.pageNumber-1}">
									上一页
								</a>
							</li>
						</c:if>
						<!-- <li class="active"><a href="#">1</a></li> -->
						
						<!-- 展示所有页码 -->
						<c:forEach begin="1" end="${pb.totalPage }" var="n">
							<!-- 判断是否是当前页 -->
							<c:if test="${n == pb.pageNumber }">
								<li class="active"><a href="javascript:void(0)">${n }</a></li>
							</c:if>
							<c:if test="${n != pb.pageNumber }">
								<li><a href="${pageContext.request.contextPath }/date?method=index&pageNumber=${n}">${n }</a></li>
							</c:if>
						</c:forEach>
						
						<!-- 判断是否是尾页 若是,下一页不可点 -->
						<c:if test="${pb.pageNumber == pb.totalPage }">
							<li class="next disabled">
								<a href="javascript:void(0)">
									下一页
								</a>
							</li>
						</c:if>
						<c:if test="${pb.pageNumber != pb.totalPage }">
							<li class="next">
								<a href="${pageContext.request.contextPath }/date?method=index&pageNumber=${pb.pageNumber+1}" aria-label="Next">
									下一页
								</a>
							</li>
						</c:if>
						
					</ul>
				</div>
                <!-- ========================================================= -->
            </div>
        </div>
        <div class="fl right-tag">
            <div class="block-btn">
                <p>约一约有趣的人，会一会好的时光！</p>
                <a class="sui-btn btn-block btn-share" onclick="submitDates()" href="javascript:void(0)">发布约会</a>
                
            </div>
            <div class="rank">
                <div class="head">
                    <h3 class="title">排行榜</h3>
                </div>
                <div class="rank-list">
                    <ul class="rank">
                        <li>
                            <span class="fl dating">喝咖啡</span>
                            <span class="fr cafe">102258</span>
                        </li>
                        <li>
                            <span class="fl dating">吃饭</span>
                            <span class="fr eat">9878</span>
                        </li>
                        <li>
                            <span class="fl dating">看电影</span>
                            <span class="fr movie">2564</span>
                        </li>
                        <li>
                            <span class="fl dating">旅行</span>
                            <span class="fr travel">897</span>
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
                $(this).find(".fa-plus").css("color", "#fff");
            })
        })


        $(function() {
            $(".xy").click(function() {
            	if(!Boolean("${existUser}")){
           			alert("先登录,才可以点击哦~");
           			return false;
           		}
            	
            	if($(this).find("span").last().attr("class")=='1'){
            		return false;
            	}else if($(this).find("span").last().attr("class")=='2'){
            		alert("你已参会");
            		return false;
            	}else{
            		if(confirm("确定要参加此次约会吗?")){
            			$(this).children("form").submit();
            		}
            	}
            })
        })
        
       	function submitDates(){
       		var user = Boolean("${existUser}");
       		if(!user){
       			alert("先登录,才可以发布约会");
       			return false;
       		}
       		//登录成功
       		location.href="${pageContext.request.contextPath }/date?method=saveUI";
       		
       	}
    </script>
</body>