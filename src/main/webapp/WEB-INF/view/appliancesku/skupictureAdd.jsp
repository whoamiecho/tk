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
	<form id="dataForm" name="dataForm" method="post" action="${rootPath}/appliancesku/addimg" enctype="multipart/form-data">
		<input type="hidden" name="categoryId" value="${categoryId}">
		<input type="hidden" name="skuId" value="${skuId}">
		<input type="hidden" name="applianceId" value="${applianceId}">
		<input type="hidden" name="version">
		 <div class="fitem">
	    	<label style="vertical-align:top;">图片展示:</label>
	    	<c:forEach  items="${pictureDtoList}" var="measure" varStatus="s">
   		 		<img src="${measure.PICTURE_ADDRESS}" style="width: 100px;height: 100px;">
   		 		<a href="#" onclick="deletePic('${measure.PICTURE_ID}')" >
   		 		<img src="${rootPath}/static/css/icon/DeleteRed.png" >
   		 		</a>
   		 	</c:forEach>
	    </div>
		<div class="fitem">
   		 	<input type="button" id="addfilesku" name="addfilesku" value="添加" style="width:60px; height: 20px;">
	    </div>
	    <div id="addfile1sku"></div>
	</form>
	<form id="postForm" name="postForm"  action="${rootPath}/appliancesku/skuPictureAdd" method="post"  >
		<input type="hidden" name="skuId" value="${skuId}">
		<input type="hidden" name="applianceId" value="${applianceId}">
	</form>
    <div id="dlg-buttons" align="center">
       <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" id="save" onclick="saveOrUpdate()" style="width:90px">提交</a>
       <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="goBack()" style="width:90px">取消</a>
   </div>
</div>
    
<script type="text/javascript">
//根据添加图片按钮增加多个图片上传
$().ready(function(){
	var $addfilesku =$("#addfilesku");
	var $addfile1sku=$("#addfile1sku");
	var fileImage = 1;
	$addfilesku.click(function(){
		var fileImages='<div class="fitem"><label style="vertical-align:top;"></label>&nbsp;<input type="file" id="file'+(fileImage+1)+'" name="file'+(fileImage+1)+'"/><a href="javascript:void(0)" class="easyui-linkbutton" id="del1" onclick="deletcheck('+(fileImage+1)+')" style="width:90px">&nbsp;&nbsp;&nbsp;删除</a></div>';
		$addfile1sku.append(fileImages);
		fileImage++;
	});
});

function deletcheck(id){
	if(confirm("确定要删除吗?")){   			
		$("#file"+id).parent().remove();
	}
}


var applianceId;
var skuId;
jQuery(function(){ 
	// 注意：不要读取缓存
	jQuery.ajaxSetup({
		cache : false
	});
	
});

//保存记录
function saveOrUpdate()
{
 	document.dataForm.submit();
 	$("#divDialog2").window('close');
}

//删除图片
function deletePic(pictureId){
 if (pictureId){
     $.messager.confirm('提示','确定要删除行记录吗？',function(r){
         if (r){
         		var url='${rootPath}/appliance/deletePicId?pictureId=' + pictureId;
         		$('#dataForm1').form('load', url);
         }
     });
 } else {
	   $.messager.alert('提示', "删除失败");
		return;
	}
 
}

//删除图片
// function deletePic(pictureId){
//     if (pictureId){
//         $.messager.confirm('提示','确定要删除行记录吗？',function(r){
//             if (r){
//                 $.post('${rootPath}/appliance/deletePicById',{pictureId:pictureId},function(data){
                	
//                 	if(data.result == 'true' || data.result == true){
//                 		document.postForm.submit();
// 					}else{
// 						$.messager.alert("提示", "角色删除失败 ！");
// 					}                    	
//                 });
//             }
//         });
//     } else {
//  	   $.messager.alert('提示', "请选择你要操作的记录", 'info');
// 			return;
// 		}
// }
 
//返回父页面  
// function goBack(flag){
// 	parent.returnParent(flag);
// }
</script>

</body>
</html>
