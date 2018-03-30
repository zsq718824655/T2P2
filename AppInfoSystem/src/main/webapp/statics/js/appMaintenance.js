












$(function(){
	
	
		
		var twoJ=$(".twoType");
		
		
	$(".oneType").on(
			"change",function(){
				threeJ.html("");
				twoJ.html("");
		//alert($(this).val());
				if($(this).val()==0){
					twoJ.html("");
				}else{
				$.ajax({
					type:"GET",//请求类型
					url:"getAllTwo",//请求的url
					data:{parentId:$(this).val()},
					dataType:"json",//ajax接口（请求url）返回的数据类型
					success:function(data){//data：返回数据（json对象）
						if(data != null){
							twoJ.html("");
							
							var options = "<option value=\"0\">请选择</option>";
							for(var i = 0; i < data.length; i++){
								//alert(data[i].id);
								//alert(data[i].roleName);
								options += "<option value=\""+data[i].id+"\">"+data[i].categoryname+"</option>";
							}
							twoJ.html(options);
						}
					}
				
				});
				
			
				}
				
				
				
			}		

			)
		
		
			
			var threeJ=$(".threeType");
			
		$(".twoType").on(
			"change",function(){
				
				if($(this).val()==0){
					threeJ.html("");
				}else{
				
		//alert($(this).val());
				$.ajax({
					type:"GET",//请求类型
					url:"getAllTwo",//请求的url
					data:{parentId:$(this).val()},
					dataType:"json",//ajax接口（请求url）返回的数据类型
					success:function(data){//data：返回数据（json对象）
						if(data != null){
							
							threeJ.html("");
							var options = "<option value=\"0\">请选择</option>";
							for(var i = 0; i < data.length; i++){
								//alert(data[i].id);
								//alert(data[i].roleName);
								options += "<option value=\""+data[i].id+"\">"+data[i].categoryname+"</option>";
							}
							threeJ.html(options);
						}
					}
				
				});
				
				}
				
				
				
				
			}		

			)
			
			
		
	
			
			
		
	});

//修改app
function editApp(appid,status,statuName){
	
	if(status==1||status==3){//可以修改
		
		 window.location.href="toUpdateApp?appId="+appid;
	}else{
		alert("app状态为["+statuName+"]不能修改");
	}
	
}

//保存并提交
function saveCommint(){
	//修改状态
	$(".appStatusEdit").val(1);
	//获得表单
	$("#editFormAPP").submit();
}

//修改的保存
function EditSave() {
	//修改状态
	$(".appStatusEdit").val(1);
	$("#editFormAPP").submit();
}

//保存

function saveApps() {
	
	if(apkViladate){
		
		$("#saveAPPforms").submit();
		
	}else{
		alert("apk名字已经被用!");
		$("#saveAPPforms").submit(
				function()
				{
					return false;
				}
		);
	}
	
}

//点击删除时候
function dletPic(appid){
	
	var flagTrue=confirm("确定要删除这个图片吗?");
	if(flagTrue){
		//移除图片
		
		$(".picdivdel").empty();
		//数据库总清空该图片路径
		$.ajax({
			type:"GET",//请求类型
			url:"deletePicPath",//请求的url
			data:{appId:appid},
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）
				
				}
			}
		
		);
		
		
		$(".picdivdel").append('<input type="file"  name="logolocpathPic"   required="required">');
	}
	
}


//去增加app页面
$(".addAPPView").on("click",function(){
	
	 window.location.href="toaddAppInfoView";
	 
});

//验证是否通过
var apkViladate=false;

//对apk的验证
$(".apkAscViladate").on("blur",function(){
	
	var apkVal=$(this).val();
	$.ajax({
		type:"GET",//请求类型
		url:"apkNameValidate",//请求的url
		data:{apkName:apkVal},
		dataType:"json",//ajax接口（请求url）返回的数据类型
		success:function(data){//data：返回数据（json对象）
			if(data.flag=="true"){
				$(".apkNameLable").html(data.flaginfo);
				apkViladate=true;
			}else{
				$(".apkNameLable").html("<font color='red'>"+data.flaginfo+"</font>");
				apkViladate=false;
			}
			
			}
		}
	
	);
	
})

//修改版本
function updateVersion(status,statusName,isversion,appid){
	if(isversion==null|| isversion==""){
		alert("你还没有添加版本了,去添加");
	}
	else if(status==1|| status==3){
		
		 window.location.href="toupdateVersionView?appid="+appid;
	}else {
		alert("状态为["+statusName+"],不能修改");
	}
}

//apk文件的删除
function dletAPKfileName(versionId){
	
	var flagTrue=confirm("确定要删除这个应用吗?");
	if(flagTrue){
		//移除图片
		
		$(".apkfilelabelDel").empty();
		//数据库总清空该图片路径
		$.ajax({
			type:"GET",//请求类型
			url:"deleteaplFile",//请求的url
			data:{versionId:versionId},
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）
				
				}
			}
		
		);
		
		
		$(".apkfilelabelDel").append('<input type="file"  name="apkFileUp"   required="required">');
	}
	
	
}


function editsaveApps(){
	
}


//上架
function upLine(statu,appids,indexs){
	if(statu=="审核通过"){
		$.ajax({
			type:"GET",//请求类型
			url:"upLine",//请求的url
			data:{statu:4,appid:appids},
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）
				if(data.issuc=="true"){
					/*$(this).parent().parent().parent().parent().prev().prev().prev().html("55");*/	
				
					$(".statu_"+indexs).html("<font color='green'>已上架</font>");
				}else{
					alert("上架失败");
				}
				
				}
			}
		
		);
	}else{
		alert("该软件为["+statu+"],不能上架");
	}
}

//下架
function downLine(statu,appids,indexs){
	
	if(statu=="已上架"){
		
		$.ajax({
			type:"GET",//请求类型
			url:"upLine",//请求的url
			data:{statu:5,appid:appids},
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）
				if(data.issuc=="true"){
					/*$(this).parent().parent().parent().parent().prev().prev().prev().html("55");*/	
				
					$(".statu_"+indexs).html("<font color='red'>已下架</font>");
				}else{
					alert("上架失败");
				}
				}
			}
		
		);
	}else{
		alert("该软件为["+statu+"],不能进行下架操作");
		
	}
}
