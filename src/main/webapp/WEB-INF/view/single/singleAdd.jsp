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
<div id="tt" class="easyui-tabs" style="width:120%; height: 500px">  
<div title="添加单项服务" >
	<form id="dataForm">
		<div class="fitem">
	    	<label>服务名称:</label>
	        <input name="serviceName" class="easyui-textbox" validType="length[0,50]" required="required">
		</div>
		<div class="fitem">
	    	<label>服务分类:</label>
	    	<input class="easyui-combobox" name="serviceType" value="1" style="width:100px" required="required" panelHeight="auto"
		 	url="${rootPath}/getDictCombox?dictType=servType" valueField="dictId" textField="dictName">
		</div>
		<div class="fitem">
	    	<label>销售价格:</label>
	    	<input name="sellPrice" class="easyui-numberbox" validType="length[0,14]" invalidMessage="价格不能大于10位" data-options="required:true,groupSeparator:',',decimalSeparator:'.',min:0,precision:2,prefix:'￥'">
		</div>
		<div class="fitem">
	    	<label>站点:</label>
			<input class="easyui-combobox" name="site" value="010" style="width:100px" required="required" panelHeight="auto"
		 	url="${rootPath}/getDictCombox?dictType=SITE" valueField="dictId" textField="dictName">
		</div>
		<div class="fitem">
	    	<label style="vertical-align:top;">服务描述:</label>
			<textarea name="serviceMsg" style=" border:1px solid #99bbe8;"  rows="4" cols="31" class="easyui-validatebox" validType="length[0,200]" required="required" ></textarea>
		</div>		
		<div class="fitem">
	    	<label style="vertical-align:top;">寓意:</label>
			<textarea name="moral" style=" border:1px solid #99bbe8;"  rows="4" cols="31" class="easyui-validatebox" validType="length[0,200]" required="required" ></textarea>
		</div>
	</form>
    <div id="dlg-buttons" align="center">
       <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" id="save" onclick="saveOrUpdate()" style="width:90px">提交</a>
       <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="goBack()" style="width:90px">取消</a>
   </div>
</div>
    <div title="图片上传"  >  
   		 <h1 style="margin-left: 80px;color: red">单项服务上传图片</h1>
	<form name="userForm2" id = "userForm2"  action="${rootPath}/single/uploadBySpringGrpSingle" enctype="multipart/form-data" method="post">
		<input name="serviceId" type="hidden" id="hidSId"/>
	    <div class="fitem">
   		 	<input type="file" name="file" id="file" style="margin-left: 93px"/>&nbsp;
   		 	<input type="button" id="addfile" name="addfile" value="添加" style="width:60px; height: 20px;">
	    </div>
	    <div id="addfile1"></div>
		
	</form>
    </div>  
</div>    
<script type="text/javascript">

jQuery(function(){ 
	
	jQuery.ajaxSetup({
		cache : false
	});
	// 上传按钮事件

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
		$.post("${rootPath}/single/save",$("#dataForm").serializeArray(),
		function(data)
		{			
			if(data.result == 'true' || data.result == true)
			{	
				$("#hidSId").val(data.sId);
				  document.userForm2.submit();
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
 <script type="text/javascript">
    	//根据添加图片按钮增加多个图片上传
    	$().ready(function(){
    		var $addfile =$("#addfile");
    		var $addfile1=$("#addfile1");
    		var fileImage = 1;
    		$addfile.click(function(){
    			var fileImages='<div class="fitem"><label style="vertical-align:top;"></label>&nbsp;<input type="file" id="file'+(fileImage+1)+'" name="file'+(fileImage+1)+'"/><a href="javascript:void(0)" class="easyui-linkbutton" id="del1" onclick="deletcheck('+(fileImage+1)+')" style="width:90px">&nbsp;&nbsp;&nbsp;删除</a></div>';
    			$addfile1.append(fileImages);
    			fileImage++;
    		});
    	});
    	
    	function deletcheck(id){
    		if(confirm("确定要删除吗?")){   			
    			$("#file"+id).parent().remove();
    		}
    	}
    
    </script>
</body>
</html>
