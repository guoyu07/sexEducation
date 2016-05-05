<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

    <title>康乐吧</title>
    <meta content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maxmum-scale=1.0,user-scalable=no" name="viewport" id="viewport" />
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <!--
    <script type="text/javascript"	src="<c:url value='/js/jquery-1.11.3.js'/>"></script>
    <link rel="stylesheet" type="text/css" 	href="<c:url value='/css/main.css'/>">
    <link rel="stylesheet" type="text/css"	href="<c:url value='/css/foot.css'/>">
    -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style type="text/css">
        *{
            padding: 0;
            margin: 0;
            list-style-type: none;
           font-family: Helvetica, STHeiti, Droid Sans Fallback;
        }
        .kong{
        height: 60px;
        }
        .navbar {
            width: 100% !important;
            background:  #679fff;
        }
        .navbar-header .navbar-user_photo img{
            width: 40px;
            height: 40px;
            border-radius: 50%;
            line-height: 100%;
            margin: 2% 8% 2% 0;
            padding: 2%;
            vertical-align: middle;
            background:#ffffff ;
        }
        .navbar-header .navbar-user_photo img:hover{
            border: 1px solid #81E4FF;
        }
        .navbar-user_photo{
          line-height: 48px;
        }
        .navbar-header a{
        	padding-right: 5px;
        }
        .container{
            margin-top: 0px;
            font-size: 16px;
            background: #ffffff;
        }
        .col-xs-12{
            margin: 2% auto;
        }
        .col-xs-12 ul li{
            display: inline-block;
            font-size: 16px;
        }
        .search{
            margin: 5% 1% 2% 1%;
        }
        .item img{
            width: 100%;
            height: 200px;
        }
        .information{
            margin-top: 4%;

        }
        .list{
           border-top: 1px solid #dddddd;
            margin-bottom: 1.5%;
        }
        .list:last-child{
            border-bottom: 1px solid #dddddd;
        }
        .list a,.list span{
            display: inline-block;
            font-size: 18px;
            line-height: 35px;
            color: #333333;
        }
        .list a{
        	width: 100%;
        }
        .list a:hover{
        	text-decoration: none;
        }
        .list span{
        	font-size: 12px;
        }
        #login{
            height: 48px;
            line-height: 48px;
            font-size: 18px;
        }

        .article{
            width: 86%;
            padding-left: 0px;
            padding-right: 0px;
            margin: 0px;
        }
        .comment{
            width: 14%;
             padding-right: 0px;
                padding-left: 0px;
        }
        .glyphicon-comment1{
            width: 18px;
            height: 18px;
            position: absolute;
            top: 25%;
            background:url("images/ifgLisPl.gif") no-repeat center right;
            background-size: 12px auto;

        }
        .box{
            border-bottom: 1px solid #ddd;
            padding-bottom: 2%;
            padding-top: 2%;;
        }
        .box .row a{
          color:#0000FF;
          text-decoration: none;
        }
     .rowtis a{
         font-size: 1em;
          color:#0000FF;
         text-decoration: none;
        }
        .box span{
          padding-right:6%;
        }
        .price{
          color: #ff0000;
        }
        .text{
          color: #D9D9D9;
          font-size: 1em;
          padding-left:4%;
        }
        .count{
          font-size: 1.2em;
        }
        .xishus{
          font-size: 0.8em;
        }
        .gekai{
        height: 10px;
        }
    </style>

</head>

<body>
    <div class="kong">

     </div>
    <jsp:include page="zhuanquhead.jsp"></jsp:include>

    <!-- 文章分区 -->
    <!--  以下取出板块名和板块对应的项目，它们被封装在一个MAP中，key对应板块名，value对应板块下的项目list -->
    <c:forEach items="${cargodomain_cargo}" var="m">
    <!-- 分区标题 -->
    <div class="container-fluid information " style="margin: 0 auto;">
    <h4 style="color: #337AB7;">${m.key}</h4>

    <c:forEach items="${m.value }" var="mem">
          <div class="box" style="width:100%;float:left;">
            <div class="container" style="width:48%;float:left;padding-left:0;padding-right:0;">
<!--                 <img src="${mem.picture }" style='width:80%;height:auto;margin:0 10%;' />  -->
<a href="<c:url value='/IndexServlet?method=enterCgshow&project_id=${mem.id}'/>"><img src="${mem.picture }" style='width:80%;height:auto;margin:0 10%;' /></a>
            </div>

            <div class="container" style="width:52%;float:right;padding-left:0;padding-right:0;">
                <div  class="row first_column" style="text-align:center;color:#9F5F9F;font-size:14px;">
                    <a href="<c:url value='/IndexServlet?method=enterCgshow&project_id=${mem.id}'/>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mem.project_name}</a>
                </div>
                <div class="rowtis" style="padding:4%;"> <a><span class="mobile"></span><span class="text">${mem.salecomm }</span></a>  </div>
                <div class="row">
                    <a>
                        <span class="price">
                            <span style="font-size:1em;padding:0;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ¥</span>
                            <span class="count">${mem.sale_price }</span>
                            <span class="xshu" style="padding-left:0;padding-right:0;"></span>

                    </a>
                </div>
                <div class="row">
                <div class="gekai"> </div>
                    <div class="col-xs-8" style="padding-right:0;padding-left:0;color:#817f7f;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已售:${mem.use_count}</div>
                    <div class="col-xs-4"><a href="<c:url value='/IndexServlet?method=entercargoRemark&cargo_id=${mem.id }' />">评</a></div>
                </div>
            </div>
        </div>
    </c:forEach>
            <div class="row " style="padding-top: 2%;border-top: 1px solid #dddddd;">
                <a href="<c:url value='IndexServlet?method=cargodomainNavi&tag=${m.key}' />"><button class="btn btn-sm btn-default col-xs-11" style="margin: 0 2% 2%;border: none;">加载更多...</button></a>
            </div>
    </div>
	</c:forEach>
    <!-- 文章分区 -->

    <jsp:include page="foot.jsp"></jsp:include>

</body>
</html>
