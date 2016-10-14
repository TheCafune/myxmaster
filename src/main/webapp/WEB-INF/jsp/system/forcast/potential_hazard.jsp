<%--
  Created by IntelliJ IDEA.
  User: iems706
  Date: 2016/10/13
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@include file="${ctx}/admin_files/a.txt"%>--%>
<html>
<head>
  <title>隐患排查结果统计</title>
</head>
<div id = "potential_hazard_result">隐患排查结果显示</div>
<button id="show" type="button" class="btn btn-success btn-s-xs">查看隐患统计结果</button>
<script type="text/javascript">
  $("#show").click(function(){
//    alert(window.document.location.href);
    $("#potential_hazard_result").html("asdfasdfasdf");
  });
  $("#show").dblclick(function(){
//    alert(window.document.location.href);
//      $("#potential_hazard_result").load("../a.txt");
//    $("#potential_hazard_result").load("/forcast/showAPage.shtml");
    $("#potential_hazard_result").load("/admin_files/a.txt");
//    $("#potential_hazard_result").load("/a.txt");
  });

</script>
</body>
</html>
