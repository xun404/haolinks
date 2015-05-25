<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=100%; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
    <meta http-equiv="description" content="This is my page"/>
    <link href="/resource/phone/css/public.css" type="text/css" rel="stylesheet"/>
    <link href="/resource/phone/css/index.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="/resource/js/jquery/jquery-1.8.0.min.js"></script>
    <title>关于我们</title>
</head>
<body>
<div class="main">


<!--内容 Start-->

<div class="about_us_title">
    <div class="div_style about_left" id="div_style_1" style="cursor: pointer;">企业简介</div>
    <div class="div_style about_right" id="div_style_2" style="cursor: pointer;">董事长介绍</div>
    <div class="c"></div>
</div>

<div class="content_box" id="Content_box_1">
<div class="logo_box"><img src="/resource/phone/images/logo.jpg" width="100%" height="100%" alt=""/></div>
<p>&nbsp;&nbsp;翡翠贷（www.feicuidai.com）系深圳前海翡翠贷互联网金融服务有限公司旗下网站，是国内首家专注翡翠玉石质押贷款的新型互联网金融服务平台，是翡翠玉石行业互联网金融的开创者!</p>
<p>&nbsp;&nbsp;翡翠贷深耕互联网金融细分领域，联合国内翡翠玉石行业资深鉴定、评估专家组建风控团队，专注翡翠玉石的质押贷款。公司秉承“安全、责任、透明”的经营理念，致力于打造信息透明、体系健全、责任保障、安全高效的全民投融资中介平台，充分利用互联网大数据和征信机制，以用户体验为核心，为广大翡翠玉石珠宝企业及个人提供更方便快捷的融资服务，为广大投资用户提供最稳妥高额的投资收益。</p>

<div class="content_ul_box">
	<div class="list_div">
    	<div class="left_box about_left_box">客服热线</div>
        <div class="right_box about_right_box">400-966-0755</div>
        <div class="c"></div>
    </div>    
    <div class="list_div" >
    	<div class="left_box about_left_box">客服邮箱</div>
        <div class="right_box about_right_box">kefu@feicuidai.com</div>
        <div class="c"></div>
    </div>
</div>

</div>


<div class="content_box" id="Content_box_2">
<strong>徐志雄</strong><div class="mis_xu"><img src="/resource/phone/images/mis_xu.jpg" width="166" height="160" alt=""/></div>
<p>&nbsp;&nbsp;沉淀翡翠玉石行业二十载，中国玉雕艺术大师、世界杰出华商珠宝企业家协会常务理事、全国玉石专业委员会副会长、广东省珠宝玉石首饰行业专家库专家、莆田市翡翠协会副会长、四会市珠宝玉石首饰行业协会副会长，行业协会副会长，并拥有广东省人民政府授予的“省技术能手”、“南粤技术能手”等荣誉称号，由其创作的多件玉雕作品屡次斩获国内多项赛事大奖，2014年作品《敦煌飞天》获中国玉雕界最高奖项“天工奖”金奖。</p>
<p>&nbsp;&nbsp;作为中国翡翠玉雕行业的领军人物，数度经历中国翡翠玉石行业的变革和跨越式发展，徐志雄先生深切认识到国内翡翠玉石行业的中小微企业的壮大极大地受限于流动资金的供给。一面是旺盛的资金需求，一面是融资渠道匮乏、融资成本高，这一行业怪状已经严重阻碍了中国翡翠玉石事业的蓬勃发展。有鉴于此，徐志雄先生于2015年创办了深圳前海翡翠贷互联网金融服务有限公司（平台简称“翡翠贷”），致力于解决国内翡翠玉石行业的融资困境。翡翠贷的成立，开创了中国首家专注于高端翡翠玉石质押的创新互联网金融服务平台，必将促进我国翡翠玉石行业的再度腾飞。</p>

</div>

<div class="co_text">© 2015 翡翠贷 All rights reserved</div>


<!--内容 End-->

<script type="text/javascript">
$(document).ready(function(){
	$("#div_style_1").css({"color":"#fff","background":"#00cc99"})
	$("#Content_box_1").css("display","block");
	
	$(".div_style").click(function(){
		$(".div_style").css({"color":"#999","background":"#fff"});
		$(this).css({"color":"#fff","background":"#00cc99"})
		$(".content_box").css("display","none");
		$("#Content_box_"+$(this).attr("id").replace("div_style_","")).css("display","block")
		})
	})

</script>

</div>
<jsp:include page="/WEB-INF/views/phone/public/footer.jsp"/>

</body>
</html>