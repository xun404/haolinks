<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我要投资-用户评价</title>
<link type="text/css" rel="stylesheet" href="/resource/css/public.css"/>
<link type="text/css" rel="stylesheet" href="/resource/css/newCommon.css"/>
<link type="text/css" rel="stylesheet" href="/resource/css/registration.css"/>
</head>
<!-- top -->
<jsp:include page="/WEB-INF/views/frontend/public/header.jsp" />
<div class="gren"></div>

<!--------注册 Start--------------->
<div class="registr_all borrow user_evaluation_all">
	<div class="title">首页 > 我要借款</div>
	<div class="title_pro">纵情山水-200万</div>
	<div class="product_left_box">
		<p>
			<img src="/resource/images/pro_img_big.jpg" width="612" height="612"
				alt="" />
		</p>
		<div class="parallel">
			<a href="#"><img src="/resource/images/left_col.jpg" width="39"
				height="124" alt="" />
			</a> <span><img src="/resource/images/list_pic01.jpg" width="124"
				height="124" alt="" />
			</span> <span><img src="/resource/images/list_pic01.jpg" width="124"
				height="124" alt="" />
			</span> <span><img src="/resource/images/list_pic01.jpg" width="124"
				height="124" alt="" />
			</span> <span><img src="/resource/images/list_pic01.jpg" width="124"
				height="124" alt="" />
			</span> <a href="#"><img src="/resource/images/right_col.jpg" width="39"
				height="124" alt="" />
			</a>
		</div>
	</div>


	<div class="product_right_box">
		<div class="content_text">
			<p>借款总额 200万</p>
			<p>投资周期 6个月</p>
			<p>年化收益 18.00 %</p>
		</div>
		<div class="content_text">
			<p>还款方式： 按月付息到期还本</p>
			<p>可投金额： 1668000 元</p>
		</div>
		<div class="content_text">
			<p>最大投标金额： 不限</p>
			<p>最小投标金额： 5000元</p>
		</div>
		<div class="content_text">
			<p>开标时间： 2015-04-10 09:30:00</p>
			<p>竞标剩余时间： 28天17小时42分21秒</p>
		</div>
		<div class="content_text">
			<p class="p_input_box">
				投标金额 <input type="text" value="" class="input_user_style" /> 元
			</p>
			<p>
				交易密码 <input type="password" value="" class="input_user_style" />
			</p>
		</div>
		<div class="content_text content_text_bono">
			<p>
				<input type="button" value="确认提交" name="b" class="button_style" />
			</p>
		</div>
	</div>
	<div class="c"></div>
</div>

<div class="title_evaluation_box">
	<div class="list_evalu">
		<span class="list_evalu_span">项目信息</span>
	</div>
	<div class="list_evalu">
		<span class="list_evalu_span">商品详情</span>
	</div>
	<div class="list_evalu">
		<span class="list_evalu_span">风控资料</span>
	</div>
	<div class="list_evalu">
		<span class="list_evalu_span">还款计划</span>
	</div>
	<div class="list_evalu">
		<span class="list_evalu_span">投资记录</span>
	</div>
	<div class="list_evalu">
		<span class="list_evalu_span curren">用户评价</span>
	</div>
	<div class="c"></div>
</div>

<table width="100%" border="0" class="evaluation_table_box"
	cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<th width="632" style="border-right:1px solid #fff;">用户评价</th>
			<th width="352">发布时间</th>
		</tr>
		<tr>
			<td>第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下次如果还购买，一定还会找优
				选财富的小刘。</td>
			<td class="tex_algin">2015-03-05</td>
		</tr>
		<tr>
			<td>第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下次如果还购买，一定还会找优
				选财富的小刘。第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下次如果还购买，
				一定还会找优选财富的小刘。</td>
			<td class="tex_algin">2015-03-05</td>
		</tr>
		<tr>
			<td>第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下次如果还购买，一定还会找优
				选财富的小刘。第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下次如果还购买，
				一定还会找优选财富的小刘。第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下
				次如果还购买，一定还会找优选财富的小刘。</td>
			<td class="tex_algin">2015-03-05</td>
		</tr>
		<tr>
			<td>第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下次如果还购买，一定还会找优
				选财富的小刘。</td>
			<td class="tex_algin">2015-03-05</td>
		</tr>
		<tr>
			<td>第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下次如果还购买，一定还会找优
				选财富的小刘。</td>
			<td class="tex_algin">2015-03-05</td>
		</tr>
		<tr>
			<td>第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下次如果还购买，一定还会找优
				选财富的小刘。第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下次如果还购买，
				一定还会找优选财富的小刘。</td>
			<td class="tex_algin">2015-03-05</td>
		</tr>
		<tr>
			<td>第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下次如果还购买，一定还会找优
				选财富的小刘。第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下次如果还购买，
				一定还会找优选财富的小刘。第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下
				次如果还购买，一定还会找优选财富的小刘。</td>
			<td class="tex_algin">2015-03-05</td>
		</tr>
		<tr>
			<td>第一次买信托但有过对比才发现优选财富的工作人员专业度，敬业精神真不是一般的好，这次到期后下次如果还购买，一定还会找优
				选财富的小刘。</td>
			<td class="tex_algin">2015-03-05</td>
		</tr>
	</tbody>
</table>

<div class="page_foot">
	<span>首页</span><a href="#" class="foot_a">上一页</a><a href="#"
		class="foot_a">1</a><a href="#" class="foot_a current_foot_a">2</a><a
		href="#" class="foot_a">3</a><a href="#" class="foot_a">下一页</a><span>末页</span>
</div>

<div class="content_distribution">
	<div class="ul_distribution">
		<span>内容</span>
		<textarea>676</textarea>
	</div>
	<div class="ul_distribution">
		<span>验证码</span> <input type="text" value="" class="iput_css" /> <img
			src="/resource/images/yanzheng_pic.jpg" width="109" height="37"
			alt="" /> <img src="/resource/images/load_shre.png" width="21"
			height="19" alt="" />
	</div>
	<a href="#" class="button">发布</a>
</div>

<!--------注册 End--------------->
<div class="cooperation_all">
	<div class="cooperation">
		<ul>
			<li><samp class="samp_title" id="Samp_1">合作伙伴</samp>
			</li>
			<li><samp class="samp_title" id="Samp_2">担保机构</samp>
			</li>
			<li><samp class="samp_title" id="Samp_3">上市公司</samp>
			</li>
			<div class="c"></div>
		</ul>
		<div class="content" id="Content_1">
			<a href="#" class="bank" target="_blank"><img
				src="/resource/images/jianshe.png" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/jianshe.png" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/jianshe.png" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/jianshe.png" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/jianshe.png" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/jianshe.png" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/jianshe.png" width="119" height="41" alt="" />
			</a>
		</div>
		<div class="content" id="Content_2">
			<a href="#" class="bank" target="_blank"><img
				src="/resource/images/nongye.jpg" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/nongye.jpg" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/nongye.jpg" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/nongye.jpg" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/nongye.jpg" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/nongye.jpg" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/nongye.jpg" width="119" height="41" alt="" />
			</a>
		</div>
		<div class="content" id="Content_3">
			<a href="#" class="bank" target="_blank"><img
				src="/resource/images/jianshe.png" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/nongye.jpg" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/nongye.jpg" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/jianshe.png" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/nongye.jpg" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/jianshe.png" width="119" height="41" alt="" />
			</a> <a href="#" class="bank" target="_blank"><img
				src="/resource/images/nongye.jpg" width="119" height="41" alt="" />
			</a>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#Samp_1").css("border-bottom", "2px solid #fb4646");
			$("#Content_2").css("display", "none");
			$("#Content_3").css("display", "none");
			$(".samp_title").click(function() {

				$(".samp_title").css("border-bottom", "none");
				$(".content").css("display", "none")
				var samp_id = $(this).attr("id");
				var nums = samp_id.replace("Samp_", "");

				$("#Samp_" + nums).css("border-bottom", "2px solid #fb4646")
				$("#Content_" + nums).css("display", "block")

			})

		})
	</script>

</div>
<!--------注册 End--------------->
<jsp:include page="/WEB-INF/views/frontend/public/floatRight.jsp"/>

<jsp:include page="/WEB-INF/views/frontend/public/footer.jsp"/>
</body>
</html>
