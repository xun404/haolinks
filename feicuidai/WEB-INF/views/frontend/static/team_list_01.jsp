<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://"
          + request.getServerName() + ":" + request.getServerPort()
          + path + "/";
%>
<!doctype html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <base href="<%=basePath%>" />
  <title>${deputy.topic.name}-${deputy.name}</title>
  <link type="text/css" rel="stylesheet" href="/resource/css/public.css"/>
  <link type="text/css" rel="stylesheet" href="/resource/css/newCommon.css"/>
  <link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
  <link type="text/css" rel="stylesheet" href="/resource/css/main.css"/>
  <script type="text/javascript" src="/resource/images/js/jquery-1.8.0.min.js"></script>
  <script type="text/javascript" src="/resource/images/js/jslides.js"></script>
  <script type="text/javascript" src="/resourcejs/global.js"></script>
  <link rel="stylesheet" type="text/css" href="/resource/images/css/listpage.css"/>
  <style>
    .rightBar {
      float: right;
      width: 700px;
      background: none repeat scroll 0 0 white;
    }
    .rightBar .listpage {
      border: 1px solid #e7e7e7;
    }
    .listPageTitle {
      background: none repeat scroll 0 0 #00bc00;
      height: 41px;
      line-height: 41px;
      padding: 0 100px 0 100px;
    }
    .rightBar .listpage .listUL li {
      background: url(/resources/images/update/ring.png) no-repeat scroll 8px center rgba(0, 0, 0, 0);
      border-bottom: 1px dashed #00bc00;
      height: 51px;
      line-height: 51px;
      overflow: hidden;
      padding: 0 63px 0 25px;
    }
    .rightBar .listpage .listUL li a {
      float: left;
      font-size: 15px;
    }
    a {
      color: #333;
      text-decoration: none;
    }
    .rightBar .listpage .listUL li span {
      color: #7b7b7b;
      float: right;
      font-size: 15px;
    }
    .listPageTitle span {
      color: #ffffff;
      float: left;
      font-size: 15px;
    }
    .listPageTitle .right {
      float: right;
    }
    
   /* 切换效果 */
   .experts_team{
    border:1px solid #ddd;
    border-radius: 0.3em;
    -webkit-border-radius: 0.3em;
    -moz-border-radius: 0.3em;
    }
   
   
  </style>


  <script type="text/javascript">
    function jumpPage(pageno, totalPage) {
      if (pageno<=0 || pageno>totalPage) {
        return;
      }
      top.window.location = '/to/list-1-' + $("#deputy_id").val()
      + '.htm?no=' + pageno;
    }
  </script>
</head>
<body>
<!--top-->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp"/>

<div class="gren"></div>
<!--End top-->
<!--Content-->
<div class="registr_all borrow user_evaluation_all" style="height:1400px;">
    <div class="title"><span>您当前位置：</span><a href="/">翡翠贷 ></a><a href="${deputy.topic.url}">${deputy.topic.name }></a><a>${deputy.name }</a></div>
  <div class="common_main">
    <jsp:include page="/WEB-INF/views/frontend/public/leftMenu_aboutUs.jsp"/>


    
<div class="right_box_content">

<div class="switch">
	<div class="div_span left_span" id="div_span_1" ><span>汉武玉庭</span></div>
    <div class="div_span center_span" id="div_span_2" ><span>大师典藏馆</span></div>
    <div class="div_span right_span" id="div_span_3" ><span>新石器 </span></div>
    <div class="c"></div>
</div>
<div class="tem_content" id="tem_content_1" style="display:block;">
<div class="examine">
	<div class="tem_pic"><img src="/resource/images/tem_pic_01.jpg" width="240" height="152" alt=""/></div>
    <div class="tem_con"><p><strong>项目审核 · 鉴定评估</strong></p>
    <p>汉武玉庭拥有一批在中国玉石行业享誉盛名的顶尖玉石评估鉴定专家，负责就平台标的及质押物提供真实、严谨的线下审核及风险评估操作。</p></div>
    <div class="c"></div>
</div>

</div>

<div class="tem_content" id="tem_content_2"  style="display:none;">
<div class="examine">
	<div class="tem_pic"><img src="/resource/images/tem_pic_02.jpg" width="240" height="152" alt=""/></div>
    <div class="tem_con"><p><strong>项目质押 · 保管回购</strong></p>
    <p>翡翠贷平台所有标的都托管于大师典藏馆，当借款人逾期无法偿还剩余借款时，平台将授权大师典藏馆将质押物回购，最大程度保障投资者收益！</p></div>
    <div class="c"></div>
</div>
</div>


<div class="tem_content" id="tem_content_3" style="display:none;">

<div class="examine">
	<div class="tem_pic"><img src="/resource/images/tem_pic_03.png" width="240" height="152" alt=""/></div>
    <div class="tem_con"><p><strong>平台策划 · 宣传推广</strong></p>
    <p>新石器 是广东省珠宝玉石首饰行业协会旗下官网，也是翡翠贷平台的官方品牌合作单位，专业负责翡翠贷平台的系列活动策划以及品牌宣传业务。
</p></div>
    <div class="c"></div>
</div>



</div>
<div style="width:100%;height:10px;clear:both;"></div>
<!-- 专家团队 start -->

<div class="content_box">
  
  <!-- 专家团队 start -->
  
<div id="experts_team1" class="experts_team" style="display:block">
<div class="item_li">
 	<div class="pic"><img src="/resource/images/xuzhixiong.jpg" width="150" height="200" alt="徐志雄"/></div>
    <div class="content">
    <div><strong><a target="_blank" href="http://www.newshiqi.com/talent/graver/view/id/1">徐志雄</a></strong>高级工艺美术师</div>
    <p>徐志雄，1980年生，福建莆田人，中华玉雕艺术大师、高级传统工艺师、广东省高级技师。现为汉武玉文化传播有限公司董事长、全国玉石专业委员会副会长、莆田市翡翠协会副会长、四会市珠宝玉石首饰行业协会副会长。拥有广东省人民政府授予的“省技术能手”、“南粤技术能手”等荣誉称号。徐志雄积极参与社会公益事业，被选为四会市关心下一代爱心企业家委员会副会长。代表作有《仁者乐山 智者乐水》、《春山鸣翠》、《一览众山小》、《遨游》、《望月怀远》、《金秋》、《涅槃》等。</p>
    </div>
    <div class="c"></div> 
</div>

<div class="item_li">
 	<div class="pic"><img src="/resource/images/songshiyi.jpg" width="150" height="200" alt="宋世义"/></div>
    <div class="content">
    <div><strong><a target="_blank" href="http://www.newshiqi.com/talent/graver/view/id/151">宋世义</a></strong>中国工艺美术大师</div>
    <p>字欣然，号痴人，生于北京，中国工艺美术大师、中国玉雕大师、高级工艺美术师、全国轻工劳动模范、国家级非物质文化遗产玉雕传承人。毕业于北京工艺美术学校，专工国画人物和工艺雕塑。上世纪六十年代，步入玉雕行业，从师王树森等前辈玉雕艺人。曾先后在清华大学美术学院、中央美术学院、学习进修。1990年获轻工业部劳动模范称号。他从事设计近30年，具有较高的文化艺术修养，绘画和雕塑基本功扎实，作品题材广泛，技艺全面。</p>
    </div>
    <div class="c"></div> 
</div>

<div class="item_li">
 	<div class="pic"><img src="/resource/images/guoshilin.jpg" width="150" height="200" alt="郭石林"/></div>
    <div class="content">
    <div><strong><a target="_blank" href="http://www.newshiqi.com/talent/graver/view/id/239">郭石林</a></strong>中国工艺美术大师</div>
    <p>1944年10月19日生于北京市，1962年毕业于北京工艺美术学校，后在北京玉器厂工作。1989年在北京市高级专业技术干部研修班进修雕塑，同年被评为北京市工艺美术大师。他的代表作品有玛瑙《坐相观音》，荣获1988年全国玉器行业评比总分第一名，特别是大型翡翠插屏《四海腾欢》，荣获国务院嘉奖和“五一”劳动奖章集体奖。</p>
    </div>
    <div class="c"></div> 
</div>

<div class="item_li">
 	<div class="pic"><img src="/resource/images/wudesheng.jpg" width="150" height="200" alt="吴德昇"/></div>
    <div class="content">
    <div><strong><a target="_blank" href="http://www.newshiqi.com/talent/graver/view/id/181">吴德昇</a></strong>中国工艺美术大师</div>
    <p>1961年7月1日出生于上海，1978年毕业于上海玉石雕刻厂工业中学，进入上海玉石雕刻厂学艺，期间曾得到中国工艺美术大师萧海春的指导。因出色的琢玉成绩，取得雕刻界权威人士的一致认可，1984年获得提前晋级的殊荣。之后在对中华传统玉器深刻领会的基础上，潜心研究西方雕刻史，吸取了西方雕塑大师人物作品的精华，赋予中国传统人物雕刻更深的内涵。1993年至今在上海成立了“德升琢玉工作室”。</p>
    </div>
    <div class="c"></div> 
</div>
</div><!--  第一组 end-->

<div id="experts_team2" class="experts_team" style="display:none">

<div class="item_li">
 	<div class="pic"><img src="/resource/images/team_01.jpg" width="150" height="200" alt=""/></div>
    <div class="content">
    <div><strong><a target="_blank" href="http://www.newshiqi.com/talent/graver/view/id/143">李博生</a></strong>中国工艺美术大师</div>
    <p>笔名岑源，号敬石人，蒸笼居士，作品标记为倒置葫芦。1958年入北京市玉器厂工作，先后师从老一代玉雕行业“四大怪杰”中的何荣、王树森二位艺术家学艺 。曾当选第七届、第八届全国人大代表，1988年由国家授予中国工艺美术大师称号，高级工艺美术师职称 ;北京特级工艺美术大师。亚太地区手工艺大师;国家级非物质文化遗产代表性传承人。作品多以人物见长。取材用料精到，构思立意深远;其作品文化内涵博大精深，艺术感染力极强。</p>
    </div>
    <div class="c"></div> 
</div>

<div class="item_li">
 	<div class="pic"><img src="/resource/images/wangchaoyang.jpg" width="150" height="200" alt="王朝阳"/></div>
    <div class="content">
    <div><strong><a target="_blank" href="http://www.newshiqi.com/talent/graver/view/id/109">王朝阳</a></strong>高级工艺美术师</div>
    <p>出生于1970年，玉雕之乡河南省南阳人，当代著名翡翠雕刻大师。受环境熏陶，自幼酷爱艺术。1988年步入玉雕界，曾先后师从国家工艺美术大师吕昆、宋世义。凭借着坚实的功底、不懈的努力，被两位老师称为玉雕奇才。王朝阳的成就获益于在北京对玉雕的学习、中央工艺美术学院雕塑专业的深造、古典家具制作的艺术熏陶。二十余年励精图治，创作无数工艺精湛、题材新颖，具有深刻文化内涵的玉雕佳作。</p>
    </div>
    <div class="c"></div> 
</div>

<div class="item_li">
 	<div class="pic"><img src="/resource/images/liqiang.jpg" width="150" height="200" alt="黎铿"/></div>
    <div class="content">
    <div><strong><a target="_blank" href="http://www.newshiqi.com/talent/graver/view/id/16">黎铿</a></strong>中国工艺美术大师</div>
    <p>著名端砚工艺家、中国工艺美术大师。曾任中国文房四宝协会副会长、制砚专业委员会主任，现为中国工艺美术协会常务理事，被评为全国劳模、全国优秀科技工作者，曾获全国“五一”劳动奖章，享受国务院特殊津贴。1972年，作品《百鸟鸣春》送中国出口商品交易会和全国美术展览会陈列，好评如潮，最后被北京故宫博物院购藏;《四海升平砚》获首届中日端溪名砚品评会金奖;</p>
    </div>
    <div class="c"></div> 
</div>

<div class="item_li">
 	<div class="pic"><img src="/resource/images/wuyuanquan.jpg" width="150" height="200" alt="吴元全"/></div>
    <div class="content">
    <div><strong><a target="_blank" href="http://www.newshiqi.com/talent/graver/view/id/64">吴元全</a></strong>中国工艺美术大师</div>
    <p>生于1948年，中国工艺美术大师，中国宝玉石协会玉石专业委员会副主任，河南省珠宝玉石首饰行业协会常务副会长，南阳宝玉石协会常务副会长。现任南阳市拓宝玉器有限公司(原南阳市玉器厂)总经理，亚珠联中华玉文化研究委员会副主任。近年来还先后获得了全国先进工作者，全国五一劳动奖章，河南省五一劳动奖章，全国联社先进个人，南阳市专业技术拔尖人才，南阳市建市十周年功臣等荣誉。其事迹被选入《世界名人录》、《世界艺术家人才录》及《中华骄子专业人才卷》等书籍。</p>
    </div>
    <div class="c"></div> 
</div>
</div> <!-- 第二组 -->
<div id="experts_team3" class="experts_team" style="display:none"> <!-- 第三组-->
<div class="item_li">
 	<div class="pic"><img src="/resource/images/linfei.jpg" width="150" height="200" alt="林飞"/></div>
    <div class="content">
    <div><strong><a target="_blank" href="http://www.newshiqi.com/talent/graver/view/id/8">林飞</a></strong>中国工艺美术大师</div>
    <p>1954年生，福建福州人，字田觅。幼随父林亨云学习寿山石雕刻，1981年毕业于福建工艺美术学校，师从王则坚教授。擅长人物圆雕。其创作的作品题材广泛，将现代美术与传统工艺融为一体，清新不俗，富有现代感。他在创作中大量以中国文学作品和历史典故为题材，开创了寿山石雕新的艺术领域。作品屡获各类大奖，1990年寿山石雕《独钓寒江雪》荣获国家轻工部中国工艺美术“百花奖”一等奖。现为中国工艺美术大师、福建省工艺美术大师、高级工艺美术师。现任福建省民协寿山石专业委员会主任。</p>
    </div>
    <div class="c"></div> 
</div>

<div class="item_li">
 	<div class="pic"><img src="/resource/images/chenlizhong.jpg" width="150" height="200" alt="陈礼忠"/></div>
    <div class="content">
    <div><strong><a target="_blank" href="http://www.newshiqi.com/talent/graver/view/id/10">陈礼忠</a></strong>中国工艺美术大师</div>
    <p>1968年生，福建福州人。师从中国工艺美术大师冯久和，擅长花果、动物雕刻，尤其刻鹰。所雕刻的鹰双眼炯炯有神，身体强壮，爪力雄劲，形态生动，栩栩如生，呼之欲出。寿山石雕作品家园系列二件套作品  《呵护、长相厮守》荣获第三届中国工艺美术大师作品暨国际艺术精品博览会“金奖”。现为中国工艺美术大师、福建省工艺美术大师、福建省民间艺术家、高级工艺美术师、福州市工艺美术一级名艺人。现任福建省寿山石文化艺术研究会理事。</p>
    </div>
    <div class="c"></div> 
</div>

<div class="item_li">
 	<div class="pic"><img src="/resource/images/huangmeijuan.jpg" width="150" height="200" alt="黄丽娟"/></div>
    <div class="content">
    <div><strong><a target="_blank" href="http://www.newshiqi.com/talent/graver/view/id/62">黄丽娟</a></strong>中国工艺美术大师</div>
    <p>1958年生，福建罗源人。师从林飞，后赴福建工艺美术学校进修，擅长人物圆雕。其作品现代感强，生活气息浓厚。题材涉及孩童、少男少女、劳动者、装饰人体和少数民族。她的许多作品获得国家级、省级、市级大奖。作品《新装》、《黑珍珠》、《妯娌》等等获国家级、省级金奖。</p>
    </div>
    <div class="c"></div> 
</div>

<div class="item_li">
 	<div class="pic"><img src="/resource/images/chenyijing.jpg" width="150" height="200" alt="陈益晶"/></div>
    <div class="content">
    <div><strong><a target="_blank" href="http://www.newshiqi.com/talent/graver/view/id/61">陈益晶</a></strong>中国工艺美术大师</div>
    <p>1957年出生,福州人,高级工艺美术、二级名艺人，师从林炳生、林发述，擅长人物、花鸟雕刻。主要作品有《三教论道》、《银河会》、《福寿随缘》等。曾多次获中国国家级工艺美术大师精品展金奖及福建省寿山石文化艺术展一等奖等。现为中国宝玉石协会印石专业委员会会员、福建省工艺美术学会会员、福建省民间文艺家协会会员、福建省寿山石文化艺术研究会理事。荣获福建省工艺美术名人、福建省民间艺术家称号。高级工艺美术师。</p>
    </div>
    <div class="c"></div> 
</div>

  </div>


<!-- 专家团队 end -->

</div>
<!-- 专家团队 end -->

<div style="width:100%;height:20px;clear:both;"></div>
<!-- oldDIV-->

<script type="text/javascript">

$(document).ready(function(){
$(".switch").css({"border":"1px solid #ddd","border-bottom":"none"});
$(".examine").css({"border":"1px solid #ddd","border-top":"none"});
$(".div_span").children("span").css({"color":"#444444","border-bottom":"2px solid #9e9e9e"});
$(".left_span").children("span:first-child").css({"color":"#00bc00","border-bottom":"2px solid #00bc00"});

	
	$(".div_span").click(function(){  //专家团队分组切换
		var dId=$(this).attr("id").replace("div_span_","");
		$(".tem_content").css("display","none");
		$(".experts_team").css("display","none");
		$(".div_span").children("span").css({"color":"#444444","border-bottom":"2px solid #9e9e9e"});
		$(this).children("span").css({"color":"#00bc00","border-bottom":"2px solid #00bc00"});
        $("#tem_content_"+dId).css("display","block");
        $("#experts_team"+dId).css("display","block");
		});
  (function(){
	  var dId=location.hash.substring(1);//获取子页面ID参数 
	  dId="#div_span_"+dId;
	  $(dId).click();
	
  })();	
 
}
	
)

</script>

</div>
  <div class="c"></div>  
  </div>

</div>

</div>
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>
<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>

<script>

  $(document).ready(function () {
    $(".myStat").each(function () {
      $(this).circliful({
        dimension: 85,
        backgroundColor: "#eee"
      });
    });

  });

</script>
</body>
</html>
