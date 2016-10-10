<%--
  Created by IntelliJ IDEA.
  User: chc
  Date: 2016/10/10
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
  <style type="text/css">
    body, html,#allmap {width: 100%;height: 100%; margin:0;font-family:"微软雅黑";}
    #l-map{height:300px;width:100%;}
    #r-result{width:100%; font-size: 14px; line-height: 20px;}
  </style>

    <script type="text/javascript">
        function initialize() {
            // 百度地图API功能
            var map = new BMap.Map("l-map");
            map.centerAndZoom("天津市", 11);

            var options = {
                onSearchComplete: function(results){
                    // 判断状态是否正确
                    if (local.getStatus() == BMAP_STATUS_SUCCESS){
                        var s = [];
                        for (var i = 0; i < results.getCurrentNumPois(); i ++){
                            s.push(results.getPoi(i).title + ", " + results.getPoi(i).address+","+results.getPoi(i).point.lng+","+ results.getPoi(i).point.lat);
                        }
                        document.getElementById("r-result").innerHTML = s.join("<br/>");
                    }
                }
            };
            var local = new BMap.LocalSearch("天津市", options);
            local.search("消防队");
        }

        function loadScript() {
            var script = document.createElement("script");
            script.src = "http://api.map.baidu.com/api?v=2.0&ak=Ikd2A16tuZY9jviM4wRNkO2Tu3DT5lwK&callback=initialize";
            document.body.appendChild(script);
        }
$(function(){
    loadScript();
})

    </script>

    <title>本地搜索的数据接口</title>

</head>
<body>
  <div id="l-map"></div>
  <div id="r-result"></div>
</body>
</html>
