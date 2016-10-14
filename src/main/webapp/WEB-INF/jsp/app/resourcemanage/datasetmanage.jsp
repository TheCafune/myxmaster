<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/app/resourcemanage/datasetmanage.js"></script>
<script src="//cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>

<style type="text/css">
  .show {
    display: none;
  }
  .content {
    height: 902px;
    width: 601px;
    align-content: center;
  }
</style>

<header class="panel-heading">
  <div class="doc-buttons">
    <c:forEach items="${res}" var="key">
      ${key.description}
    </c:forEach>
  </div>
</header>
<div id="dd"></div>
<div class="table-responsive">
  <div id="paging" class="pagclass"></div>
</div>


<!--涓嬮潰鏄垜鑷繁娣诲姞鐨勫唴瀹�-->
<input id="load" type="button" value="Load"/>

<%--<div class="row">--%>
  <%--<div id="show">--%>
  <%--</div>--%>
<%--</div>--%>

<script type="text/javascript">
  $("#load").click(function()
  {
    alert("123");
    $("#unityPlayer").css("display","block");
  });
</script>

<!-- 涓嬮潰鏄痷nity3D鐢熸垚鐨勯儴鍒�-->
<script type='text/javascript' src='https://ssl-webplayer.unity3d.com/download_webplayer-3.x/3.0/uo/jquery.min.js'></script>
<%--<script type='text/javascript' src="http://webplayer.unity3d.com/download_webplayer-3.x/3.0/uo/UnityObject2.js"></script>--%>
<script type='text/javascript' src="${pageContext.request.contextPath}/js/app/resourcemanage/UnityObject2.js"></script>
<%--<script type="text/javascript">--%>
  <%--var unityObjectUrl = "http://webplayer.unity3d.com/download_webplayer-3.x/3.0/uo/UnityObject2.js";--%>
  <%--if (document.location.protocol == 'https:')--%>
    <%--unityObjectUrl = unityObjectUrl.replace("http://", "https://ssl-");--%>
  <%--document.write('<script type="text\/javascript" src="' + unityObjectUrl + '"><\/script>');--%>
<%--</script>--%>
<script type="text/javascript">
  <!--
  var config = {
    width: 960,
    height: 600,
    params: { enableDebugging:"0" }

  };
  var u = new UnityObject2(config);

  jQuery(function() {

    var $missingScreen = jQuery("#unityPlayer").find(".missing");
    var $brokenScreen = jQuery("#unityPlayer").find(".broken");
    $missingScreen.hide();
    $brokenScreen.hide();

    u.observeProgress(function (progress) {
      switch(progress.pluginStatus) {
        case "broken":
          $brokenScreen.find("a").click(function (e) {
            e.stopPropagation();
            e.preventDefault();
            u.installPlugin();
            return false;
          });
          $brokenScreen.show();
          break;
        case "missing":
          $missingScreen.find("a").click(function (e) {
            e.stopPropagation();
            e.preventDefault();
            u.installPlugin();
            return false;
          });
          $missingScreen.show();
          break;
        case "installed":
          $missingScreen.remove();
          break;
        case "first":
          break;
      }
    });
    u.initPlugin(jQuery("#unityPlayer")[0], "/admin_files/2.unity3d");
  });
  -->
</script>
<p class="header"><span>Unity Web Player | </span>zhongji-8.12anlihuifang</p>
<div class="content">
  <div id="unityPlayer" style="display: none;">
    <div class="missing">
      <a href="http://unity3d.com/webplayer/" title="Unity Web Player. Install now!">
        <img alt="Unity Web Player. Install now!" src="http://webplayer.unity3d.com/installation/getunity.png" width="193" height="63" />
      </a>
    </div>
    <div class="broken">
      <a href="http://unity3d.com/webplayer/" title="Unity Web Player. Install now! Restart your browser after install.">
        <img alt="Unity Web Player. Install now! Restart your browser after install." src="http://webplayer.unity3d.com/installation/getunityrestart.png" width="193" height="63" />
      </a>
    </div>
  </div>
</div>
<p class="footer">&laquo; created with <a href="http://unity3d.com/unity/" title="Go to unity3d.com">Unity</a> &raquo;</p>
