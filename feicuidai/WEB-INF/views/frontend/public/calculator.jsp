<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--------右侧计算器部分一 START--------->
<div class="pop_box" id="pop_box_1">
	<div class="pop lica">
		<a href="javascript:Pop_Div_Close()"><img
			src="/resource/images/close_window.png" width="25" height="25" alt="" />
		</a>
	</div>

	<div class="por_alert" id="por_licai">
		<p>翡翠贷采用的是通用的"先息后本还款法"，即借款人收到借款以后每月偿还等额的利息</p>
		<p>最后一个月归还本金和当月利息。</p>
	</div>
	<div class="input_box">
		<div class="content_input">
			<span>借款金额</span><input type="text" placeholder=""
				class="input_text_style" />元
		</div>
	</div>
	<div class="input_box">
		<div class="content_input">
			<span>年利率</span><input type="text" placeholder=""
				class="input_text_style" />%
		</div>
	</div>
	<div class="input_box">
		<div class="content_input">
			<span>借款期限</span><input type="text" placeholder=""
				class="input_text_style" />月
		</div>
	</div>
	<div class="input_box">
		<div class="content_input">
			<span>还款方式</span><select class="input_text_style"><option>先息后本</option>
			</select>
		</div>
	</div>

	<div class="input_box">
		<div class="content_input">
			<span></span> <input type="button" value="计算" name="b"
				onclick="showCalcResult()" class="button_style" />
		</div>
	</div>
</div>
<!---------右侧计算器部分一 END--------->

<div class="pop_box" id="pop_box_2">
	<div class="pop lica">
		<a href="javascript:Pop_Div_Close()"><img
			src="/resource/images/close_window.png" width="25" height="25" alt="" />
		</a>
	</div>
	<div class="repayment repayment_01">
		<div class="title title_01">还款概述</div>
		<table width="100%" border="0" class="table_repay_box">
			<tbody>
				<tr>
					<td width="46%" class="left_repay_box">月利率：</td>
					<td width="54%" class="right_repay_box"><span>0.17 </span>%</td>
				</tr>
				<tr>
					<td class="left_repay_box">总利息：</td>
					<td class="right_repay_box"><span>¥200.00</span>元</td>
				</tr>
				<tr>
					<td class="left_repay_box">总还款本息：</td>
					<td class="right_repay_box"><span>¥10200.00</span>元</td>
				</tr>

			</tbody>
		</table>
	</div>

	<div class="repayment repayment_02">
		<div class="title title_02">还款概述</div>
		<table width="100%" border="0"
			class="table_repay_box table_repay_box_2">
			<tbody>
				<tr>
					<th>月份</th>
					<th>收款总额</th>
					<th>应收本金</th>
					<th>应收利息</th>
				</tr>
				<tr>
					<td>1</td>
					<td><span>2016-04-14</span></td>
					<td>1/1</td>
					<td><span>¥10200.00</span></td>
					<td>¥10000.00</td>
					<td>¥200.00</td>
				</tr>
				<tr>
					<td>2</td>
					<td><span>2016-04-14</span></td>
					<td>1/1</td>
					<td><span>¥10200.00</span></td>
					<td>¥10000.00</td>
					<td>¥200.00</td>
				</tr>
			</tbody>
		</table>


	</div>

</div>

<script type="text/javascript">
	$("#pop_button_1").click(function() {
		Pop_Div("pop_box_1");
	})

	function showCalcResult() {
		Pop_Div("pop_box_2");
	}

	function Pop_Div(id) {
		Pop_Div_Close()
		$("#" + id).before("<div class=\"zhezhaocheng\"></div>")
		$("#" + id).css("display", "block");
	}

	function Pop_Div_Close() {
		try {
			$(".zhezhaocheng").remove();
			$(".pop_box").css("display", "none");
		} catch (e) {
			return;
		}
	}
</script>


<!--------弹出框 End-------------->