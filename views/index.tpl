<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <title>订餐</title>
    <link rel="stylesheet icon" href ="/static/meal/css/style.css" >
    <script src="/static/js/jquery.min.js"></script>
    <script src="/static/meal/js/jquery.calendario.js"></script>
    <script src="/static/meal/js/common.js"></script>
    <script src="/static/libs/layer/layer.js"></script>
</head>
<body>
<div class="container">
    <div class="custom-calendar-wrap custom-calendar-full">
        <div class="custom-header clearfix">
            <h2><a id="nickname" href="javascript:void(0);">{{.userinfo.Nickname}}</a> - 订餐</h2>
            <h3 class="custom-month-year">
                <span id="custom-month" class="custom-month"></span>
                <span id="custom-year" class="custom-year"></span>
                <nav>
                    <span id="custom-prev" class="custom-prev"></span>
                    <span id="custom-next" class="custom-next"></span>
                    <span id="custom-current" class="custom-current" title="当前时间"></span>
                    <span id="custom-logout" class="custom-logout" title="退出登陆"></span>
                </nav>
            </h3>
        </div>
        <div id="calendar" class="fc-calendar-container"></div>
    </div>
</div>

<script>
    $(function() {
        var cal = $( '#calendar' ).calendario({
            onDayClick : function( $el, $contentEl, dataProperties ) {
                var loadingIndex = layer.load(1, {
                    shade: [0.1,'#fff'] //0.1透明度的白色背景
                });
                AjaxPost('{{urlfor "MainController.Ding" }}',dataProperties,function (data) {
                    layer.close(loadingIndex);
                    if(data.code > 0){
                        $el.append("<img src='/static/meal/img/timg.gif' style='width: 50px; float: right;'>");
                        $el.attr("meal-id",data.data);
                    }
                    else{
                        AjaxErro({ Status: "Error", Error: data.msg });
                        if(data.data == -1){
                            layer.confirm(data.msg, {
                                btn: ['退掉','关闭'] //按钮
                            }, function(){
                                layer.load(1);
                                var mealId = $el.attr("meal-id");
                                dataProperties.mealId = mealId;
                                $.post("{:url('refund')}",dataProperties,function (data) {
                                    layer.closeAll();
                                    if(data.code == 0){
                                        AjaxErro({ Status: "Error", Error: data.msg });
                                    }else{
                                        window.location.reload();
                                    }
                                });
                            }, function(){

                            });
                        }
                    }
                },function () {
                    layer.close(loadingIndex);
                });
            },
            caldata : codropsEvents
        }),
            $month = $( '#custom-month' ).html(cal.getMonthName()),
            $year = $( '#custom-year' ).html(cal.getYear());

        $( '#custom-next' ).on( 'click', function() {
            cal.gotoNextMonth( updateMonthYear );
            loadmeal(cal.getYear(),cal.getMonth());
            //addmeal();
        } );
        $( '#custom-prev' ).on( 'click', function() {
            cal.gotoPreviousMonth( updateMonthYear );
            loadmeal(cal.getYear(),cal.getMonth());
            //addmeal();
        } );
        $( '#custom-current' ).on( 'click', function() {
            cal.gotoNow( updateMonthYear );
            addmeal();
        });
        function updateMonthYear() {
            $month.html( cal.getMonthName() );
            $year.html( cal.getYear() );
        }

        function addmeal(){
            var result = JSON.parse({{.result}});
            result.forEach(function (v,i,a) {
                $("#day-"+v.day).parent().append("<img src='/static/meal/img/timg.gif' style='width: 50px; float: right;'>");
                $("#day-"+v.day).parent().attr("meal-id",v.id);
            });
        }

        function loadmeal(year,month){
            $.post("{:url('loadmeal')}",{year:year,month:month},function (data) {
                if(data.code == 1 && data.data.length > 0){
                    data.data.forEach(function (v,i,a) {
                        $("#day-"+v.day).parent().append("<img src='/static/meal/img/timg.gif' style='width: 50px; float: right;'>");
                        $("#day-"+v.day).parent().attr("meal-id",v.id);
                    });
                }
            });
        }
        addmeal();
        
        $("#custom-logout").click(function () {
            var loadingIndex = layer.load(1);
            AjaxPost('{{urlfor "LoginController.Logout"}}',{},function (data) {
                layer.close(loadingIndex);
               window.location.href = "/user/login";
            },function () {
                layer.close(loadingIndex);
            });
        });


        
        $("#nickname").click(function () {
            layer.open({
                type: 2,
                title: '修改密码',
                shadeClose: true,
                shade: 0.1,
                area: ['350px', '350px'],
                content: '/admin.php/meal/index/editPwd.html"'
            });
        });
    });
    function logout(){
        $("#custom-logout").trigger("click")
    }
</script>
</body>
</html>