<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-headline-logined.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page-sj-index-login.css" />
    <title>十次方</title>
</head>

<body>
    <div class="sui-container wrapper">
        <!--引用组件-->
        <!--头部导航-->
       	<%@include file="sj-top.jsp" %>


        <!--三列布局-->
        <div class="sj-content">
            <div class="left-nav">
                <div class="float-nav" id="float-nav">
                    <ul class="sui-nav nav-tabs nav-xlarge tab-navbar tab-vertical">
                        <li class="active"><a>热门</a></li>
                        <li><a href="#">牛人专区</a></li>
                        <li><a href="#">机器学习</a></li>
                        <li><a href="#">后端开发</a></li>
                        <li><a href="#">人工智能</a></li>
                        <li><a href="#">虚拟现实</a></li>
                        <li><a href="#">商业预测</a></li>
                        <li><a href="#">前端开发</a></li>
                    </ul>
                </div>

            </div>
            <div class="right-content">
                <div class="fl middle">
                    <div class="carousel">
                        <div id="myCarousel" data-ride="carousel" data-interval="4000" class="sui-carousel slide">
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="active item">
                                    <img src="${pageContext.request.contextPath}/img/widget-banner01.png">
                                </div>
                                <div class="item">
                                    <img src="${pageContext.request.contextPath}/img/widget-banner02.png">
                                </div>
                                <div class="item">
                                    <img src="${pageContext.request.contextPath}/img/widget-banner01.png">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="data-list">
                        <ul class="headline fixed" id="headline">


                            <li class="headline-item">
                                <div class="fl indexImg">
                                    <img src="">
                                </div>
                                <div class="words">
                                    <h3>Drive.ai融资5000万吴恩达加入董事会 <span><img src="" class="vip"></span></h3>
                                    <h5 class="author">
                                        <div class="fl">
                                            <span class="authorName">
                                <img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">
                                玻璃通
                            </span>
                                            <span>6月22日 12:01</span>
                                        </div>
                                        <div class="fr attention">
                                            <span class="attentionText">关注</span>
                                            <span class="beforeclose">
                                <i class="fa fa-times delete" aria-hidden="true"></i> 
                                <i class="nolike">不感兴趣</i>
                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </h5>
                                </div>
                                <p class="content">滴滴与360都开源了各自的插件化框架，VirtualAPK与RePlugin,作为一个插件化方面的狂热研究者，在周末就迫不及待的下载了Virtualapk框架来进行研究，本篇博客带的……</p>
                            </li>


                            <li class="headline-item">
                                <div class="fl indexImg">
                                    <img src="">
                                </div>
                                <div class="words">
                                    <h3>Drive.ai融资5000万吴恩达加入董事会 <span><img src="${pageContext.request.contextPath}/img/widget-vip.png" class="vip"></span></h3>
                                    <h5 class="author">
                                        <div class="fl">
                                            <span class="authorName">
                                <img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">
                                玻璃通
                            </span>
                                            <span>6月12日 13：34</span>
                                        </div>
                                        <div class="fr attention">
                                            <span class="attentionText">关注</span>
                                            <span class="beforeclose">
                                <i class="fa fa-times delete" aria-hidden="true"></i> 
                                <i class="nolike">不感兴趣</i>
                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </h5>
                                </div>
                                <p class="content">滴滴与360都开源了各自的插件化框架，VirtualAPK与RePlugin,作为一个插件化方面的狂热研究者，在周末就迫不及待的下载了Virtualapk框架来进行研究，本篇博客带的……</p>
                            </li>


                            <li class="headline-item">
                                <div class="fl indexImg">
                                    <img src="${pageContext.request.contextPath}/img/widget-list01.png">
                                </div>
                                <div class="words">
                                    <h3>Drive.ai融资5000万吴恩达加入董事会 <span><img src="${pageContext.request.contextPath}/img/widget-vip.png" class="vip"></span></h3>
                                    <h5 class="author">
                                        <div class="fl">
                                            <span class="authorName">
                                <img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">
                                玻璃通
                            </span>
                                            <span>6月12日 13：34</span>
                                        </div>
                                        <div class="fr attention">
                                            <span class="attentionText">关注</span>
                                            <span class="beforeclose">
                                <i class="fa fa-times delete" aria-hidden="true"></i> 
                                <i class="nolike">不感兴趣</i>
                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </h5>
                                </div>
                                <p class="content"></p>
                            </li>


                            <li class="headline-item">
                                <div class="fl indexImg">
                                    <img src="">
                                </div>
                                <div class="words">
                                    <h3>Drive.ai融资5000万吴恩达加入董事会 <span><img src="${pageContext.request.contextPath}/img/widget-vip.png" class="vip"></span></h3>
                                    <h5 class="author">
                                        <div class="fl">
                                            <span class="authorName">
                                <img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">
                                玻璃通
                            </span>
                                            <span>6月7日 10：34</span>
                                        </div>
                                        <div class="fr attention">
                                            <span class="attentionText">关注</span>
                                            <span class="beforeclose">
                                <i class="fa fa-times delete" aria-hidden="true"></i> 
                                <i class="nolike">不感兴趣</i>
                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </h5>
                                </div>
                                <p class="content">滴滴与360都开源了各自的插件化框架，VirtualAPK与RePlugin,作为一个插件化方面的狂热研究者，在周末就迫不及待的下载了Virtualapk框架来进行研究，本篇博客带的……</p>
                            </li>


                            <li class="headline-item">
                                <div class="fl indexImg">
                                    <img src="${pageContext.request.contextPath}/img/widget-list02.png">
                                </div>
                                <div class="words">
                                    <h3>Drive.ai融资5000万吴恩达加入董事会 <span><img src="${pageContext.request.contextPath}/img/widget-vip.png" class="vip"></span></h3>
                                    <h5 class="author">
                                        <div class="fl">
                                            <span class="authorName">
                                <img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">
                                玻璃通
                            </span>
                                            <span>6月12日 13：34</span>
                                        </div>
                                        <div class="fr attention">
                                            <span class="attentionText">关注</span>
                                            <span class="beforeclose">
                                <i class="fa fa-times delete" aria-hidden="true"></i> 
                                <i class="nolike">不感兴趣</i>
                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </h5>
                                </div>
                                <p class="content"></p>
                            </li>


                            <li class="headline-item">
                                <div class="fl indexImg">
                                    <img src="">
                                </div>
                                <div class="words">
                                    <h3>Drive.ai融资5000万吴恩达加入董事会 <span><img src="${pageContext.request.contextPath}/img/widget-vip.png" class="vip"></span></h3>
                                    <h5 class="author">
                                        <div class="fl">
                                            <span class="authorName">
                                <img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">
                                玻璃通
                            </span>
                                            <span>6月7日 10：34</span>
                                        </div>
                                        <div class="fr attention">
                                            <span class="attentionText">关注</span>
                                            <span class="beforeclose">
                                <i class="fa fa-times delete" aria-hidden="true"></i> 
                                <i class="nolike">不感兴趣</i>
                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </h5>
                                </div>
                                <p class="content">滴滴与360都开源了各自的插件化框架，VirtualAPK与RePlugin,作为一个插件化方面的狂热研究者，在周末就迫不及待的下载了Virtualapk框架来进行研究，本篇博客带的……</p>
                            </li>

                        </ul>
                        <div class="stop">
                            <a href="javascript:;">32分钟前看到这里，点击刷新 <i class="fa fa-refresh" aria-hidden="true"></i></a>
                        </div>
                        <ul id="data-list-down" class="headline loading">

                            <li class="headline-item">
                                <div class="fl indexImg">
                                    <img src="">
                                </div>
                                <div class="words">
                                    <h3>Drive.ai融资5000万吴恩达加入董事会 <span><img src="" class="vip"></span></h3>
                                    <h5 class="author">
                                        <div class="fl">
                                            <span class="authorName">
                                <img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">
                                玻璃通
                            </span>
                                            <span>6月22日 12:01</span>
                                        </div>
                                        <div class="fr attention">
                                            <span class="attentionText">关注</span>
                                            <span class="beforeclose">
                                <i class="fa fa-times delete" aria-hidden="true"></i> 
                                <i class="nolike">不感兴趣</i>
                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </h5>
                                </div>
                                <p class="content">滴滴与360都开源了各自的插件化框架，VirtualAPK与RePlugin,作为一个插件化方面的狂热研究者，在周末就迫不及待的下载了Virtualapk框架来进行研究，本篇博客带的……</p>
                            </li>

                            <li class="headline-item">
                                <div class="fl indexImg">
                                    <img src="">
                                </div>
                                <div class="words">
                                    <h3>Drive.ai融资5000万吴恩达加入董事会 <span><img src="${pageContext.request.contextPath}/img/widget-vip.png" class="vip"></span></h3>
                                    <h5 class="author">
                                        <div class="fl">
                                            <span class="authorName">
                                <img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">
                                玻璃通
                            </span>
                                            <span>6月12日 13：34</span>
                                        </div>
                                        <div class="fr attention">
                                            <span class="attentionText">关注</span>
                                            <span class="beforeclose">
                                <i class="fa fa-times delete" aria-hidden="true"></i> 
                                <i class="nolike">不感兴趣</i>
                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </h5>
                                </div>
                                <p class="content">滴滴与360都开源了各自的插件化框架，VirtualAPK与RePlugin,作为一个插件化方面的狂热研究者，在周末就迫不及待的下载了Virtualapk框架来进行研究，本篇博客带的……</p>
                            </li>

                            <li class="headline-item">
                                <div class="fl indexImg">
                                    <img src="${pageContext.request.contextPath}/img/widget-list01.png">
                                </div>
                                <div class="words">
                                    <h3>Drive.ai融资5000万吴恩达加入董事会 <span><img src="${pageContext.request.contextPath}/img/widget-vip.png" class="vip"></span></h3>
                                    <h5 class="author">
                                        <div class="fl">
                                            <span class="authorName">
                                <img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">
                                玻璃通
                            </span>
                                            <span>6月12日 13：34</span>
                                        </div>
                                        <div class="fr attention">
                                            <span class="attentionText">关注</span>
                                            <span class="beforeclose">
                                <i class="fa fa-times delete" aria-hidden="true"></i> 
                                <i class="nolike">不感兴趣</i>
                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </h5>
                                </div>
                                <p class="content"></p>
                            </li>

                            <li class="headline-item">
                                <div class="fl indexImg">
                                    <img src="">
                                </div>
                                <div class="words">
                                    <h3>Drive.ai融资5000万吴恩达加入董事会 <span><img src="${pageContext.request.contextPath}/img/widget-vip.png" class="vip"></span></h3>
                                    <h5 class="author">
                                        <div class="fl">
                                            <span class="authorName">
                                <img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">
                                玻璃通
                            </span>
                                            <span>6月7日 10：34</span>
                                        </div>
                                        <div class="fr attention">
                                            <span class="attentionText">关注</span>
                                            <span class="beforeclose">
                                <i class="fa fa-times delete" aria-hidden="true"></i> 
                                <i class="nolike">不感兴趣</i>
                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </h5>
                                </div>
                                <p class="content">滴滴与360都开源了各自的插件化框架，VirtualAPK与RePlugin,作为一个插件化方面的狂热研究者，在周末就迫不及待的下载了Virtualapk框架来进行研究，本篇博客带的……</p>
                            </li>

                            <li class="headline-item">
                                <div class="fl indexImg">
                                    <img src="${pageContext.request.contextPath}/img/widget-list02.png">
                                </div>
                                <div class="words">
                                    <h3>Drive.ai融资5000万吴恩达加入董事会 <span><img src="${pageContext.request.contextPath}/img/widget-vip.png" class="vip"></span></h3>
                                    <h5 class="author">
                                        <div class="fl">
                                            <span class="authorName">
                                <img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">
                                玻璃通
                            </span>
                                            <span>6月12日 13：34</span>
                                        </div>
                                        <div class="fr attention">
                                            <span class="attentionText">关注</span>
                                            <span class="beforeclose">
                                <i class="fa fa-times delete" aria-hidden="true"></i> 
                                <i class="nolike">不感兴趣</i>
                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </h5>
                                </div>
                                <p class="content"></p>
                            </li>

                            <li class="headline-item">
                                <div class="fl indexImg">
                                    <img src="">
                                </div>
                                <div class="words">
                                    <h3>Drive.ai融资5000万吴恩达加入董事会 <span><img src="${pageContext.request.contextPath}/img/widget-vip.png" class="vip"></span></h3>
                                    <h5 class="author">
                                        <div class="fl">
                                            <span class="authorName">
                                <img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">
                                玻璃通
                            </span>
                                            <span>6月7日 10：34</span>
                                        </div>
                                        <div class="fr attention">
                                            <span class="attentionText">关注</span>
                                            <span class="beforeclose">
                                <i class="fa fa-times delete" aria-hidden="true"></i> 
                                <i class="nolike">不感兴趣</i>
                            </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </h5>
                                </div>
                                <p class="content">滴滴与360都开源了各自的插件化框架，VirtualAPK与RePlugin,作为一个插件化方面的狂热研究者，在周末就迫不及待的下载了Virtualapk框架来进行研究，本篇博客带的……</p>
                            </li>

                        </ul>
                        <ul id="loaded" class="headline">

                        </ul>
                    </div>
                </div>
                <div class="fl right">
                    <div class="activity">
                        <div class="acti"><img src="${pageContext.request.contextPath}/img/widget-activity01.png" alt="活动一"></div>
                        <div class="acti"><img src="${pageContext.request.contextPath}/img/widget-activity02.png" alt="活动一"></div>
                    </div>
                    <div class="block-btn">
                        <p>今天，有什么好东西要和大家分享么?</p>
                        <a class="sui-btn btn-block btn-share" href="${pageContext.request.contextPath}/pages/sj-headline-submit.html" target="_blank">发布分享</a>
                    </div>

                    <div class="question-list">
                        <h3 class="title">热门回答</h3>
                        <div class="lists">
                            <ul>

                                <li class="list-item">
                                    <p class="list-title">关于系统问答你都应该都应该都应该注意些什么吗？</p>
                                    <p class="authorInfo">
                                        <span class="authorName"><img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">玻璃筒</span>
                                        <span>6月22日 12:01</span>
                                    </p>
                                </li>

                                <li class="list-item">
                                    <p class="list-title">关于系统问答你都应该注意吗？</p>
                                    <p class="authorInfo">
                                        <span class="authorName"><img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">玻璃筒</span>
                                        <span>6月22日 12:01</span>
                                    </p>
                                </li>

                                <li class="list-item">
                                    <p class="list-title">关于系统问答你都应该注意吗？</p>
                                    <p class="authorInfo">
                                        <span class="authorName"><img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">玻璃筒</span>
                                        <span>6月22日 12:01</span>
                                    </p>
                                </li>

                                <li class="list-item">
                                    <p class="list-title">关于系统问答你都应该注意吗？</p>
                                    <p class="authorInfo">
                                        <span class="authorName"><img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">玻璃筒</span>
                                        <span>6月22日 12:01</span>
                                    </p>
                                </li>

                                <li class="list-item">
                                    <p class="list-title">关于系统问答你都应该注意吗？</p>
                                    <p class="authorInfo">
                                        <span class="authorName"><img src="${pageContext.request.contextPath}/img/widget-photo.png" alt="">玻璃筒</span>
                                        <span>6月22日 12:01</span>
                                    </p>
                                </li>

                            </ul>
                            <a class="sui-btn btn-block btn-bordered btn-more">查看更多</a>
                        </div>
                    </div>


                    <div class="card-list">
                        <div class="head">
                            <h3 class="title">遇见TA</h3>
                        </div>
                        <div class="list">
                            <ul>

                                <li class="card-item">
                                    <div class="attention">
                                        <span>关注匹配度：<i class="degree">83%</i></span>
                                        <span class="fr"><i class="fa fa-heart-o" aria-hidden="true"></i><i class="fa fa-times close" aria-hidden="true"></i></span>
                                    </div>
                                    <div class="img">
                                        <img src="${pageContext.request.contextPath}/img/widget-t01be3f1015cf52e1f3.png" alt="">
                                    </div>
                                    <div class="info">
                                        <div class="fl photo"><img src="${pageContext.request.contextPath}/img/widget-photo.png" alt=""></div>
                                        <div class="fl intro">
                                            <p>【馨儿】发布了雕刻时光约会邀请</p>
                                            <p class="name">玻璃通 <span class="date">6月22日 12:01</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </li>

                                <li class="card-item">
                                    <div class="attention">
                                        <span>关注匹配度：<i class="degree">86%</i></span>
                                        <span class="fr"><i class="fa fa-heart-o" aria-hidden="true"></i><i class="fa fa-times close" aria-hidden="true"></i></span>
                                    </div>
                                    <div class="img">
                                        <img src="${pageContext.request.contextPath}/img/widget-MOG88A60E7ZI.png" alt="">
                                    </div>
                                    <div class="info">
                                        <div class="fl photo"><img src="${pageContext.request.contextPath}/img/widget-photo.png" alt=""></div>
                                        <div class="fl intro">
                                            <p>【馨儿】发布了雕刻时光约会邀请</p>
                                            <p class="name">玻璃通 <span class="date">6月22日 12:01</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </li>

                                <li class="card-item">
                                    <div class="attention">
                                        <span>关注匹配度：<i class="degree">78%</i></span>
                                        <span class="fr"><i class="fa fa-heart-o" aria-hidden="true"></i><i class="fa fa-times close" aria-hidden="true"></i></span>
                                    </div>
                                    <div class="img">
                                        <img src="${pageContext.request.contextPath}/img/widget-t019e2d84e53580b099.png" alt="">
                                    </div>
                                    <div class="info">
                                        <div class="fl photo"><img src="${pageContext.request.contextPath}/img/widget-photo.png" alt=""></div>
                                        <div class="fl intro">
                                            <p>【馨儿】发布了雕刻时光约会邀请</p>
                                            <p class="name">玻璃通 <span class="date">6月22日 12:01</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </li>

                            </ul>
                            <a class="sui-btn btn-block btn-bordered btn-more">查看更多</a>
                        </div>
                    </div>


                    <div class="activity-list">
                        <h3 class="title">活动日历</h3>
                        <div class="list">
                            <ul>

                                <li class="list-item">
                                    <p class="list-time"> 2017/06/30 北京</p>
                                    <div class="list-content clearfix">
                                        <div class="fl img">
                                            <img src="${pageContext.request.contextPath}/img/widget-simple.png" alt="">
                                        </div>
                                        <div>
                                            <p>在线峰会 | 前端开发重难点技术剖析与创新实践</p>
                                        </div>

                                    </div>
                                </li>

                                <li class="list-item">
                                    <p class="list-time"> 2017/06/30 北京</p>
                                    <div class="list-content clearfix">
                                        <div class="fl img">
                                            <img src="${pageContext.request.contextPath}/img/widget-simple.png" alt="">
                                        </div>
                                        <div>
                                            <p>在线峰会 | 前端开发重难点技术剖析与创新实践</p>
                                        </div>

                                    </div>
                                </li>

                                <li class="list-item">
                                    <p class="list-time"> 2017/06/30 北京</p>
                                    <div class="list-content clearfix">
                                        <div class="fl img">
                                            <img src="${pageContext.request.contextPath}/img/widget-simple.png" alt="">
                                        </div>
                                        <div>
                                            <p>在线峰会 | 前端开发重难点技术剖析与创新实践</p>
                                        </div>

                                    </div>
                                </li>

                                <li class="list-item">
                                    <p class="list-time"> 2017/06/30 北京</p>
                                    <div class="list-content clearfix">
                                        <div class="fl img">
                                            <img src="${pageContext.request.contextPath}/img/widget-simple.png" alt="">
                                        </div>
                                        <div>
                                            <p>在线峰会 | 前端开发重难点技术剖析与创新实践</p>
                                        </div>

                                    </div>
                                </li>

                            </ul>
                            <a class="sui-btn btn-block btn-bordered btn-more">查看更多</a>
                        </div>
                    </div>

                    <div class="ad-carousel">
                        <div class="carousel">
                            <div id="myCarousel" data-ride="carousel" data-interval="4000" class="sui-carousel slide">
                                <ol class="carousel-indicators">
                                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel" data-slide-to="1"></li>
                                    <li data-target="#myCarousel" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="active item">
                                        <img src="${pageContext.request.contextPath}/img/widget-ad01.png">
                                    </div>
                                    <div class="item">
                                        <img src="${pageContext.request.contextPath}/img/widget-ad01.png">
                                    </div>
                                    <div class="item">
                                        <img src="${pageContext.request.contextPath}/img/widget-ad01.png">
                                    </div>
                                </div>
                                <span class="adname">广告</span>
                            </div>
                        </div>
                    </div>
                    <div class="footer">
                        <p>© 2017 猿圈儿</p>
                        <p>中国互联网举报中心 京ICP证231889号</p>
                        <p>京ICP备13024258号-6 网络文化经营许可证</p>
                        <p>京-非经营性-2016-0088</p>
                        <p>互联网药品信息服务资格证书</p>
                        <p>跟帖评论自律管理承诺书</p>
                        <p>违法和不良信息举报：010-58341833</p>
                        <p>公司名称：传智播客教育集团</p>
                        <p>京公网安备 11000002017046号</p>
                    </div>
                </div>
            </div>
        </div>

    </div>




    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/sui/sui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/page-sj-index.js"></script>
    <script type="text/javascript">
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
            var navH = $("#float-nav").offset().top; //获取到顶部的距离
            // 滚动条事件
            $(window).scroll(function() {
                var scroH = $(this).scrollTop(); //获取滚动条滑动距离
                if (scroH >= navH) {
                    $("#float-nav").css({
                        "position": "fixed",
                        "top": 0
                    });
                } else if (scroH < navH) {
                    $("#float-nav").css({
                        "position": "static"
                    });
                }
            })
        })
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/widget-data-list.js"></script>
    <script>
        $(function() {
            $(".fa-heart-o").click(function() {
                $(this).attr("class", "fa fa-heart");
            });
            $(".close").click(function() {
                $(this).parents(".card-item").remove();
            })
        });
    </script>
</body>