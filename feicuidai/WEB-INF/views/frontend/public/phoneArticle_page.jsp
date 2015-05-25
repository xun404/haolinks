<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=100%; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="keywords" content="${footer.indexKeywords}"/>
    <meta http-equiv="description" content="${footer.description}"/>
    <link href="/resource/phone/css/public.css" type="text/css" rel="stylesheet"/>
    <link href="/resource/phone/css/index.css" type="text/css" rel="stylesheet"/>
    <title>系统公告</title>
    <style>
        .time{
            display:inline-block;width:100%;font-size:0.8em;height:2.5em;
            text-align: center;
        }
        h4{
            display:inline-block;height:2em;line-height: 3em;
            text-align: center;width:100%;
        }
        .arts_content{
            overflow: hidden;
            width:90%;height:auto;
            padding:5%;
        }
    </style>
</head>
<body>
<div class="main">
    <div class="div_style_box title_bg">
        <h4>${article.title}</h4>
        <span class="time">${article.createTime}</span>
        <div class="c"></div>
    </div>
   <div class="arts_content">${article.context}</div>
</div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>

</body>
</html>
