












$(function(){
	
	/*//app状态
	$.ajax({
		type:"GET",//请求类型
		url:"/user/getrolelist.action",//请求的url
	
		dataType:"json",//ajax接口（请求url）返回的数据类型
		success:function(data){//data：返回数据（json对象）
			if(data != null){
				userRole.html("");
				var options = "<option value=\"0\">请选择</option>";
				for(var i = 0; i < data.length; i++){
					//alert(data[i].id);
					//alert(data[i].roleName);
					options += "<option value=\""+data[i].id+"\">"+data[i].roleName+"</option>";
				}
				userRole.html(options);
			}
		},
		error:function(data){//当访问时候，404，500 等非200的错误状态码
			validateTip(userRole.next(),{"color":"red"},imgNo+" 获取用户角色列表error",false);
		}
	});*/
		
		var twoJ=$(".twoType");
		
		
	$(".oneType").on(
			"change",function(){
				threeJ.html("");
		//alert($(this).val());
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