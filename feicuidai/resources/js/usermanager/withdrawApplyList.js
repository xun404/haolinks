$(document)
		.ready(
				function() {

					var credit = 0;
					var editids = 0;
					var id = 0;

					// 设置不能输入小数点
					var ageOptions = {
						allowDecimals : false,
						allowNegative : false
					};

					// 数据源面板
					$('#withdrawApplyList').omGrid({
						width : 'fit',
						height : 400,
						dataSource : '/withdraw_apply/queryWithdrawApply',
						limit : 10,
						autoFit : true,
						method : 'POST',
						emptyMsg : '暂时还没有您想要的数据',
						singleSelect : false,
						colModel : [ {
							header : '编号',
							name : 'id',
							width : 20,
							align : 'center'
						}, {
							header : '提现申请人',
							name : 'userName',
							width : 50,
							align : 'left'
						}, {
							header : '真实姓名',
							name : 'realName',
							width : 20,
							align : 'left'
						}, {
							header : '申请提现金额',
							name : 'apply_num',
							width : 30,
							align : 'left'
						}, {
							header : '提现手续费',
							name : 'factorage',
							width : 30,
							align : 'left'
						} ,{
							header : '本月已提现次数',
							name : 'account',
							align : 'left',
							width : 35
						},{
							header : '银行账号',
							name : 'bankAccount',
							align : 'left'
						}, {
							header : '开户银行',
							name : 'bankType',
							align : 'left',
							width : 30
						}, {
							header : '开户省份',
							name : 'province',
							align : 'left',
							width : 20
						}, {
							header : '开户城市',
							name : 'city',
							align : 'left',
							width : 20
						}, {
							header : '支行名称',
							name : 'bankName',
							align : 'left'
						}, {
							header : '审核状态',
							name : 'status',
							align : 'left',
							width : 20,
							renderer : function(v, rowData, rowIndex) {
								if (v == 0) {
									return "未审核";
								} else if (v == 1) {
									return "已审核";
								} else {
									return "";
								}
							}
						}, {
							header : '处理结果',
							name : 'result',
							width : 50,
							align : 'left',
							renderer : function(v, rowData, rowIndex) {
								if (v == 0) {
									return "审核不通过";
								} else if (v == 1) {
									return "审核通过，提现中";
								} else if (v == 2) {
									return "提现成功";
								} else if (v == 3) {
									return "提现失败";
								} else {
									return "";
								}
							}
						}, {
							header : '申请时间',
							name : 'applyTime',
							align : 'left'
						}, {
							header : '审核时间',
							name : 'answer_time',
							align : 'left'
						}
						]

					});

					// 搜索面板
					$("#borrow-search-panel").omPanel({
						title : "高级搜索",
						collapsible : true,
						collapsed : true,
						onBeforeCollapse : function(event) {
							$('.om-panel-title').omTooltip({
								html : '可以通过单击，展开高级搜索面板哦'
							});
						},
						onBeforeExpand : function(event) {
							$('.om-panel-title').omTooltip({
								html : '可以通过单击，收缩高级搜索面板哦'
							});
						}
					});

					// 鼠标悬浮在面板头显示的信息
					$('.om-panel-title').omTooltip({
						html : '可以通过单击，展开高级搜索面板哦'
					});

					// 是否通过
					$("#bsearch-type").omCombo({
						editable : false,
						dataSource : [ {
							text : '不限',
							value : ''
						}, {
							text : '未审核',
							value : '1'
						}, {
							text : '通过',
							value : '2'
						}, {
							text : '不通过',
							value : '3'
						} ]
					});

					// 控制时间控件可选择的范围
					var disFn = function disFn(date) {
						var nowMiddle = new Date();
						if (date > nowMiddle) {
							return false;
						}
					}

					// 申请开始时间
					$("#beginDate").omCalendar({
						editable : false,
						disabledFn : disFn
					});
					// 申请结束时间
					$("#endDate").omCalendar({
						editable : false,
						disabledFn : disFn
					});

					// 搜索按钮
					$('span#button-bsearch')
							.omButton(
									{
										icons : {
											left : '/resources/operamasks-ui/themes/default/images/search.png'
										},
										width : 70
									});
					// 限制登录次数只能输入正整数
					$("#countlogin").omNumberField({
						allowDecimals : false,
						allowNegative : false
					});

					// 搜索按钮单击事件
					$("#button-bsearch").click(
							function() {
								var ajaxbg = $("#background,#progressBar");
								ajaxbg.show();
								$('#withdrawApplyList').omGrid(
										'setData',
										'/withdraw_apply/queryWithdrawApply?'
												+ $("#searchborrowfrom")
														.serialize());
							});

					// tab选项卡
					$('#make-tab').omTabs({
						height : 250,
						switchMode : 'mouseover',
						lazyLoad : true
					});

					// 借款人审核
					$("#audit")
							.click(
									function() {
										var ids = "";
										// 获取选中行数据
										var selectedRecords = $(
												'#withdrawApplyList').omGrid(
												'getSelections', true);
										// 判断用户是否选中数据
										if (selectedRecords.length > 0) {
											alertMsg
													.confirm(
															"是否让选中的提现申请通过审核?",
															{
																okCall : function() {
																	for ( var i in selectedRecords) {
																		ids += selectedRecords[i].id
																				+ ",";
																		if (selectedRecords[i].status != 0) {
																			alertMsg
																					.warn("只有未审核的提现申请才能进行审核");
																			return false;
																		}
																	}
																	ajaxTodo("/withdraw_apply/pass?state=1&ids="
																			+ ids);
																	// 防止打开链接
																	event
																			.preventDefault();
																}
															});
										} else {
											alertMsg.warn("您没有选择要审核的提现申请");
										}
									});
					$("#noaudit")
							.click(
									function() {
										// 获取选中行数据
										var selectedRecords = $(
												'#withdrawApplyList').omGrid(
												'getSelections', true);
										var idn = "";
										var uid = "";
										var myMoney = "";
										var withdrawmoney = "";
										var factorage = "";
										// 判断用户是否选中数据
										if (selectedRecords.length > 1) {
											alertMsg.warn("审核不通过操作只能选择一项进行操作。");
											return false;
										}
										if (selectedRecords.length > 0) {
											alertMsg
													.confirm(
															"是否让选中的提现申请不通过审核?",
															{
																okCall : function() {
																	for ( var i in selectedRecords) {
																		idn += selectedRecords[i].id
																				+ ","
																		uid += selectedRecords[i].userBasicsInfoId;
																		myMoney += selectedRecords[i].cash;
																		withdrawmoney += selectedRecords[i].apply_num;
																		factorage += selectedRecords[i].factorage;
																		if (selectedRecords[i].status != 0) {
																			alertMsg
																					.warn("只有未审核的提现申请才能进行审核");
																			return false;
																		}
																	}
																	ajaxTodo("/withdraw_apply/nopass?state=0&ids="
																			+ idn
																			+ "&uid="
																			+ uid
																			+ "&myMoney="
																			+ myMoney
																			+ "&withdrawmoney="
																			+ withdrawmoney
																			+ "&factorage="
																			+ factorage);
																	// 防止打开链接
																	event
																			.preventDefault();
																}
															});
										} else {
											alertMsg.warn("您没有选择要审核的提现申请");
										}
									});
					// 管理员提现成功操作
					$("#withdrawSuccess")
							.click(
									function() {
										// 获取选中行数据
										var selectedRecords = $(
												'#withdrawApplyList').omGrid(
												'getSelections', true);
										var idn = "";
										var uid = "";
										var myMoney = "";
										var withdrawmoney = "";
										var factorage = "";
										// 判断用户是否选中数据
										if (selectedRecords.length > 1) {
											alertMsg.warn("请选择一项进行操作。");
											return false;
										}
										if (selectedRecords.length > 0) {
											alertMsg
													.confirm(
															"选中的提现选项是否成功提现?",
															{
																okCall : function() {
																	for ( var i in selectedRecords) {
																		idn += selectedRecords[i].id
																				+ ",";
																		uid += selectedRecords[i].userBasicsInfoId;
																		myMoney += selectedRecords[i].cash;
																		withdrawmoney += selectedRecords[i].apply_num;
																		factorage += selectedRecords[i].factorage;
																		if (selectedRecords[i].status != 1
																				|| selectedRecords[i].result != 1) {
																			alertMsg
																					.warn("只有审核通过未做提现操作的申请才能进行提现操作");
																			return false;
																		}
																	}
																	ajaxTodo("/withdraw_apply/success?state=2&ids="
																			+ idn
																			+ "&uid="
																			+ uid
																			+ "&myMoney="
																			+ myMoney
																			+ "&withdrawmoney="
																			+ withdrawmoney
																			+ "&factorage="
																			+ factorage
																	);
																	//防止打开链接
																	event
																			.preventDefault();
																}
															});
										} else {
											alertMsg.warn("您没有选择要处理的提现操作");
										}
									});
					//管理员提现失败操作
					$("#withdrawFail")
							.click(
									function() {
										//获取选中行数据
										var selectedRecords = $(
												'#withdrawApplyList').omGrid(
												'getSelections', true);
										var idn = "";
										var uid = "";
										var myMoney = "";
										var withdrawmoney = "";
										var factorage = "";
										//判断用户是否选中数据
										if (selectedRecords.length > 0) {
											alertMsg
													.confirm(
															"选中的提现选项是否失败提现?",
															{
																okCall : function() {
																	for ( var i in selectedRecords) {
																		idn += selectedRecords[i].id
																				+ ","
																		uid += selectedRecords[i].userBasicsInfoId;
																		myMoney += selectedRecords[i].cash;
																		withdrawmoney += selectedRecords[i].apply_num;
																		factorage += selectedRecords[i].factorage;
																		if (selectedRecords[i].status != 1
																				|| selectedRecords[i].result != 1) {
																			alertMsg
																					.warn("只有审核通过未做提现操作的申请才能进行提现操作");
																			return false;
																		}
																	}
																	ajaxTodo("/withdraw_apply/fail?state=3&ids="
																			+ idn
																			+ "&uid="
																			+ uid
																			+ "&myMoney="
																			+ myMoney
																			+ "&withdrawmoney="
																			+ withdrawmoney
																			+ "&factorage="
																			+ factorage
																	);
																	//防止打开链接
																	event
																			.preventDefault();
																}
															});
										} else {
											alertMsg.warn("您没有选择要处理的提现操作");
										}
									});
				});
