var starbucks  = function() {

    //私有方法
    var handlerInitICheck = function () {
        //初始化checkbox
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        });
    };

    var handlerInitDataTables = function (url,columns) {
        var dataTable = $('#dataTable').DataTable( {
            paging: true,
            processing: true,
            serverSide: true,
            searching: false,
            ordering: false,
            lengthChange: false,
            pageLength: 10,
            "autoWidth": false,
            //数据来源（包括处理分页，排序，过滤） ，即url，action，接口，等等
            ajax: {
                url: url,
                type: 'GET',

            },
            "columns": columns,
            language: {
                "sProcessing": "处理中...",
                "sLengthMenu": "显示 _MENU_ 项结果",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "表中数据为空",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页"
                },
                "oAria": {
                    "sSortAscending": ": 以升序排列此列",
                    "sSortDescending": ": 以降序排列此列"
                }
            },
            "drawCallback": function( settings ) {
                //初始化checkbox
                handlerInitICheck();

                $("#check-all").on('ifChanged', function () {
                    if ($(this).is(':checked')) {
                        $('input.minimal').iCheck('check');
                    } else {
                        $('input.minimal').iCheck('uncheck');
                    }
                });
            }

        } );

        bindEvent();
        return dataTable;

        function bindEvent() {
            // 重置
            $("#btnReset").on("click", function () {
                window.location.reload();
            });
        }
    };

    //删除
    var handlerShowDelete = function (url) {
        starbucks.showAlert("是否要删除该条记录");
        $("#btn-confirm").on("click",function () {
            window.location.href = url;
        })
    };

    //批量删除
    var handlerBatchDelete = function (url) {
        var checks = $("input[name='check[]']:checked");
        if (checks.length == 0) {
            starbucks.showAlert("未选择任何项");
        }

        else {
            //将获取的值存入数组
            var ids = new Array();
            checks.each(function () {
                ids.push($(this).val());
            });
            starbucks.showAlert("是否删除这些记录?");
            $("#btn-confirm").on("click", function () {
                window.location.href = url + ids;
            });

        }
    };

    //编辑
    var handlerShowEdit = function (url) {
        var checks = $("input[name='check[]']:checked");
        if (checks.length < 1) {
            starbucks.showAlert("未选择任何项");
        } else if (checks.length > 1) {
            starbucks.showAlert("只能选择一项");
        } else {
            window.location.href = url+checks.val();
        }
    };

    //查看
    var handlerShowDetail = function (url) {
        $.ajax({
            url:url,
            method:"get",
            dataType:"html",
            success:function (data) {
                starbucks.showAlert(data);
            },

        });
    };

    //打开模态框
    var handlerShowAlert = function (message) {
        $("#modal-alert-body").html(message);
        $("#modal-alert").modal("show");
        $("#btn-confirm").attr("data-dismiss", "modal");
    };

    //zTree模型
    var handlerInitTree = function (url) {
        var setting = {
            view: {
                // 禁止多选
                selectedMulti: false
            },
            async: {
                enable: true,
                url:url,
                autoParam:["id"],
                type:"get"
            },
            callback:{
                beforeClick:function (treeId, treeNode) {
                    $("#parentId").val(treeNode.id);
                    $("#parentName").val(treeNode.name);
                }
            }
        };


        $("#parentName").on("click",function () {
            starbucks.showAlert("<ul id='treeData' class='ztree'></ul>");
            $.fn.zTree.init($("#treeData"), setting);
        });
    };

    var handlerInitDropzone = function (dropId, inputId) {
        $("div#"+dropId).dropzone({
            paramName: "dropFile", // 被转移的文件param的名称。
            maxFilesize: 2, // MB
            maxFiles: 1,
            url: "/upload/image",
            method:"post",
            createImageThumbnails:true,//是否生成略缩图
            init: function () {
                this.on("success", function (file, data) {
                    // 上传成功触发的事件
                    $("#"+inputId).val(data.fileName);
                });
            }
        });
    };

    //uEditor初始化
    var handlerInitUeditor = function () {
        var ue = UE.getEditor('container');
        ue.ready(function () {
            ue.setContent($("#content").val());
        });
        //绑定编辑器内容发生改变时会触发该事件
        ue.on("contentChange",function () {
            $("#content").val(ue.getContent());
        });
    };

    //公共方法
    return {
        initDataTables:function (url, columns) {
            return handlerInitDataTables(url, columns);
        },
        initICheck:function () {
            return handlerInitICheck();
        },
        showDelete:function (url) {
            handlerShowDelete(url);
        },
        batchDelete:function (url) {
            handlerBatchDelete(url);
        },
        showEdit:function (url) {
            handlerShowEdit(url);
        },
        showDetail:function (url) {
            handlerShowDetail(url);
        },
        showAlert:function (message) {
            handlerShowAlert(message);
        },
        initTree:function (url) {
            handlerInitTree(url);
        },
        InitDropzone:function (dropId, inputId) {
            handlerInitDropzone(dropId,inputId);
        },
        InitUeditor:function () {
            handlerInitUeditor();
        }
    }
}();

$(function () {
    starbucks.initICheck();
});