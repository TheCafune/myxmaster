<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/industry/edit.js"></script>

<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
}

.col-sm-9 {
	width: 85%;
	float: left;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/industry/editEntity.shtml">
		<input type="hidden" class="form-control checkacc"
			value="${industry.EnterpriseID}" name="industrialFormMap.EnterpriseID" id="EnterpriseID">

		<section class="panel panel-default">

		<%--<div>${industry.EnterpriseID}</div>--%>
		<div class="panel-body">
			<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">企业名称</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						   placeholder="请输入企业名" name="industrialFormMap.EnterName" id="EnterName">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>

			<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">企业简称</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						   placeholder="请输入企业简称" name="industrialFormMap.ShortName" id="ShortName">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>

			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否存有大量危险化学品</label>
				<div class="col-sm-9">
					<div class="btn-group m-r">
						<button data-toggle="dropdown"
								class="btn btn-sm btn-default dropdown-toggle">
							<span class="dropdown-label">是</span> <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-select">
							<li class=""><a href="#"><input type="radio"
															name="industrialFormMap.IsDangerCp" value="1" checked="checked">是</a></li>
							<li class="active"><a href="#"><input type="radio"
																  name="industrialFormMap.IsDangerCp" value="0">否</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">企业地址</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入企业地址"
						   name="industrialFormMap.Address" id="Address">
				</div>
			</div>
		</div>
		<footer class="panel-footer text-right bg-light lter">
		<button type="submit" class="btn btn-success btn-s-xs">保存</button>
		</footer> </section>
	</form>
	<script type="text/javascript">
	onloadurl();
</script>
</body>
</html>