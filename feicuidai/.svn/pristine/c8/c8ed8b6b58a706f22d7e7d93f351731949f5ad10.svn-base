$(document).ready(function () {

    /**
     * 编辑抵押物
     */
    $("#editPawn").click(function () {
        //取到选中记录
        var selections = $('#pawnList').omGrid('getSelections', true);
        //判断是否选中
        if (selections == null || selections == "" || selections == undefined || selections.length < 1) {
            alertMsg.info("请选择一条记录！");
        } else {
            //打开编辑页面属性依次为：窗体id，路径、标题，重复打开是否刷新
            navTab.openTab("", "/pawn/queryPawnById?operation=upt&id=" + selections[0].id, {
                title: "编辑",
                fresh: true
            });
        }
    });

    /**
     * 上传图片
     */
    $("#addAttachmentIcon").click(function () {
        //取到选中记录
        var selections = $('#pawnList').omGrid('getSelections', true);
        //判断是否选中
        if (selections == null || selections == "" || selections == undefined || selections.length < 1) {
            alertMsg.info("请选择信息！");
        } else {
            //得到选中的第一条记录
            var dataRow = selections[0];
            //得到id
            var id = dataRow.id;
            $.pdialog.open("/attachment/openUploadPage?id=" + id, "dialog", "添加图片 ", {
                max: false,
                width: 420,
                height: 200,
                mask: true,
                close: relaodFileTable
            });
        }
    });

    $("#deleteAttachment").click(function () {
        //取到选中记录
        var selections = $('#pawnAttachment').omGrid('getSelections', true);
        //判断是否选中
        if (selections == null || selections == "" || selections == undefined || selections.length < 1) {
            alertMsg.info("请选择一条记录！");
        } else {
            //得到选中的第一条记录
            var dataRow = selections[0];
            //得到id
            var id = dataRow.id;
            $.ajax({
                url: '/attachment/delPawnAttachment',
                data: 'id=' + id,
                type: 'post',
                success: function (msg) {
                    if (msg) {
                        $('#pawnAttachment').omGrid('reload');//刷新当前页
                        alertMsg.correct("删除成功");
                    } else {
                        alertMsg.info("删除失败！");
                    }
                }
            });
        }
    });

    var relaodFileTable = function () {
        $('#pawnAttachment').omGrid('reload');
        return true;
    }

    //附件
    var showmygrid = function (id) {
        $("#pawnAttachment").omGrid({
            dataSource: "/attachment/pawnAttachmentList?id=" + id,
            title: '附件信息',
            height: 320,
            limit: 10,
            colModel: [
                {header: '编号', name: 'id', width: 35, align: 'center'},
                {header: '附件名称', name: 'attachmentName', width: 100, align: 'center'},
                {header: '上传时间', name: 'uploadTime', width: 120, align: 'center'},
                {header: '上传人', name: 'realname', width: 120, align: 'center'},
                {header: '类型', name: 'myMark', width: 120, align: 'center'}]
        });
    };

    //数据源面板
    $('#pawnList').omGrid({
        dataSource: '/pawn/openPawnList',
        title: '抵押物列表',
        height: 336,
        limit: 10,
        colModel: [
            {header: '序号', name: 'id', width: 25, align: 'center'},
            {header: '编号', name: 'number', width: 100, align: 'center'},
            {header: '名称', name: 'name', align: 'center', width: 100},
            {header: '原料产地', name: 'producer', align: 'center', width: 70},
            {header: '重量', name: 'weight', align: 'center', width: 80},
            {header: '尺寸', name: 'size', align: 'center', width: 80},
            {header: '工艺', name: 'technology', align: 'center', width: 80},
            {header: '托管方', name: 'custodian', align: 'center', width: 55}],

        //选中事件
        onRowSelect: function (index, rowData, event) {
            //取到该行id值
            var id = rowData["id"];
            showmygrid(id);
        }
    });
});

//删除当前标
function delConfirmMsg() {

    var selections = $('#pawnList').omGrid('getSelections', true);
    if (selections.length == 0) {
        alertMsg.info("请选择删除的记录！");
        return;
    } else {

        var toDeleteRecordID = selections[0].id;
        alertMsg.confirm("您确定要删除当前记录？", {
            okCall: function () {
                $.ajax({
                    data: 'id=' + toDeleteRecordID,
                    url: '/pawn/deletePawn',
                    type: 'post',
                    success: function (msg) {
                        if (msg == 1) {
                            $('#pawnList').omGrid('reload');//刷新当前页数据
                            alertMsg.correct("删除数据成功");
                        } else {
                            alertMsg.info("删除数据失败");
                        }
                    }
                });
            }
        });
    }
}

