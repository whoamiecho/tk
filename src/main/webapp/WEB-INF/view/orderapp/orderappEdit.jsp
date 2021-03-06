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
<div class="easyui-panel" title="XX详细信息编辑" style="width:600px">
	<form id="dataForm">
			<div class="fitem">
		    	<label>orderAppId:</label>
		        <input name="orderAppId" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>subId:</label>
		        <input name="subId" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>linkId:</label>
		        <input name="linkId" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>subCode:</label>
		        <input name="subCode" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>orderId:</label>
		        <input name="orderId" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>orderCode:</label>
		        <input name="orderCode" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>appState:</label>
		        <input name="appState" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>applianceId:</label>
		        <input name="applianceId" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>applianceCoding:</label>
		        <input name="applianceCoding" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>categoryId:</label>
		        <input name="categoryId" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>categoryCode:</label>
		        <input name="categoryCode" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>categoryName:</label>
		        <input name="categoryName" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>applianceName:</label>
		        <input name="applianceName" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>applianceUnit:</label>
		        <input name="applianceUnit" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>applianceCount:</label>
		        <input name="applianceCount" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>appliancePrice:</label>
		        <input name="appliancePrice" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>applianceSettlePrice:</label>
		        <input name="applianceSettlePrice" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>applianceMarketPrice:</label>
		        <input name="applianceMarketPrice" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>skuId:</label>
		        <input name="skuId" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>skuCode:</label>
		        <input name="skuCode" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>skuPropertyStr:</label>
		        <input name="skuPropertyStr" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>isReturnBills:</label>
		        <input name="isReturnBills" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>interflowPrice:</label>
		        <input name="interflowPrice" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>pictureUrl:</label>
		        <input name="pictureUrl" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>sellerCode:</label>
		        <input name="sellerCode" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>sellerName:</label>
		        <input name="sellerName" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>site:</label>
		        <input name="site" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>appraiseState:</label>
		        <input name="appraiseState" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>createdTime:</label>
		        <input name="createdTime" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>createdBy:</label>
		        <input name="createdBy" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>modifiedTime:</label>
		        <input name="modifiedTime" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>modifiedBy:</label>
		        <input name="modifiedBy" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>version:</label>
		        <input name="version" class="easyui-textbox" data-options="required:true">
			</div>
			<div class="fitem">
		    	<label>delflag:</label>
		        <input name="delflag" class="easyui-textbox" data-options="required:true">
			</div>
			</form>
    <div id="dlg-buttons" align="center">
       <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" id="save" onclick="saveOrUpdate()" style="width:90px">提交</a>
       <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="goBack(0)" style="width:90px">取消</a>
   </div>
</div>
    
<script type="text/javascript">

var rowId;
jQuery(function(){ 

	//初始化下拉框-示例，请根据需要自定义实现
   	/*
   	 $('#combo1').combobox({    
  	        url:'${rootPath}/getDictlist?dicttypeid=userstatus',    
  	        valueField:'dictid',    
  	        textField:'dictname',
  	     	panelHeight:'auto'
  	    }); 
  	  */ 
	
	rowId ='${rowId}';
	
	if (rowId != null && rowId != "" && rowId!=0){
		var url='${rootPath}/orderApp/getOne?rowId=' + rowId;
		$('#dataForm').form('load', url);
	}
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
		$.post("${rootPath}/orderApp/save",$("#dataForm").serializeArray(),
		function(data)
		{			
			if(data.result == 'true' || data.result == true)
			{
			 	$.messager.show({title:'提示',msg:data.msg,showType:'show'});
				goBack(1);
			}
			else
			{
				$.messager.alert('提示',data.msg,'error');
				$('#save').linkbutton('enable');
			}
		});
	}
}
 
//返回父页面  
function goBack(flag){
	parent.returnParent(flag);
}
</script>

</body>
</html>
