<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<%@ include file="/include.jsp"%>
    <title></title>
</head>
<body>
<div>
	<form id="dataForm">

		<input type="hidden" name="serviceId"/>
		<div class="fitem">
	    	<label>服务商列表:</label>
		 	<select name="sellerName" id="sellerName" class="easyui-combobox" panelHeight="auto" style="width:100px" required="required" editable="editable"> 
				<c:forEach  items="${sellerServiceList}" var="entity" varStatus="s">
					<option value="${entity.sellerId}">${entity.sellerName}</option>
				</c:forEach>
			</select> 
		</div>
		<div class="fitem">
	    	<label>结算价格:</label>
	    	<input name="settlePrice" class="easyui-numberbox" validType="length[0,14]" invalidMessage="价格不能大于10位" data-options="required:true,groupSeparator:',',decimalSeparator:'.',min:0,precision:2,prefix:'￥'">
		</div>
		<div class="fitem">
	    	<label style="vertical-align:top;">服务商描述:</label>
			<textarea name="serviceMsg" style=" border:1px solid #99bbe8;"  rows="4" cols="31" class="easyui-validatebox" validType="length[0,200]" required="required" ></textarea>
		</div>	
	</form>
    <div id="dlg-buttons" align="center">
       <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" id="save" onclick="saveOrUpdate()" style="width:90px">提交</a>
       <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="goBack()" style="width:90px">取消</a>
   </div>
</div>
    
<script type="text/javascript">

jQuery(function(){ 
	
	jQuery.ajaxSetup({
		cache : false
	});
});

//保存记录
function saveOrUpdate()
{
	var r = $('#dataForm').form('validate');
	if(!r) {
		return false;
	}
	else
	{	
		$('#save').linkbutton('disable');
		$.post("${rootPath}/single/saveSellService?serviceId="+serviceId,$("#dataForm").serializeArray(),
				
		function(data){
			if(data.result == 'true' || data.result == true)
			{
			 	$.messager.alert("提示", data.msg);
				goBack(1);
			}
			else
			{
				$.messager.alert("提示", data.msg);
				$('#save').linkbutton('enable');
			}
		});
	}
}
 
//返回父页面  
// function goBack(flag){
// 	parent.returnParent(flag);
// }
</script>

</body>
</html>
