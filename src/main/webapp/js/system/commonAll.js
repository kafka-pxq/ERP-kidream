//公共组件
//数组传值时，不添加[]
$.ajaxSettings.traditional = true;

$(function () {
    //统一全局配置
    $.messager.model = {
        ok: {text: "确定"},
        cancel: {text: "取消"}
    };
})
//查询
$(function () {
    $("#btn_query").click(function () {
        $("#currentPage").val(1);
        $("#searchForm").submit();
    });
});
//删除
$(function () {
    $(".btn_delete").click(function () {
        var url = $(this).data("url");
        $.messager.confirm("温馨提示", "你确定要删除此数据吗?", function () {
            //删除
            $.get(url, function (data) {
                if (data.success) {
                    //删除成功
                    $.messager.confirm("温馨提示", "删除成功", function () {
                        window.location.reload();
                    })
                } else {
                    //删除失败
                    $.messager.popup(data.msg);
                }
            });
        });
    })
})

//跳转
$(function () {
    //编辑跳转
    $(function () {
        $(".btn_redirect").click(function () {
            var url = $(this).data("url");
            window.location.href = url;
        })
    })
})
