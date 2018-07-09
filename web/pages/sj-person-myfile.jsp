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
    <title>十次方-我的档案</title>

    <!-- 页面 css js -->

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/normalize-css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/yui/cssgrids-min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sui/sui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sui/sui-append.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-person-myfile.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-index-login.css" />
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
                	${empty existUser.memo ? '暂时没有个人简介' : existUser.memo}
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!--两列布局-->
    <div class="wrapper  myhome">
        <div class="sui-layout layout3">
            <div class="sidebar">
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
            <div class="content">
                <div class="file-edit">
                    <div class="info">
                        <h3 class="tit"><span>个人档案</span></h3>
                        <!-- 个人信息 -->
                        <div class="sui-row-fluid person canadd">
                            <div class="span4 item">
                                <h3 class="name">真人头像</h3>
                               <%--  <img src="${pageContext.request.contextPath}/img/widget-myphoto.jpg" alt="" class="person"> --%>
                               <c:if test="${empty existUser.image }">
			               			<img src="${pageContext.request.contextPath}/img/photo/widget-myphoto.jpg" alt="用户头像" class="person">
			               		</c:if>
			               		<c:if test="${not empty existUser.image }">
			                	 		<img src="${pageContext.request.contextPath}/${existUser.image }" alt="用户头像" class="person">
			                   	</c:if>
                            </div>
                            <div class="span4 item">
                                <h3 class="name">真人姓名</h3>
                                <p>
                                	${empty existUser.name?'暂无':existUser.name }
                                </p>
                                <h3 class="name">出生日期</h3>
                                <p>${empty existUser.birthday?'暂无':existUser.birthday }</p>
                                <h3 class="name">手机号码</h3>
                                <p>${empty existUser.mobile?'暂无':existUser.mobile }</p>
                                <h3 class="name">现居城市</h3>
                                <p>${empty existUser.city?'暂无':existUser.city }</p>
                            </div>
                            <div class="span3 item">
                                <h3 class="name">性别</h3>
                                <p>
                                	<c:choose>
                                		<c:when test="${existUser.sex == 1 }">男</c:when>
                                		<c:when test="${existUser.sex == 0 }">女</c:when>
                                		<c:otherwise>暂无</c:otherwise>
                                	</c:choose>
                                </p>
                                <h3 class="name">个人网站</h3>
                                <p>${empty  existUser.site ? '暂无':existUser.site}</p>
                                <h3 class="name">Email</h3>
                                <p>${empty  existUser.email ? '暂无':existUser.email}</p>
                                <h3 class="name">通讯地址</h3>
                                <p>${empty  existUser.address ? '暂无':existUser.address}</p>
                            </div>
                            <div class="span1 edit" id="editMyFile">
                                <span class="gray"><i class="fa fa-pencil" aria-hidden="true"></i>编辑</span>
                            </div>
                            <div style="clear:both"></div>
                            <!-- info form -->
                            
                            <div class="form-show" id="myFileForm">
                                <form action="${pageContext.request.contextPath }/updateUser" method="post" class="sui-form" enctype="multipart/form-data">
	                                <div class="photo">
	                                    <div class="text">
	                                        <input type="file" name="image">上传真人头像</button>
	                                    </div>
	                                </div>
                                    <div class="sui-row-fluid">
                                        <div class="span6">
                                            <div class="control-group">
                                                <label for="" class="control-label">真实姓名</label>
                                                <div class="controls">
                                                    <input type="text" id="name" name="name" value="${existUser.name }" class="input-large" placeholder="真实姓名" name="name">
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label for="" class="control-label">出生日期</label>
                                                <div class="controls">
                                                    <input type="date" id="birthday" name="birthday" value="${existUser.birthday }" class="input-large" placeholder="1970/01/01" name="birthday">
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label for="" class="control-label">手机号码</label>
                                                <div class="controls">
                                                    <input type="text" id="telphone" name="mobile" value="${existUser.mobile }" class="input-large" placeholder="11位手机号码" name="telphone">
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label for="" class="control-label">现居城市</label>
                                                <div class="controls">
                                                    <input type="text" id="city" name="city" value="${existUser.city }" class="input-large" placeholder="当前现居城市" name="city">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="span6">
                                            <div class="control-group" style="height: 60px;">
                                                <label for="" class="control-label">性别</label>
                                                <div class="controls">
                                                    <label data-toggle="radio" class="radio-pretty inline <c:if  test='${existUser.sex==1}'>checked</c:if>">
				                                        <input type="radio" name="sex" value="1" ><span>男</span>
				                                     </label>
                                                    <label data-toggle="radio" class="radio-pretty inline   <c:if  test='${existUser.sex==0}'>checked</c:if>"><!--  <c:if test='${existUser.sex==2}'>checked</c:if> -->
				                                        <input type="radio" name="sex" value="0"  ><span>女</span>
				                                    </label>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label for="" class="control-label">个人网站</label>
                                                <div class="controls">
                                                    <input type="text" id="net" name="site" value="${existUser.site }" class="input-large" placeholder="example.com" name="net">
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label for="" class="control-label">Email</label>
                                                <div class="controls">
                                                    <input type="text" id="email" name="email" value="${existUser.email }" class="input-large" placeholder="用于收取通知，找回密码" name="email">
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label for="" class="control-label">通讯地址</label>
                                                <div class="controls">
                                                    <input type="text" id="city" name="address" value="${existUser.address }" class="input-large" placeholder="当前通讯地址" name="city">
                                                </div>
                                            </div>
                                            <div class="control-group btns">
                                                <button class="sui-btn btn-cancel" type="button">取消</button>
                                                <button class="sui-btn btn-save" type="submit">保存</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            
                        </div>

                    <!-- 工作 -->
                    <div class="canadd">
                        <h3 class="tit"><span>工作经历</span></h3>
                        <div class="add-list">
                        		<c:forEach items="${workList }" var="item">
	                        		<li>
		                                <h3>
		                                    <span class="add-name">${item.e_name }-${item.e_major }</span>
		                                    <span class="gray edit" onclick="editWorkOrEdu('${item.e_id}')"><i class="fa fa-pencil" aria-hidden="true"></i>编辑</span>
		                                </h3>
		                                <span class="date">${item.e_starttime } - ${empty item.e_endtime?'至今':item.e_endtime }</span>
		                            </li>
                        		</c:forEach>
                            <p class="add"><a href="javascript:void(0);">添加工作经历</a></p>
                        </div>
                        <!-- work add form -->
                        <div class="form-show">
                            <form action="${pageContext.request.contextPath }/experience" class="sui-form" method="post">
								<input type="hidden" name="method" value="save"/>
								<input type="hidden" name="e_type" value="0"/>
                                <div class="sui-row-fluid">
                                    <div class="span6">
                                        <div class="control-group">
                                            <label for="" class="control-label">公司/组织名称</label>
                                            <div class="controls">
                                                <input type="text" id="company" name="e_name" class="input-large" placeholder="公司/组织名称" name="company">
                                            </div>
                                        </div>
                                        <div class="control-group input-daterange">
                                            <label for="" class="control-label">起止时间</label>
                                            <div class="controls date">
                                                <input type="date" class="input-medium" name="e_starttime"><span>-</span>
                                                <input type="date" class="input-medium" name="e_endtime">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span6">
                                        <div class="control-group">
                                            <label for="" class="control-label">职位头衔</label>
                                            <div class="controls">
                                                <input type="text" id="job" name="e_major" class="input-large" placeholder="如：Java工程师" name="job">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label for="" class="control-label">工作城市</label>
                                            <div class="controls">
                                                <input type="text" id="work-city" name="e_city" class="input-large" placeholder="如：上海" name="work-city">
                                            </div>
                                        </div>

                                    </div>
                                    <div class="control-group">
                                        <label for="" class="control-label">相关技术</label>
                                        <div class="controls">
                                            <input type="text" placeholder="标签，如:php可使用逗号，分号； 来分隔" name="e_skill" class="input-xfat input-xxlarge" id="tags">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label for="" class="control-label">职位描述</label>
                                        <div class="controls">
                                            <textarea rows="3" class="input-block-level" name="e_desc" placeholder="在职期间做了什么工作，解决了什么问题，做了什么贡献？"></textarea>
                                        </div>
                                    </div>
                                    <div class="control-group btns">
                                        <button class="sui-btn btn-cancel" type="button">取消</button>
                                        <button class="sui-btn btn-save" type="submit">保存</button>
                                    </div>
                                </div>
                            </form>
                        </div>
						
						<!-- work edit form -->
						<div class="form-show" id="editFormId">
							<form action="${pageContext.request.contextPath }/experience" class="sui-form" method="post">
							 
							 	<div class="sui-row-fluid" id="formDivId">
							 		
							 	</div>
							 	<div class="sui-row-fluid">
							        <div class="control-group btns">
							            <button class="sui-btn btn-cancel" type="button">取消</button>
							            <button class="sui-btn btn-save" type="submit">保存</button>
							        </div>
							    </div>
							</form>
						</div>

                    </div>
                    <!-- 教育 -->
                    <div class="canadd">
                        <h3 class="tit"><span>教育经历</span></h3>
                        <div class="add-list">
                            <li>
                                <h3>
                                    <span class="add-name">传智专修学院-全栈工程师</span>
                                    <span class="gray edit"><i class="fa fa-pencil" aria-hidden="true"></i> 编辑</span>
                                </h3>
                                <span class="date">2017年01月21日 - 至今</span>
                            </li>
                            <p class="add"><a href="javascript:;">添加教育经历</a></p>
                        </div>
                        <!-- edu form -->
                        <div class="form-show">
                            <form action="" class="sui-form">
                                <div class="sui-row-fluid">
                                    <div class="span6">
                                        <div class="control-group">
                                            <label for="" class="control-label">院校名称</label>
                                            <div class="controls">
                                                <input type="text" id="company" class="input-large" placeholder="院校名称" name="company">
                                            </div>
                                        </div>
                                        <div class="control-group input-daterange" data-toggle="datepicker">
                                            <label for="" class="control-label">起止时间</label>
                                            <div class="controls date">
                                                <input type="text" class="input-medium input-date" value="2016-01-01"><span>-</span>
                                                <input type="text" class="input-medium input-date">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span6">
                                        <div class="control-group">
                                            <label for="" class="control-label">所学专业</label>
                                            <div class="controls">
                                                <input type="text" id="job" class="input-large" placeholder="如：Java工程师" name="job">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label for="" class="control-label">学历</label>
                                            <div class="controls">
                                                <span class="sui-dropdown dropdown-bordered select"><span class="dropdown-inner"><a id="drop4" role="button" data-toggle="dropdown" href="#" class="dropdown-toggle">
                                 <input value="hz" name="city" type="hidden"><i class="caret"></i><span>专科</span></a>
                                                <ul id="menu4" role="menu" aria-labelledby="drop4" class="sui-dropdown-menu">
                                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="bj">专科</a></li>
                                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="sb">本科</a></li>
                                                    <li role="presentation" class="active"><a role="menuitem" tabindex="-1" href="javascript:void(0);" value="hz">硕士</a></li>
                                                </ul>
                                                </span>
                                                </span>
                                            </div>
                                        </div>

                                    </div>
                                    <div style="clear:both"></div>
                                    <div class="control-group">
                                        <label for="" class="control-label">相关技术</label>
                                        <div class="controls">
                                            <input type="text" placeholder="标签，如:php可使用逗号，分号； 来分隔" class="input-xfat input-xxlarge" id="tags">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label for="" class="control-label">取得成就</label>
                                        <div class="controls">
                                            <textarea rows="3" class="input-block-level" placeholder="在校期间做了什么工作，解决了什么问题，做了什么贡献？"></textarea>
                                        </div>
                                    </div>
                                    <div class="control-group btns">
                                        <button class="sui-btn btn-cancel" type="button">取消</button>
                                        <button class="sui-btn btn-save" type="submit">保存</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="sidebar right">
                <h3><span>简历完善度</span></h3>
                <div class="sui-progress progress-success">
                    <div style="width: 30%;" class="bar">30%</div>
                </div>
            </div> -->
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
            })


        })


        $(function() {
            $(".home-list li").click(function() {
                $(this).addClass("active");
                $(this).siblings().removeClass("active");
            })
        })


        $(function() {
        	//编辑我的档案
        	$("#editMyFile").click(function(){
        		if($("#myFileForm").is(":hidden")){
        			$("#myFileForm").show();
        		}else{
        			$("#myFileForm").hide();
        		}
        	});
        	
        	//打开添加经历表单
        	$(".add").click(function(){
        		$(this).parents('.canadd').children('.form-show').hide();
        		$(this).parents('.canadd').children('.form-show').first().show();
        	});
        	
        	//点击取消按钮,隐藏表单
            $('.btn-cancel').click(function(){
            	$(this).parents('.form-show').hide();
            });
        });
        
      	
        
        $("#tags1").focus(function() {
            $("#tags-box1").css("display", "block");
           /*  $("#tags-box1 .tag-item").click(function() {
                var text = $(this).text();
                $("#tags1").before("<span class='tags-detail with-x'>" + text + "<i>×</i></span>");
                $(".tags-detail").click(function() {
                    $(this).remove();
                })
            }); */
        });
        $(document).click(function() {
            $(".tags-box").hide();
        });
        $(".tags-area").click(function(event) {
            event.stopPropagation();
        });
        
        function editWorkOrEdu(id){
        	$.post("${pageContext.request.contextPath}/experience","method=findById&eid="+id,function(data){
        		//让其他关于经历的表单隐藏
        		$("#editFormId").siblings(".form-show").hide();
        		
        		//将返回的数据放入一个id为"formDivId"的div中,找到此div的父类(class='form-show'),最后将父类div显示
        		$("#formDivId").html(data).parents(".form-show").show();
        	});
        }
    </script>
</body>