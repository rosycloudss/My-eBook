<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin2.1</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <%--    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />--%>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="stylesheet" href="/bg/css/font.css">
    <link rel="stylesheet" href="/bg/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="/bg/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/bg/js/xadmin.js"></script>
    <script type="text/javascript" src="/bg/js/cookie.js"></script>
    <script src="//cdn.bootcss.com/echarts/3.3.2/echarts.min.js" charset="utf-8"></script>
</head>
<body>
<div class="x-body">
    <div class="layui-row" align="center">
        <form class="layui-form layui-col-md12 x-so">
            <input class="layui-input" autocomplete="off" placeholder="开始时间" name="startDay" id="startDay">
            <input class="layui-input" autocomplete="off" placeholder="结束时间" name="endDay" id="endDay">
            <button class="layui-btn" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main" style="width: 100%;height:400px;"></div>
    <div class="layui-row" align="center">
        <button class="layui-btn">日销售统计</button>
        <%--        <button class="layui-btn">月销售统计</button>--%>
        <%--        <button class="layui-btn">季度销售统计</button>--%>
    </div>

</div>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    /*获取销售情况*/
    function getSaleStatistics() {

    }

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '销售统计'
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['销售总额','图书销量']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        xAxis:{
            type: '时间',
            boundaryGap: false,
        },
        yAxis: {
            type: 'value'
        },
        series: []
    };

    function getSale(){
        $.ajax({
            type: "POST",
            contentType: "application/json;charset=UTF-8",
            url: '/bg/sale/day',
            dataType: "json",
            success: function (data) {
                console.log(data)
                var saleArray = Array.from(data.saleStatistics);
                var xAxis = {
                    type: 'category',
                    boundaryGap: false,
                    data: []
                };

                var bookSaleNum = {
                    name: '图书销量',
                    type: 'line',
                    stack: '总量',
                    data: []
                };
                var salesVolume = {
                    name: '销售总额',
                    type: 'line',
                    stack: '总量',
                    data: []
                };
                for (var i = 0; i < saleArray.length; i++) {
                    var saleStatistic = saleArray[i];
                    xAxis.data.push(saleStatistic.dateStr)
                    bookSaleNum.data.push(saleStatistic.saleNum);
                    salesVolume.data.push(saleStatistic.salesVolume);
                }
                var series = [bookSaleNum, salesVolume];

                option.xAxis=xAxis;
                option.series = series;
                myChart.setOption(option);
            },
            error: function (data) {
                alert('数据获取失败! error');
            }
        });
        return false;
    }

    getSale();
    // // 使用刚指定的配置项和数据显示图表。
    // myChart.setOption(option);

    layui.use('laydate', function () {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
    });
    layui.use(['form', 'layer', "laydate"], function () {
        $ = layui.jquery;
        var form = layui.form
            , layer = layui.layer;
        var laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
            elem: '#startDay' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#endDay' //指定元素
        });
        //监听提交
        form.on('submit(sreach)', function (data) {
            console.log(data);
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/sale/day',
                dataType: "json",
                data: JSON.stringify(data.field),
                success: function (data) {
                    console.log(data)
                    var saleArray = Array.from(data.saleStatistics);
                    var xAxis = {
                        type: 'category',
                        boundaryGap: false,
                        data: []
                    };

                    var bookSaleNum = {
                        name: '图书销量',
                        type: 'line',
                        stack: '总量',
                        data: []
                    };
                    var salesVolume = {
                        name: '销售总额',
                        type: 'line',
                        stack: '总量',
                        data: []
                    };
                    for (var i = 0; i < saleArray.length; i++) {
                        var saleStatistic = saleArray[i];
                        xAxis.data.push(saleStatistic.dateStr)
                        bookSaleNum.data.push(saleStatistic.saleNum);
                        salesVolume.data.push(saleStatistic.salesVolume);
                    }
                    var series = [bookSaleNum, salesVolume];

                    option.xAxis=xAxis;
                    option.series = series;
                    myChart.setOption(option);
                },
                error: function (data) {
                    alert('数据获取失败!');
                }
            });
            return false;
        });
    });
</script>
</body>
</html>