<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<title>新生报到管理</title>
<meta name="decorator" content="default" />
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="/em/static/js/reset.css">
<link rel="stylesheet" href="/em/static/js/editstyle.css">

 
<script>
	var index = 0;

	$(document).ready(
			function() {
				f();
				CamSDKOCX2.InitCameraLib();
				StartVideo2();

				var $div_btn = $(".s-btn");
				$div_btn
						.click(function() {

							cleanXSDJXX();
                           CamSDKOCX2.CloseDev();
                           CamSDKOCX2.UnInitCameraLib();
							$(this).addClass("active").siblings().removeClass(
									"active");
							index = $div_btn.index(this);
							$("div.content-box>.o-information>.photo")
									.eq(index).show().siblings().hide();
							if (index == 1) {
							  
								f1();
								//$("#cxb").select2();
								
							}
							;
							if (index == 2) {
								f2();
								
							}
							;
							if (index == 3) {
								f3();
								
							}
							;
							if (index == 0) {
								f();

							}
							;
							$("div.body-box>.photo-body").eq(index).show()
									.siblings().hide();
							
							CamSDKOCX2.InitCameraLib();
							StartVideo();
							StartVideo2();
						});
			});

	function f() {

		$("#c3").empty();
		$("#c4").empty();
		$("#c5").empty();
		$("#c6").empty();
		$("#c2").empty();
		$("#c1").empty();

		$("#cc")
				.html(
						"<OBJECT id='CamSDKOCX2' style='MARGIN-LEFT:5px;MARGIN-RIGHT:5px; WIDTH: 96%; HEIGHT:100%' classid='clsid:556DBC8A-FE4A-4DA7-A82E-3926C8D4AC41'><SPAN STYLE='color: red'>ActiveX 控件装入失败! -- 请检查浏览器的安全设置。CamSDKOCX</SPAN></OBJECT>")

		//CamSDKOCX2.InitCameraLib();
		//StartVideo();
		//StartVideo2();
	}

	function f1() {
		$("#c3").empty();
		$("#c4").empty();
		$("#c5").empty();
		$("#c6").empty();
		$("#cc").empty();
		$("#c1")
				.html(
						"<OBJECT id='CamSDKOCX2' style='MARGIN-LEFT:5px;MARGIN-RIGHT:5px; WIDTH: 96%; HEIGHT:100%' classid='clsid:556DBC8A-FE4A-4DA7-A82E-3926C8D4AC41'><SPAN STYLE='color: red'>ActiveX 控件装入失败! -- 请检查浏览器的安全设置。CamSDKOCX</SPAN></OBJECT>")

		$("#c2")
				.html(
						"<OBJECT id='CamSDKOCX1' style='MARGIN-LEFT:5px;MARGIN-RIGHT:5px; WIDTH: 96%; HEIGHT:100%' classid='clsid:556DBC8A-FE4A-4DA7-A82E-3926C8D4AC41'><SPAN STYLE='color: red'>ActiveX 控件装入失败! -- 请检查浏览器的安全设置。CamSDKOCX</SPAN></OBJECT>")

		//CamSDKOCX1.InitCameraLib();
		//StartVideo();
		//StartVideo2();
	}

	function f2() {
		$("#c1").empty();
		$("#c2").empty();
		$("#c5").empty();
		$("#c6").empty();
		$("#cc").empty();
		$("#c3")
				.html(
						"<OBJECT id='CamSDKOCX2' style='MARGIN-LEFT:5px;MARGIN-RIGHT:5px; WIDTH: 96%; HEIGHT:100%'  classid='clsid:556DBC8A-FE4A-4DA7-A82E-3926C8D4AC41'><SPAN STYLE='color: red'>ActiveX 控件装入失败! -- 请检查浏览器的安全设置。CamSDKOCX</SPAN></OBJECT>")

		$("#c4")
				.html(
						"<OBJECT id='CamSDKOCX1' style='MARGIN-LEFT:5px;MARGIN-RIGHT:5px; WIDTH: 96%; HEIGHT:100%'  classid='clsid:556DBC8A-FE4A-4DA7-A82E-3926C8D4AC41'><SPAN STYLE='color: red'>ActiveX 控件装入失败! -- 请检查浏览器的安全设置。CamSDKOCX</SPAN></OBJECT>")

		//CamSDKOCX1.InitCameraLib();
		//StartVideo();
		//StartVideo2();
	}
	function f3() {
		$("#c1").empty();
		$("#c2").empty();
		$("#c3").empty();
		$("#c4").empty();
		$("#cc").empty();
		$("#c5")
				.html(
						"<OBJECT id='CamSDKOCX2' style='MARGIN-LEFT:5px;MARGIN-RIGHT:5px; WIDTH: 96%; HEIGHT:100%'  classid='clsid:556DBC8A-FE4A-4DA7-A82E-3926C8D4AC41'><SPAN STYLE='color: red'>ActiveX 控件装入失败! -- 请检查浏览器的安全设置。CamSDKOCX</SPAN></OBJECT>")

		$("#c6")
				.html(
						"<OBJECT id='CamSDKOCX1' style='MARGIN-LEFT:5px;MARGIN-RIGHT:5px; WIDTH: 96%; HEIGHT:100%'  classid='clsid:556DBC8A-FE4A-4DA7-A82E-3926C8D4AC41'><SPAN STYLE='color: red'>ActiveX 控件装入失败! -- 请检查浏览器的安全设置。CamSDKOCX</SPAN></OBJECT>")

		//CamSDKOCX1.InitCameraLib();
		//StartVideo();
		//StartVideo2();
	}
</script>

<script type="text/javascript">
	$(window).load(function() {
		var s = $("#xxx").val();
		if (s == "1") {
			$("#xxx").val("男");
		} else {
			$("#xxx").val("女");
		}
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {

	});
	function page(n, s) {
		$("#pageNo").val(n);
		$("#pageSize").val(s);
		$("#searchForm").submit();
		return false;
	}
</script>
<script type="text/javascript">
	$(document).ready(
			function() {
				//$("#name").focus();

				$("#inputForm1")
						.validate(
								{
									submitHandler : function(form) {
									     var isTrue = onchange();
	                                     if (isTrue) {
											loading('正在提交，请稍等...');
											form.submit();
										}
									},
									errorContainer : "#messageBox",
									errorPlacement : function(error, element) {
										$("#messageBox").text("输入有误，请先更正。");
										if (element.is(":checkbox")
												|| element.is(":radio")
												|| element.parent().is(
														".input-append")) {
											error.appendTo(element.parent()
													.parent());
										} else {
											error.insertAfter(element);
											 //element.html("必填项！");
										}
									}
								});
				$("#inputForm2")
						.validate(
								{
									submitHandler : function(form) {
										 var isTrue = onchange1();
	                                     if (isTrue) {
											loading('正在提交，请稍等...');
											form.submit();
										}
									},
									errorContainer : "#messageBox",
									errorPlacement : function(error, element) {
										$("#messageBox").text("输入有误，请先更正。");
										if (element.is(":checkbox")
												|| element.is(":radio")
												|| element.parent().is(
														".input-append")) {
											error.appendTo(element.parent()
													.parent());
										} else {
											error.insertAfter(element);
										}
									}
								});
				$("#inputForm3")
						.validate(
								{
									submitHandler : function(form) {
										 var isTrue = onchange2();
	                                     if (isTrue) {
											loading('正在提交，请稍等...');
											form.submit();
										}
									},
									errorContainer : "#messageBox",
									errorPlacement : function(error, element) {
										$("#messageBox").text("输入有误，请先更正。");
										if (element.is(":checkbox")
												|| element.is(":radio")
												|| element.parent().is(
														".input-append")) {
											error.appendTo(element.parent()
													.parent());
										} else {
											error.insertAfter(element);
										}
									}
								});
				$("#inputForm4")
						.validate(
								{
									submitHandler : function(form) {
										 var isTrue = onchange3();
	                                     if (isTrue) {
											loading('正在提交，请稍等...');
											form.submit();
										}
									},
									errorContainer : "#messageBox",
									errorPlacement : function(error, element) {
										$("#messageBox").text("输入有误，请先更正。");
										if (element.is(":checkbox")
												|| element.is(":radio")
												|| element.parent().is(
														".input-append")) {
											error.appendTo(element.parent()
													.parent());
										} else {
											error.insertAfter(element);
										}
									}
								});
				/* zhuanYeInit();
				//initSex(); */
			});

                 //===========================表单验证==============================
                 function onchange() {
		         var isTrue1 = byName();
		         var isTrue2 = byID();
		         var isTrue3 =byYears();
		         return isTrue1&&isTrue2&&isTrue3;
	             }
                 //验证姓名
                   function byName(){
                   var xxx = $("#rxm").val();
		           var re = /^[\u4E00-\u9FA5]{2,8}$/;
		            if(xxx!=null&&xxx!=""){
		            if (!re.test(xxx)) {
			         alert("您的真实姓名必须是2~8位的中文！");
			         //$("#xmfont").insertAfter("src","/em/static/js/unchecked.gif");
			       return false;
		               }
		            return true;
		               }
                   }
                   function onblurid(sfzjhVal){
		         	
                   }
                   //验证身份证号
                    function byID(){
                    var sfzjhVal = $("#rsfzjh").val();
		             if (sfzjhVal != null && sfzjhVal != "") {
			          var isT = IdCardValidate(sfzjhVal);
			      if (!isT) {
				          validTxt("rsfzjh", "&nbsp;");
				        return false
			           }
		             }
		             if(sfzjhVal != null && sfzjhVal != ""){
		                   if($("#ID1").val()==null||$("#ID1").val()==""){
		                   	
		                   		loadXSDJXX(sfzjhVal);
		                   }
		                  }
		                 return true;
                   }
                   //验证生日
                    function byYears(){
                      
	                var sfzjhVal = $("#rsfzjh").val();
		             var birthday = $("#rcsrq").val();
		            var a = sfzjhVal.substring(6, 14);
		            if (birthday != null && birthday != "") {
		                var y=birthday.substring(0,4);
		                var m=birthday.substring(5,7);
		                var d=birthday.substring(8,10);
		                var rq=y+m+d;
			             if (a != rq) {
				         alert("出生日期与身份证对应日期不符！");
				return false;
			}
		}

		return true;
                   }
                   
                   
                    function onchange1() {
		         var isTrue1 = byName1();
		         var isTrue2 = byID1();
		         var isTrue3 =byYears1();
		         return isTrue1&&isTrue2&&isTrue3;
	             }
                   
                   //=======
                    function byName1(){
                     var xxx = $("#cxm").val();
		           var re = /^[\u4E00-\u9FA5]{2,8}$/;
		            if(xxx!=null&&xxx!=""){
		            if (!re.test(xxx)) {
			         alert("您的真实姓名必须是2~8位的中文！");
			       return false;
		               }
		            return true;
		               }
                   }
                    //=======
                    function byID1(){
                    var sfzjhVal = $("#csfzjh").val();
		             if (sfzjhVal != null && sfzjhVal != "") {
			          var isT = IdCardValidate(sfzjhVal);
			          if (!isT) {
				          validTxt("csfzjh", "&nbsp;");
				        return false
			              }
		                 }
		               if(sfzjhVal != null && sfzjhVal != ""){
		                   if($("#ID1").val()==null||$("#ID1").val()==""){
		                   	
		                   		loadXSDJXX(sfzjhVal);
		                   }
		                  }
		                 return true;
                      }
                    //=======
                    function byYears1(){
                      
	                var sfzjhVal = $("#csfzjh").val();
		             var birthday = $("#ccsrq").val();
		            var a = sfzjhVal.substring(6, 14);
		            if (birthday != null && birthday != "") {
		                var y=birthday.substring(0,4);
		                var m=birthday.substring(5,7);
		                var d=birthday.substring(8,10);
		                var rq=y+m+d;
			             if (a != rq) {
				         alert("出生日期与身份证对应日期不符！");
				          return false;
			            }
		                      }

		                return true;
                   }
                   
                   
                    function onchange2() {
		         var isTrue1 = byName2();
		         var isTrue2 = byID2();
		         var isTrue3 =byYears2();
		         return isTrue1&&isTrue2&&isTrue3;
	             }
                    //=======
                    function byName2(){
                     var xxx = $("#bxm").val();
		           var re = /^[\u4E00-\u9FA5]{2,8}$/;
		            if(xxx!=null&&xxx!=""){
		            if (!re.test(xxx)) {
			         alert("您的真实姓名必须是2~8位的中文！");
			       return false;
		               }
		            return true;
		               }
                   }
                    //=======
                    function byID2(){
                    var sfzjhVal = $("#bsfzjh").val();
		             if (sfzjhVal != null && sfzjhVal != "") {
			          var isT = IdCardValidate(sfzjhVal);
			      if (!isT) {
				          validTxt("bsfzjh", "&nbsp;");
				        return false
			           }
		             }
		         if(sfzjhVal != null && sfzjhVal != ""){
		                   if($("#ID1").val()==null||$("#ID1").val()==""){
		                   	
		                   		loadXSDJXX(sfzjhVal);
		                   }
		                  }
		                 return true;
                   }
                    //=======
                    function byYears2(){
                      
	                var sfzjhVal = $("#bsfzjh").val();
		             var birthday = $("#bcsrq").val();
		            var a = sfzjhVal.substring(6, 14);
		            if (birthday != null && birthday != "") {
		                var y=birthday.substring(0,4);
		                var m=birthday.substring(5,7);
		                var d=birthday.substring(8,10);
		                var rq=y+m+d;
			             if (a != rq) {
				        alert("出生日期与身份证对应日期不符！");
				return false;
			}
		}

		return true;
                   }
                   
                   
                    function onchange3() {
		         var isTrue1 = byName3();
		         var isTrue2 = byID3();
		         var isTrue3 =byYears3();
		         return isTrue1&&isTrue2&&isTrue3;
	             }
                    //=======
                    function byName3(){
                     var xxx = $("#qxm").val();
		           var re = /^[\u4E00-\u9FA5]{2,8}$/;
		            if(xxx!=null&&xxx!=""){
		            if (!re.test(xxx)) {
			         alert("您的真实姓名必须是2~8位的中文！");
			       return false;
		               }
		            return true;
		               }
                   }
                    //=======
                    function byID3(){
                    var sfzjhVal = $("#qsfzjh").val();
		             if (sfzjhVal != null && sfzjhVal != "") {
			          var isT = IdCardValidate(sfzjhVal);
			      if (!isT) {
				          validTxt("qsfzjh", "&nbsp;");
				        return false
			           }
		             }
		         if(sfzjhVal != null && sfzjhVal != ""){
		                   if($("#ID1").val()==null||$("#ID1").val()==""){
		                   	
		                   		loadXSDJXX(sfzjhVal);
		                   }
		                  }
		                 return true;
                   }
                    //=======
                    function byYears3(){
                      
	                var sfzjhVal = $("#qsfzjh").val();
		             var birthday = $("#qcsrq").val();
		            var a = sfzjhVal.substring(6, 14);
		            if (birthday != null && birthday != "") {
		                var y=birthday.substring(0,4);
		                var m=birthday.substring(5,7);
		                var d=birthday.substring(8,10);
		                var rq=y+m+d;
			             if (a != rq) {
				        alert("出生日期与身份证对应日期不符！");
				return false;
			}
		}

		return true;
                   }




	$(document).ready(function() {

		var id = "${zsdj.zylx.id}";

		var zyid = "${zsdj.zy.id}";
		var flag = "1";

		if (id != null && id != "") {
			$("#zyByLx").empty();
			$.getJSON("${ctx}/zsdj/zsdj/findZyByLxIdAndZyId", {
				id : "${zsdj.zylx.id}",
				zyId : "${zsdj.zy.id}",
				flag : flag
			}, function(result) {
				alert(result);
				if (result != null && result != "") {
					$("#zyByLx").html(result.html);
					//$("#zyId").attr("style","width:195px;");
					$("#zyId").attr("onChange", "tiaoJianCx();");
					$("#zyId").select2({
						formatResult : format,
						formatSelection : format,
						escapeMarkup : function(m) {
							return m;
						}
					});
				}
			});
		}
	});

	//选择专业
	function lxChange(info) {
		$("#zyid1").empty();
		$("#zyid1").select2("destroy");
	}
	//选择专业1
	function lxChange1(info) {
		if (info != null && info != "") {
		jQuery.ajax({
			type : "POST",
			url : "${ctx}/zsdj/zsdj/findZysByLxIdList",
			data : {
				id : info
			},
			dataType : 'json',
			async : false,
			success : function(result) {
				if (result != null && result != "") {
					
					var ht = result.html;
					
					ht = ht.replace("zy.id", "zylxId");
					$("#zyByLx1").html(ht);
					$("#zyid").attr("style", "width:273px;");
					$("#zyid").attr("onchange",
							"findXueZhiById(this,'${ctx}','xzLab','xzId')");
							
					$("#zyid").attr("onchange","zyChange1(this.value);");
					$("#zyid").select2();
					
					//$("#zyjc").html(ht);
					// onchange="zyChange1(this.value)"
				}
			}
		});
			

		}
	}
	
		//显示专业简称
	function zyChange1(ida) {
	    
		if (ida != null && ida != "") {
		jQuery.ajax({
			type : "POST",
			url : "${ctx}/zsdj/zsdj/findZysByzyIdList",
			data : {
				id : ida
			},
			dataType : 'json',
			async : false,
			success : function(result) {
				if (result != null && result != "") {
					var ht = result.html;
					
					$("#zyinfo").html(ht);
					
				}
			}
		});
			

		}
	}
	//选择专业2
	function lxChange2(info) {
		if (info != null && info != "") {
			jQuery.ajax({
			type : "POST",
			url : "${ctx}/zsdj/zsdj/findZysByLxIdList",
			data : {
				id : info
			},
			dataType : 'json',
			async : false,
			success : function(result) {
				if (result != null && result != "") {
					var ht = result.html;
					ht = ht.replace("zyid", "zyid2");
					ht = ht.replace("zy.id", "zylxId");
					$("#zyByLx2").html(ht);
					$("#zyid2").attr("style", "width:273px;");
					$("#zyid2").attr("onchange",
							"findXueZhiById(this,'${ctx}','xzLab','xzId')");
							$("#zyid2").attr("onchange","zyChange2(this.value);");
					$("#zyid2").select2();
				}
			}
		});
			

		}
	}
	
		//显示专业简称
	function zyChange2(ida) {
	    
		if (ida != null && ida != "") {
		jQuery.ajax({
			type : "POST",
			url : "${ctx}/zsdj/zsdj/findZysByzyIdList",
			data : {
				id : ida
			},
			dataType : 'json',
			async : false,
			success : function(result) {
				if (result != null && result != "") {
					var ht = result.html;
					
					$("#zyinfo1").html(ht);
					
				}
			}
		});
			

		}
	}
	//选择专业3
	function lxChange3(info) {
		if (info != null && info != "") {
		jQuery.ajax({
			type : "POST",
			url : "${ctx}/zsdj/zsdj/findZysByLxIdList",
			data : {
				id : info
			},
			dataType : 'json',
			async : false,
			success : function(result) {
				if (result != null && result != "") {
					var ht = result.html;
					ht = ht.replace("zyid", "zyid3");
					ht = ht.replace("zy.id", "zylxId");
					$("#zyByLx3").html(ht);
					$("#zyid3").attr("style", "width:273px;");
					$("#zyid3").attr("onchange",
							"findXueZhiById(this,'${ctx}','xzLab','xzId')");
							$("#zyid3").attr("onchange","zyChange3(this.value);");
					$("#zyid3").select2();
				}
			}
		});

		}
	}
		//显示专业简称
	function zyChange3(ida) {
	    
		if (ida != null && ida != "") {
		jQuery.ajax({
			type : "POST",
			url : "${ctx}/zsdj/zsdj/findZysByzyIdList",
			data : {
				id : ida
			},
			dataType : 'json',
			async : false,
			success : function(result) {
				if (result != null && result != "") {
					var ht = result.html;
					
					$("#zyinfo2").html(ht);
					
				}
			}
		});
			

		}
	}
	//选择专业4
	function lxChange4(info) {
		if (info != null && info != "") {
		jQuery.ajax({
			type : "POST",
			url : "${ctx}/zsdj/zsdj/findZysByLxIdList",
			data : {
				id : info
			},
			dataType : 'json',
			async : false,
			success : function(result) {
				if (result != null && result != "") {
					var ht = result.html;
					ht = ht.replace("zyid", "zyid4");
					ht = ht.replace("zy.id", "zylxId");
					$("#zyByLx4").html(ht);
					$("#zyid4").attr("style", "width:273px;");
					$("#zyid4").attr("onchange",
							"findXueZhiById(this,'${ctx}','xzLab','xzId')");
							$("#zyid4").attr("onchange","zyChange4(this.value);");
					$("#zyid4").select2();
				}
			}
		});
		}
	}
		//显示专业简称
	function zyChange4(ida) {
	    
		if (ida != null && ida != "") {
		jQuery.ajax({
			type : "POST",
			url : "${ctx}/zsdj/zsdj/findZysByzyIdList",
			data : {
				id : ida
			},
			dataType : 'json',
			async : false,
			success : function(result) {
				if (result != null && result != "") {
					var ht = result.html;
					
					$("#zyinfo3").html(ht);
					
				}
			}
		});
			

		}
	}
</script>
<!-- ------------------------------身份证读卡器功能------------------------------- -->
<script type="text/javascript">
	function readcard() {
		//alert("读卡器。。。");
		if(connect()==-1){
			return;
		};//连接
		
		getStatus();//获取状态
		readCert1();//读取信息
		disconnect();//断开连接

	}
	//测试连接是否成功
	function connect() {
		//clearForm();
		var ret = CertCtl.connect();
		//alert(ret);
		//document.all['ret'].innerHTML = ret;
		ret = JStrToObj(ret);
		DisplayInfo(ret);
		return ret.resultFlag;
	}

	function JStrToObj(str) {
		return eval("(" + str + ")");
	}
	function DisplayInfo(ret) {
       if(ret.resultFlag!=0){
         alert(ret.errorMsg);
       }
	}
	//获取状态
	function getStatus() {
		//clearForm();
		var ret = CertCtl.getStatus();
		//alert(ret);
		//document.all['ret'].innerHTML = ret;
		ret = JStrToObj(ret);
		DisplayInfo(ret);
		return;
	}

	function disconnect() {
		//clearForm();
		var ret = CertCtl.disconnect();
		//document.all['ret'].innerHTML = ret;
		ret = JStrToObj(ret);
		DisplayInfo(ret);
		return;
	}

	//读取信息
	function readCert1() {
		//clearForm();
		var ret = CertCtl.readCert();
		//alert(ret+"                          ....");
		//document.all['ret'].innerHTML = ret;
		ret = JStrToObj(ret);
		if (ret.resultFlag == -1) {
			DisplayInfo(ret);
		} else {
			fillForm(ret);
		}
	}

	function ReadIDCard() {
		var ret = JStrToObj(CertCtl.connect());

		if (ret.resultFlag == -1) {
			clearForm();
			DisplayInfo(ret);
			return;
		}

		ret = JStrToObj(CertCtl.readCert());
		if (ret.resultFlag == -1) {
			clearForm();
			DisplayInfo(ret);
		} else {
			fillForm(ret);
		}

		ret = JStrToObj(CertCtl.disconnect());
		if (ret.resultFlag == -1) {
			DisplayInfo(ret);
			return;
		}
	}

	//清楚form
	function clearForm() {
		document.all['rxm'].value = '';
		document.all['xbm'].value = '';
		document.all['rcsrq'].value = '';
		document.all['rsfzjh'].value = '';
		document.all['rjtzz'].value = '';

	}

	//填充数据
	function fillForm(ret) {
		DisplayInfo(ret);
		var pName = ret.resultContent.partyName;//姓名
		var pSex = ret.resultContent.gender;//性别
		var pNation = ret.resultContent.nation; //民族
		var pBorn = ret.resultContent.bornDay;//生日
		var pAddress = ret.resultContent.certAddress;//地址
		var pCardNo = ret.resultContent.certNumber;//身份证号码
		var pPolice = ret.resultContent.certOrg;//签发机关
		var pActivityLFrom = ret.resultContent.effDate; //起始时间
		var pActivityLTo = ret.resultContent.expDate; //结束时间

		//根据身份证号加载学生信息
		loadXSDJXX(pCardNo);

		$("#rxm").val(pName);
		$("#rsfzjh").val(pCardNo);
		var year = pBorn.substring(0, 4);
		var mm = pBorn.substring(4, 6);
		var dd = pBorn.substring(6, 8);
		var births = year + "-" + mm + "-" + dd;
		$("#rcsrq").val(births);
		$("#rjtzz").val(pAddress);
		$("#rqfjg").val(pPolice);
		$("#rstarttime").val(pActivityLFrom);
		$("#rovertime").val(pActivityLTo);
		var p = pNation + "族";
		//alert(p);
		var title = document.getElementById("rnation");
		for ( var i = 0; i < title.options.length; i++) {
			if (title.options[i].innerHTML == p) {
				//alert(title.options[i].value);
				$("#rnation").select2("destroy");
				$("#rnation").find(
						"option[value='" + title.options[i].value + "']").attr(
						"selected", true);
				$("#rnation").select2();
				break;
			}
		}

		var sexHtml = "<select id='xbm2' name='xbm' style='width:100px;'>";
		if (pSex == "1" || pSex == 1) {
			sexHtml += "<option value='1' selected='selected'>男</option>";
			sexHtml += "<option value='2' >女</option>";
		} else {
			sexHtml += "<option value='2' selected='selected'>女</option>";
			sexHtml += "<option value='1' >男</option>";
		}
		sexHtml += "</select><span class='help-inline'><font color='red'>*</font> </span>";
		$("#rxbmP").html(sexHtml);
		$("#xbm2").select2("destroy");
		$("#xbm2").select2();
		
	
		
				//=====默认选中身份证件类型
				$("#sfzID").select2("destroy");
				$("#sfzID").find(
						"option[value='1']").attr(
						"selected", true);
				$("#sfzID").select2();
				
			
			
	
		//身份证照片
		document.all['pic2'].src = "data:image/jpg;base64,"
				+ ret.resultContent.cardHimg;

	}
</script>
<!-- -------------------------------------------身份证OCR识别---------------------------------------------- -->
<script type="text/javascript">
	var mainDevCount = -1;
	var subDevCount = -1;
	var mainIndex = 0;
	var subindex = 1;
	var strFile;
	var nFileCount = 0;
	var strFolder = "D:\\CameraTest";
	var newFile;
	var nFileCount = 0;
	function AddDevice1() {
		mainDevCount = 0;
		var total = CamSDKOCX1.GetDevCount();
		//alert(total);
		for ( var i = 0; i < total; i++) {
			var devtype = CamSDKOCX1.GetDevType(i);
			if (devtype == 0) {
				var DevEle = CamSDKOCX1.GetDevName(i);

				Reso.DeviceName.options[mainDevCount].text = DevEle;
				mainDevCount++;
			}
		}
		mainIndex = 0;
		subindex = mainDevCount;
		Reso.DeviceName.options[0].selected = true;

	}
	function AddDevice2() {
		mainDevCount = 0;
		var total = CamSDKOCX2.GetDevCount();
		//alert(total);
		for ( var i = 0; i < total; i++) {
			var devtype = CamSDKOCX2.GetDevType(i);
			if (devtype == 0) {
				var DevEle = CamSDKOCX2.GetDevName(i);

				Reso.DeviceName.options[mainDevCount].text = DevEle;
				mainDevCount++;
			}
		}
		mainIndex = 0;
		subindex = mainDevCount;
		Reso.DeviceName.options[0].selected = true;

	}
	/* function ChangeDevice()
	 {	var obj=document.getElementById("DeviceName");
	 index=obj.selectedIndex;
	 CamSDKOCX1.openDev(index,0,Width,Height);
	 AddResolution2Comb(Reso);
	 SetResolution();
	 } */
	function ChangeDevice2() {
		var obj = document.getElementById("DeviceName2");
		var index = obj.selectedIndex;
		index = index + mainDevCount;
		CamSDKOCX2.OpenDev(index, 0, Width, Height);
	}
	function SetResolution() { //2016年8月29日10:16:08
		var obj = document.getElementById("Resolution");
		var index = obj.selectedIndex;
		var width = CamSDKOCX1.GetResolutionWidth(index);
		var height = CamSDKOCX1.GetResolutionHeight(index);
		CamSDKOCX1.SetResolution(width, height);
	}
	function SetResolutionsub() {
		var obj = document.getElementById("Resolutionsub");
		var index = obj.selectedIndex;
		var width = CamSDKOCX2.GetResolutionWidth(index);
		var height = CamSDKOCX2.GetResolutionHeight(index);
		CamSDKOCX2.SetResolution(width, height);
	}
	function StartVideo() {
		// CamSDKOCX1.CloseDev();

		// AddDevice1();
		if(index==1||index==2||index==3){
			CamSDKOCX1.OpenDev(0, 0, 0, 0);
		}

		//AddResolution2Comb(Reso);
	}
	function StartVideo2() {
		// CamSDKOCX2.InitCameraLib();
		//alert(b);
		// AddDevice2();

		CamSDKOCX2.OpenDev(1, 0, 0, 0);
		//alert (a);
		//alert(subindex);
		//AddResolution2Combsub(Resosub);
	}
	function SetState() {
		var obj = document.getElementById("autocrop");
		var index = obj.selectedIndex;
		if (index < 3) {
			CamSDKOCX1.SetAutoCrop(index);
		} else {
			CamSDKOCX1.SetCusCrop(1);
		}
	}
	function AddResolution2Comb(f) {
		var total = CamSDKOCX1.GetResolutionCount();
		for ( var i = 0; i < total; i++) {
			var width = CamSDKOCX1.GetResolutionWidth(i);
			var height = CamSDKOCX1.GetResolutionHeight(i);
			var resolution = width + "X" + height;
			f.Resolution.options[i].text = resolution;
		}
		f.Resolution.options[0].selected = true;
	}
	function AddResolution2Combsub(f) {
		var total = CamSDKOCX2.GetResolutionCount();
		for ( var i = 0; i < total; i++) {
			var width = CamSDKOCX2.GetResolutionWidth(i);
			var height = CamSDKOCX2.GetResolutionHeight(i);
			var resolutionsub = width + "X" + height;
			f.Resolutionsub.options[i].text = resolutionsub;
		}
		f.Resolutionsub.options[0].selected = true;
	}
	function Denoise() {
		var obj = document.getElementById("denoise");
		var statcuscrop = obj.checked;
		CamSDKOCX1.SetDenoise(statcuscrop);
	}
	function watermark() {
	}

	//-----------------------------------------副摄像头采集照片--------------------

	function AutoCapture() {
		var s = "";
		if (index == 0) {

			s = $("#rsfzjh").val();

			//$("#sss").attr("src",files);
		}
		;
		if (index == 1) {
			s = $("#csfzjh").val();
			//$("#imgface").attr("src",files);
		}
		;
		if (index == 2) {
			s = $("#bsfzjh").val();
			//$("#ss1").attr("src",files);
		}
		;
		if (index == 3) {
			s = $("#qsfzjh").val();
			//$("#ss2").attr("src",files);
		}
		;

		if (s == null || s == "") {
			alert("请先输入信息！");
			return;
		}
		;

		//创建路径
		var objFSO = new ActiveXObject("Scripting.FileSystemObject");
		if (!objFSO.FolderExists(strFolder)) {
			var strFolderName = objFSO.CreateFolder(strFolder);
		}
		newFile = strFolder + "\\" + s + ".jpg";
		var files = CamSDKOCX2.CaptureImage(newFile);

		var p = CamSDKOCX2.EncodeBase64(newFile);
         	 $("#sss").attr("src", "/em/static/js/xszp.png");
         	 $("#pic").attr("src", "/em/static/js/xszp.png");
             $("#imgface").attr("src", "/em/static/js/xszp.png");
             $("#pic1").attr("src", "/em/static/js/xszp.png");
			 $("#picc").attr("src", "/em/static/js/xszp.png");
			 $("#pic4").attr("src", "/em/static/js/xszp.png");
	 		 $("#mm").attr("src", "/em/static/js/xszp.png");
	 		 $("#pic3").attr("src", "/em/static/js/xszp.png");
		if (index == 0) {
		    
			$("#sss").attr("src", files);
			$("#pic").attr("src", files);
			$("#pic").css({
				"width" : "120px",
				"height" : "160px"
			});
             
		}
		if (index == 1) {

			$("#imgface").attr("src", files);
			$("#pic1").attr("src", files);
			$("#pic1").css({
				"width" : "120px",
				"height" : "160px"
			});

		}
		if (index == 2) {
			$("#picc").attr("src", files);
			$("#pic4").attr("src", files);
			$("#pic4").css({
				"width" : "120px",
				"height" : "160px"
			});
		}
		if (index == 3) {
			$("#mm").attr("src", files);
			$("#pic3").attr("src", files);
			$("#pic3").css({
				"width" : "120px",
				"height" : "160px"
			});
		}

		//上传图片==============================
		getImg(p, s);

	}

	function ColorStyle() {
		var obj = document.getElementById("colorstyle");
		var index = obj.selectedIndex;
		CamSDKOCX1.SetColorStyle(index);
	}
	function SetEffect() {
		var obj = document.getElementById("adjust");
		var index = obj.selectedIndex;
		CamSDKOCX1.SetAdjust(index);
	}
	function Combineimage() {
		CamSDKOCX1.CombineImage();
	}
	function EncodeBase64() {
		alert(CamSDKOCX1.EncodeBase64(newFile));
	}

	function ocrreconize() {
	
	           //默认身份证
                $("#csfzjlx").select2("destroy");
				$("#csfzjlx").find(
						"option[value='1']").attr(
						"selected", true);
				$("#csfzjlx").select2();
				//默认户口簿
				$("#ccsfzjlx").select2("destroy");
				$("#ccsfzjlx").find(
						"option[value='11']").attr(
						"selected", true);
				$("#ccsfzjlx").select2();
				//默认其他证件
				$("#qsfzjlx").select2("destroy");
				$("#qsfzjlx").find(
						"option[value='12']").attr(
						"selected", true);
				$("#qsfzjlx").select2();
	       
	
	            //默认其他证件=======================================
				
	         
	
	
		clearForms();
		CamSDKOCX1.UnInitIDCardOCR();
		var initocr = CamSDKOCX1.InitIDCardOCR();
		// alert(initocr+"a...");
		if (initocr != 0) {
			alert("ocr初始化失败！");
			return;
		} else {
            var fso = new ActiveXObject("Scripting.FileSystemObject");//获取对象
	        var pathfile="D:\\FilePhoto";//文件路径
		    if (!fso.FolderExists(pathfile)) {//如果目录不存在，则创建一个目录
			var strFolderName = fso.CreateFolder(pathfile);//文件夹名称
		     }
		    var date=new Date();
		    var y=date.getFullYear();
		   
		    var mm=date.getMonth()+1;
		    
		    var d=date.getDate();
		    var h=date.getHours();
		    var m=date.getMinutes();
		    var s=date.getSeconds();
		    var time=y+"年"+mm+"月"+d+"日"+h+"时"+m+"分"+s+"秒";
		   // alert(time+"      ........");
			var ocrtestpath = pathfile+"\\"+time+".jpg";
			
			CamSDKOCX1.SetAutoCrop(1);
			CamSDKOCX1.CaptureImage(ocrtestpath);
			var ocrresult = CamSDKOCX1.RecongnizeIDCardOCR(ocrtestpath,
					pathfile+"\\"+time+"Head.jpg");
			

			if (ocrresult.length < 1) {
				alert("未识别到信息，请手动输入！");
			     $("#smpic").attr("src","/em/static/js/xszp.png");
			     
			} else {
				if(index==1){
				
				var str = ocrresult.split("|");//定义一个 字符串
				$("#cxm").val(str[0]);
				var xb = str[1];
				var sexHtml = "<select id='xbm1' name='xbm' style='width:100px;'>";
				if (xb == "男") {
					sexHtml += "<option value='1' selected='selected'>男</option>";
					sexHtml += "<option value='2' >女</option>";
				} else {
					sexHtml += "<option value='2' selected='selected'>女</option>";
					sexHtml += "<option value='1' >男</option>";
				}
				sexHtml += "</select><span class='help-inline'><font color='red'>*</font> </span>";
				$("#cxb").html(sexHtml);
				$("#xbm1").select2("destroy");
				$("#xbm1").select2();
				var n = str[2] + "族";
				var title = document.getElementById("cmz");
				for ( var i = 0; i < title.options.length; i++) {
					if (title.options[i].innerHTML == n) {
						
						$("#cmz").select2("destroy");
						$("#cmz").find(
								"option[value='" + title.options[i].value
										+ "']").attr("selected", true);
						$("#cmz").select2();
						break;
					}
				}

				$("#ccsrq").val(str[3]);
				$("#cjtzz").val(str[4]);
				$("#csfzjh").val(str[5]);
				loadXSDJXX(str[5]);
				$("#smpic").css({"width":"120px","height":"160px"});
				document.all['smpic'].src = pathfile+"\\"+time+"Head.jpg";
				
				//alert(pathfile+"\\"+time+"Head.jpg");
				}
				
				
                if(index==2){
                
				var str = ocrresult.split("|");//定义一个 字符串
				$("#bxm").val(str[0]);
				var xb = str[1];
				
				var sexHtml = "<select id='xbm3' name='xbm' style='width:100px;'>";
				if (xb == "男") {
					sexHtml += "<option value='1' selected='selected'>男</option>";
					sexHtml += "<option value='2' >女</option>";
				} else {
					sexHtml += "<option value='2' selected='selected'>女</option>";
					sexHtml += "<option value='1' >男</option>";
				}
				sexHtml += "</select><span class='help-inline'><font color='red'>*</font> </span>";
				$("#bxbm").html(sexHtml);
				//alert(xb);
				$("#xbm3").select2("destroy");
				$("#xbm3").select2();
				
				
				var n = str[2] + "族";
				var title = document.getElementById("ccmz");
				for ( var i = 0; i < title.options.length; i++) {
					if (title.options[i].innerHTML == n) {
						
						$("#ccmz").select2("destroy");
						$("#ccmz").find(
								"option[value='" + title.options[i].value
										+ "']").attr("selected", true);
						$("#ccmz").select2();
						break;
					}
				}

				$("#bcsrq").val(str[3]);
				$("#bjtzz").val(str[4]);
				$("#bsfzjh").val(str[5]);
				loadXSDJXX(str[5]);
				//$("#spic").css({"width":"120px","height":"160px"});
				//document.all['spic'].src = pathfile+"\\"+time+"Head.jpg";
                }
                
                
                if(index==3){
                
				var str = ocrresult.split("|");//定义一个 字符串
				$("#qxm").val(str[0]);
				var xb = str[1];
				var sexHtml = "<select id='xbm2' name='xbm' style='width:100px;'>";
				if (xb == "男") {
					sexHtml += "<option value='1' selected='selected'>男</option>";
					sexHtml += "<option value='2' >女</option>";
				} else {
					sexHtml += "<option value='2' selected='selected'>女</option>";
					sexHtml += "<option value='1' >男</option>";
				}
				sexHtml += "</select><span class='help-inline'><font color='red'>*</font> </span>";
				$("#qxbm").html(sexHtml);
				$("#xbm2").select2("destroy");
				$("#xbm2").select2();
				var n = str[2] + "族";
				var title = document.getElementById("crnation");
				for ( var i = 0; i < title.options.length; i++) {
					if (title.options[i].innerHTML == n) {
						
						$("#crnation").select2("destroy");
						$("#crnation").find(
								"option[value='" + title.options[i].value
										+ "']").attr("selected", true);
						$("#crnation").select2();
						break;
					}
				}


				$("#qcsrq").val(str[3]);
				$("#qjtzz").val(str[4]);
				$("#qsfzjh").val(str[5]);
				loadXSDJXX(str[5]);
				//$("#spic").css({"width":"120px","height":"160px"});
				//document.all['spic'].src = pathfile+"\\"+time+"Head.jpg";
                }
                
                
                
                
			}
		}
	}

   
      


	//清楚form
	function clearForms() {
		document.all['cxm'].value = '';
		document.all['xbm'].value = '';
		document.all['ccsrq'].value = '';
		document.all['cjtzz'].value = '';
		document.all['csfzjh'].value = '';
		

	}
	/* setTimeout("StartVideo()", 100);
	setTimeout("StartVideo2()", 100); */
	SetState.checked = true;

	//-----------------------------------------------身份证OCR识别结束--------------------------------------------
</script>

<!-- -----------------------------------根据身份证号码查询数据，加载到左侧新生登记信息页面------------------------------------- -->
<script type="text/javascript">
	function loadXSDJXX(personID) {
		$.post("${ctx}/zsdj/zsdj/getZsdjBySfzh", {
			sfzjh : personID
		}, function(data) {
			if (data.zsdj.sfzjh == null || data.zsdj.sfzjh == "") {
				alert("该生未登记，请先去登记！");
				return;
			}
			$("#saveZsdj").val(data.zsdj.id);
			$("#name1").val(data.zsdj.xm);
			$("#sex1").val(data.zsdj.xbname);
			$("#nation1").val(data.zsdj.nationNmae);
			$("#idType1").val(data.zsdj.zjlxName);
			$("#ID1").val(data.zsdj.sfzjh);
			$("#birthday1").val(data.zsdj.csrq.substring(0, 10));
			$("#addr1").val(data.zsdj.jtzz);
			$("#zsjh1").val(data.zsdj.zsjh.jhmc);
			$("#grade1").val(data.zsdj.nj.nf);
			$("#term1").val(data.zsdj.xnxq.xnmc);
			$("#entryYear1").val(data.zsdj.nj.nf);
			$("#xdzy1").val(data.zsdj.zy.zymc);
			$("#xdzylx1").val(data.zsdj.zylx.lxmc);
			$("#xz1").val(data.zsdj.xz);
			$("#tel1").val(data.zsdj.lxdh);
			$("#remark1").val(data.zsdj.remark);
			
			

		if(index==0){
						
		  var title = document.getElementById("zylxId1");
	
		  for ( var i = 0; i < title.options.length; i++) {
			if (title.options[i].innerHTML == data.zsdj.zylx.lxmc) {
				//alert(title.options[i].value);
				$("#zylxId1").select2("destroy");
				$("#zylxId1").find(
						"option[value='" + title.options[i].value + "']").attr(
						"selected", true);
				$("#zylxId1").select2();
				break;
			}
		}  
			lxChange1(data.zsdj.zylx.id);
		
		/* $("#zyid1").select2("destroy");
		$("#zyid1").append("<option value='"+data.zsdj.zy.id+"' selected='selected'>"+data.zsdj.zy.zymc+"</option>");
		$("#zyid1").select2(); */
		
		 var title = document.getElementById("zyid");
		  for ( var i = 0; i < title.options.length; i++) {
			if (title.options[i].innerHTML == data.zsdj.zy.zymc) {
				//alert(title.options[i].value);
				$("#zyid").select2("destroy");
				$("#zyid").find(
						"option[value='" + title.options[i].value + "']").attr(
						"selected", true);
				//$("#zyid").attr("onchange","zyChange1(this.value)");
				$("#zyid").select2();
				zyChange1(title.options[i].value);
				break;
			}
			}
			
			
			//$("#zyjc").val(data.zsdj.zy.zyjc);
		  
		}  
		if(index==1){
								
		  var title = document.getElementById("zylxId2");
	
		  for ( var i = 0; i < title.options.length; i++) {
			if (title.options[i].innerHTML == data.zsdj.zylx.lxmc) {
				//alert(title.options[i].value);
				$("#zylxId2").select2("destroy");
				$("#zylxId2").find(
						"option[value='" + title.options[i].value + "']").attr(
						"selected", true);
				$("#zylxId2").select2();
				break;
			}
		}  
			lxChange2(data.zsdj.zylx.id);
		
		/* $("#zyid1").select2("destroy");
		$("#zyid1").append("<option value='"+data.zsdj.zy.id+"' selected='selected'>"+data.zsdj.zy.zymc+"</option>");
		$("#zyid1").select2(); */
		
		 var title = document.getElementById("zyid2");
		  for ( var i = 0; i < title.options.length; i++) {
			if (title.options[i].innerHTML == data.zsdj.zy.zymc) {
				//alert(title.options[i].value);
				$("#zyid2").select2("destroy");
				$("#zyid2").find(
						"option[value='" + title.options[i].value + "']").attr(
						"selected", true);
				$("#zyid2").select2();
				zyChange2(title.options[i].value);
				break;
			}
			}  
		}  
		if(index==2){
								
		  var title = document.getElementById("zylxId3");
	
		  for ( var i = 0; i < title.options.length; i++) {
			if (title.options[i].innerHTML == data.zsdj.zylx.lxmc) {
				//alert(title.options[i].value);
				$("#zylxId3").select2("destroy");
				$("#zylxId3").find(
						"option[value='" + title.options[i].value + "']").attr(
						"selected", true);
				$("#zylxId3").select2();
				break;
			}
		}  
			lxChange3(data.zsdj.zylx.id);
		
		/* $("#zyid1").select2("destroy");
		$("#zyid1").append("<option value='"+data.zsdj.zy.id+"' selected='selected'>"+data.zsdj.zy.zymc+"</option>");
		$("#zyid1").select2(); */
		
		 var title = document.getElementById("zyid3");
		  for ( var i = 0; i < title.options.length; i++) {
			if (title.options[i].innerHTML == data.zsdj.zy.zymc) {
				//alert(title.options[i].value);
				$("#zyid3").select2("destroy");
				$("#zyid3").find(
						"option[value='" + title.options[i].value + "']").attr(
						"selected", true);
				$("#zyid3").select2();
				zyChange3(title.options[i].value);
				break;
			}
			}  
		}  
		if(index==3){
								
		  var title = document.getElementById("zylxId4");
	
		  for ( var i = 0; i < title.options.length; i++) {
			if (title.options[i].innerHTML == data.zsdj.zylx.lxmc) {
				//alert(title.options[i].value);
				$("#zylxId4").select2("destroy");
				$("#zylxId4").find(
						"option[value='" + title.options[i].value + "']").attr(
						"selected", true);
				$("#zylxId4").select2();
				break;
			}
		}  
			lxChange4(data.zsdj.zylx.id);
		
		/* $("#zyid1").select2("destroy");
		$("#zyid1").append("<option value='"+data.zsdj.zy.id+"' selected='selected'>"+data.zsdj.zy.zymc+"</option>");
		$("#zyid1").select2(); */
		
		 var title = document.getElementById("zyid4");
		  for ( var i = 0; i < title.options.length; i++) {
			if (title.options[i].innerHTML == data.zsdj.zy.zymc) {
				//alert(title.options[i].value);
				$("#zyid4").select2("destroy");
				$("#zyid4").find(
						"option[value='" + title.options[i].value + "']").attr(
						"selected", true);
				$("#zyid4").select2();
				zyChange4(title.options[i].value);
				break;
			}
			}  
		}
		 
			
			
		}, "json");
	}
	function cleanXSDJXX() {
		$("#name1").val("");
		$("#sex1").val("");
		$("#nation1").val("");
		$("#idType1").val("");
		$("#ID1").val("");
		$("#birthday1").val("");
		$("#addr1").val("");
		$("#zsjh1").val("");
		$("#grade1").val("");
		$("#term1").val("");
		$("#entryYear1").val("");
		$("#xdzy1").val("");
		$("#xdzylx1").val("");
		$("#xz1").val("");
		$("#tel1").val("");
		$("#remark1").val("");
	}
</script>


<!-- --------------------------提交不同的表单---------------------------- -->
<script type="text/javascript">
	function savesubmit() {

		if($("#saveZsdj").val()==null||$("#saveZsdj").val()==""){
			alert("请先登记该人员！");
			return;
		}
		
		if (index == 1) {
			$("#inputForm2").attr("action",
					"${ctx}/xsbd/bdJbxx/save?saveZsdj=" + $("#saveZsdj").val());
			$("#inputForm2").submit();
		} else if (index == 2) {
			$("#inputForm3").attr("action",
					"${ctx}/xsbd/bdJbxx/save?saveZsdj=" + $("#saveZsdj").val());
			$("#inputForm3").submit();
		} else if (index == 3) {
			$("#inputForm4").attr("action",
					"${ctx}/xsbd/bdJbxx/save?saveZsdj=" + $("#saveZsdj").val());
			$("#inputForm4").submit();
		} else {

			$("#inputForm1").attr("action",
					"${ctx}/xsbd/bdJbxx/save?saveZsdj=" + $("#saveZsdj").val());
			$("#inputForm1").submit();
		}

	}
</script>


<script type="text/javascript">
	//上传图片====================================
	function getImg(imgStr, sfzjh) {
		jQuery.ajax({
			type : "POST",
			url : "${ctx}/xsbd/bdJbxx/generateImage",
			data : {
				imgStr : imgStr,
				sfzjh : sfzjh
			},
			dataType : 'json',
			async : false,
			success : function(result) {
				console.log(result);
			}
		});
	}
	
	

</script>

 

</head>



<body onload="StartVideo();StartVideo2();"
	onunload="CamSDKOCX1.UnInitCameraLib();">

	<object type="application/cert-reader" id="CertCtl" width=0 height=0>
	</object>

	<div class="body-box">
		<div class="o-photo_body photo-body">
			<div class="photo-frame">
				<div class="photo">
					<p class="photo-font">拍照照片</p>
					<span class="pic"> <img src="/em/static/js/xszp.png" alt=""
						id="sss"> </span>
					<!-- <a href="#" class="pic-btn">采集照片</a> -->
					<input class="pic-btn" type="button" value="采集照片 "
						onClick="AutoCapture();" name="subCapture">
				</div>
				<div class="camera" id="cc"></div>
				<div class="ID-card">
					<p class="card-font">身份证照片</p>
					<span class="card-pic"> <img src="/em/static/js/xszp.png"
						id="pic2" alt="" width="120" height="160"> </span>
				</div>
				<div class="id-card-camera"></div>
			</div>
			<div class="clearfix"></div>
		</div>




		<div class="s-photo_body photo-body">
			<div class="photo-frame">
				<div class="photo">
					<p class="photo-font">拍照照片</p>
					<span class="pic"> <img id="imgface"
						src="/em/static/js/xszp.png" alt=""> </span>
					<!-- <a href="#" class="pic-btn">采集照片</a> -->
					<input class="pic-btn" type="button" value="采集照片 "
						onClick="AutoCapture();" name="subCapture">
				</div>
				<!-- <div>
				<input type = "button" value = " 刷新副头" onClick = "StartVideo2();" name = "start">
				</div> -->
				<div class="camera" id="c1">
					<!-- <OBJECT id="CamSDKOCX2"
						style="MARGIN-LEFT:5px; WIDTH: 42.4%; HEIGHT:100%" 
						classid="clsid:556DBC8A-FE4A-4DA7-A82E-3926C8D4AC41"> 
				 </OBJECT> -->
				</div>
				<div class="ID-card" style="line-height: 80px;">
					<p class="card-font">身份证照片</p>
					<span class="card-pic"> <img src="/em/static/js/xszp.png"
						id="smpic" alt="" width="120px" height="160px"> </span>
					<button class="pic-btn" style="width: 85%" onClick="ocrreconize();">扫描</button>

				</div>
				<div class="id-card-camera" id="c2">



				</div>

			</div>
			<div class="clearfix"></div>
		</div>




		<div class="t-photo_body photo-body">
			<div class="photo-frame">
				<div class="photo">
					<p class="photo-font">拍照照片</p>
					<span class="pic"> <img src="/em/static/js/xszp.png" alt=""
						id="picc"> </span>
					<!-- <a href="#" class="pic-btn">采集照片</a> -->
					<input class="pic-btn" type="button" value="采集照片 "
						onClick="AutoCapture();" name="subCapture">
				</div>

				<div class="camera" id="c3">
			
				</div>
	
				<div class="hukobo">
					<div class="id-card-camera huko" id="c4">
					
					</div>
				
					<button class="huko-btn" onClick="ocrreconize();">扫描</button>
				</div>

			</div>
			<div class="clearfix"></div>
		</div>




		<div class="f-photo_body photo-body">
			<div class="photo-frame">
				<div class="photo">
					<p class="photo-font">拍照照片</p>
					<span class="pic"> <img src="/em/static/js/xszp.png" alt=""
						id="mm"> </span>
			
					<input class="pic-btn" type="button" value="采集照片 "
						onClick="AutoCapture();" name="subCapture">
				</div>
			
				<div class="camera" id="c5">
					
				</div>
				
				<div class="qita">
					<div class="id-card-camera qitaj" id="c6">
						
					</div>
				
					<button class="qita-btn" onClick="ocrreconize();">扫描</button>
				</div>
			
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div style="display: none">
		<form name="Reso">
			<select style="display: none;" name="DeviceName" id="DeviceName"
				onchange="ChangeDevice()">
				<option value="0"></option>
				<option value="1"></option>
				<option value="2"></option>
				<option value="3"></option>
				<option value="4"></option>
			</select> 分辨率: <select name="Resolutionsub" id="Resolutionsub"
				onchange="SetResolutionsub()">
				<option value="0">开启视频后获取分辨率</option>
				<option value="1"></option>
				<option value="2"></option>
				<option value="3"></option>
				<option value="4"></option>
				<option value="5"></option>
				<option value="6"></option>
				<option value="7"></option>
				<option value="8"></option>
				<option value="9"></option>
			</select> 图片格式: <select name="FileType" id="FileType" onchange="SetFileType()">
				<option value="0">bmp</option>
				<option value="1">jpg</option>
				<option value="2">tif</option>
				<option value="3">png</option>
			</select> 图片颜色: <select name="colorstyle" id="colorstyle"
				onchange="ColorStyle()">
				<option value="0">彩色</option>
				<option value="1">灰度</option>
				<option value="2">黑白</option>
			</select> <select style="display: none;" name="DeviceName2" id="DeviceName2"
				onchange="ChangeDevice2()">
				<option value="0"></option>
				<option value="1"></option>
				<option value="2"></option>
				<option value="3"></option>
				<option value="4"></option>
			</select>
		</form>
		<select name="autocrop" id="autocrop" onchange="SetState()">
			<option value="0">不裁切</option>
			<option value="1">单图裁切</option>
			<option value="2">多图裁切</option>
			<option value="3">手动裁切</option>
		</select> <input type="hidden" id="PhotoSavePath" value="d:\\studentPhoto" /> <input
			type="button" value=" 刷新主头" onClick="StartVideo();" name="start">
		<input type="button" value=" 刷新副头" onClick="StartVideo2();"
			name="start"> <input type="button" value="OCR识别身份证"
			onClick="ocrreconize();" name="ocrreconize">
	</div>



	<div class="btn btn_">
		<input type="button" class="s-btn active" value="身份证识别"
			onclick="readcard();"> <input type="button" class="s-btn"
			value="身份证/复印件扫描"> <input type="button" class="s-btn"
			value="户口簿/复印件扫描"> <input type="button" class="s-btn"
			value="其他证件扫描">
	</div>
	<div class="clearfix"></div>

	<div class="content-box">
		<div class="f-information">
			<!-- -------------------------------------------新生登记信息------------------------------------------------- -->
			<div class="left-information">
				<h1 class="title">新生登记信息</h1>

				<div class="group">
					<label class="gr-mc">姓名：</label> <input class="gr-input" type="text" id="name1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">性别：</label> <input class="gr-input" type="text" id="sex1"
					readonly="readonly">
				</div>

				<div class="group">
					<label class="gr-mc">民族：</label> <input class="gr-input" type="text" id="nation1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">身份证件类型：</label> <input class="gr-input" type="text" id="idType1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">身份证号码：</label> <input class="gr-input" type="text" id="ID1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">出生年月：</label> <input class="gr-input" type="text" id="birthday1"
						value="<fmt:formatDate value="${bdJbxx.csrq}" pattern="yyyy-MM-dd"/>"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">家庭住址：</label> <input class="gr-input" type="text" id="addr1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">招生计划：</label> <input class="gr-input" type="text" id="zsjh1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">年级：</label> <input class="gr-input" type="text" id="grade1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">学年学期：</label> <input class="gr-input" type="text" id="term1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">入学年份：</label> <input class="gr-input" type="text" id="entryYear1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">专业类别：</label> <input class="gr-input" class="gr-input" type="text" id="xdzylx1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">专业名称：</label> <input class="gr-input" type="text" id="xdzy1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">学制：</label> <input class="gr-input" type="text" id="xz1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">联系电话：</label> <input class="gr-input" type="text" id="tel1"
						readonly="readonly">
				</div>
				<div class="group">
					<label class="gr-mc">备注：</label> <input class="gr-input" type="text" id="remark1"
						readonly="readonly">
				</div>

			</div>
		</div>
		<!-- -------------------------------------身份证读卡器识别数据-------------------------------- -->
		<div class="o-information ">
			<div class="right-information photo">
				<h1 class="title">身份证读卡器识别数据</h1>
				<form:form id="inputForm1" modelAttribute="bdJbxx"
					action="${ctx}/xsbd/bdJbxx/save" method="post"
					class="form-horizontal" enctype="multipart/form-data">
					<form:hidden path="id" />
					<sys:message content="${message}" />
					<input type="hidden" id="saveZsdj" />
					<div class="r-group">
						<label class="gr-mc">姓名：</label>
						<div class="group">
							<form:input path="xm" id="rxm" htmlEscape="false" maxlength="64" onblur="byName()"
								class="input-xlarge required gr-r-mc" />
							<span class="help-inline"><font color="red" id="xmfont">*</font> </span>
						</div>
					</div>
					<div class="r-group">
						<label  class="gr-mc">性别：</label>
						<div class="group" id="rxbmP">
							<form:select path="xbm" id="xbm" class="input-xlarge required gr-r-mc">
								<form:option value="" label="" />
								<form:options items="${fns:getDictList('sex')}"
									itemLabel="label" itemValue="value" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">民族：</label>
						<div class="group">
							<form:select path="nation" id="rnation"
								class="input-xlarge  required" style="width:75%;">
								<form:option value="" label="" />
								<form:options items="${fns:getDictList('nation')}"
									itemLabel="label" itemValue="value" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>


					<div class="r-group">
						<label class="gr-mc">身份证件类型：</label>
						<div class="group">
							<form:select path="sfzjlx" class="input-xlarge  required" style="width:75%;" id="sfzID" >
								<form:option value="" label="" />
								<form:options items="${fns:getDictList('sfzjlx')}"
									itemLabel="label" itemValue="value" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>

					<div class="right-group">
						<label class="gr-mc">身份证号码：</label>
						<div class="mc-input">
							<form:input path="sfzjh" id="rsfzjh" htmlEscape="false" onblur="byID()"
								maxlength="18" class="input-xlarge required requ" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">出生年月：</label>
						<div class="mc-input">
							<input name="csrq" type="text" id="rcsrq" readonly="readonly"
								maxlength="20" class="input-medium Wdate required requ"
								value="<fmt:formatDate value="${bdJbxx.csrq}" pattern="yyyy-MM-dd"/>"
								onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<%-- <div class="group">
						<label>出生年月：</label>
						<div class="group">
							<form:input path="csrq" id="rcsrq" htmlEscape="false" maxlength="64" onblur="byYears()"
								class="input-xlarge required" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div> --%>
					<div class="right-group">
						<label class="gr-mc">家庭住址：</label>
						<div class="mc-input">
							<form:input path="jtzz" id="rjtzz" htmlEscape="false"
								maxlength="255" class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">签发机关：</label>
						<div class="mc-input">
							<form:input path="qfjg" id="rqfjg" htmlEscape="false"
								maxlength="50" class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">身份证件起始时间：</label>
						<div class="mc-input">
							<input name="starttime" id="rstarttime" type="text"
								readonly="readonly" maxlength="20" class="input-medium Wdate requ"
								value="<fmt:formatDate value="${bdJbxx.starttime}" pattern="yyyy-MM-dd"/>"
								onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">身份证件结束时间：</label>
						<div class="mc-input">
							<input name="overtime" id="rovertime" type="text"
								readonly="readonly" maxlength="20" class="input-medium Wdate requ"
								value="<fmt:formatDate value="${bdJbxx.overtime}" pattern="yyyy-MM-dd"/>"
								onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});" />
						</div>
					</div>


					<div class="right-group">
						<label class="gr-mc">专业类别：</label>
						<div class="mc-input">
							<form:select path="zyId.id" id="zylxId1"
								onchange="lxChange1(this.value)" class="input-medium requ">
								<form:option value="" label="请选择" />
								<form:options items="${fns:getZylxList()}" itemLabel="lxmc"
									itemValue="id" htmlEscape="false" />
							</form:select>
							<!-- <span class="help-inline"><font color="red">*</font> </span> -->
						</div>

					

                         <input type="hidden" value="1" name="datafrom"/>
                         
						
					</div>
					<div class="right-group">
						<label class="gr-mc">专业名称：</label>
						<div class="mc-input" id="zyByLx1">
							<select name="zylxId" class="input-medium requ" id="zyid1">
								<option value="" label="请选择" />
							</select>
							<!-- <span class="help-inline"><font color="red">*</font> </span> -->
						</div>
						
						
						</div>
						<div class="right-group">
						    <label class="gr-mc">专业简称：</label>
							<div class="mc-input" id="zyinfo">
							    <input name="zyjc" class="input-xlarge requ" id="zyjc" type="text" readonly="readonly">
								
							    </input>
						    </div>
						</div>
					

					<div class="xj-pic">
						<img src="/em/static/js/xszp.png" alt="" width="120" height="160"
							id="pic">

						<!--  <label>学生照片：</label>
				<div class="group">
				<img src="/em/static/js/xszp.png" alt="" width="120" height="160">
					<input type="file" onchange="selectImgChange(this)" id="file1" name="filename" value=""/>
				</div> -->

					</div>

				</form:form>
			</div>

			<!-- ------------------------------------身份证/复印件扫描---------------------------------- -->
			<div class="clearfix"></div>
			<div class="right-information photo" style=" display:none;">
				<h1 class="title">身份证/复印件扫描</h1>

				<form:form id="inputForm2" modelAttribute="bdJbxx"
					action="${ctx}/xsbd/bdJbxx/save" method="post"
					class="form-horizontal">
					<form:hidden path="id" />
					<sys:message content="${message}" />
					<div class="r-group">
						<label class="gr-mc">姓名：</label>
						<div class="group">
							<form:input path="xm" htmlEscape="false" maxlength="64" id="cxm" onblur="byName1()"
								class="input-xlarge required gr-r-mc" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">性别：</label>
						<div class="group" id="cxb">
							<form:select path="xbm" class="input-xlarge required gr-r-mc">
								<form:option value="" label="" />
								<form:options items="${fns:getDictList('sex')}"
									itemLabel="label" itemValue="value" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">民族：</label>
						<div class="group">
							<%-- <form:input path="nation" htmlEscape="false" maxlength="64" id="cmz"
					class="input-xlarge required" /> --%>
							<form:select path="nation" id="cmz"
								class="input-xlarge  required" style="width:75%;">
								<form:option value="" label="" />
								<form:options items="${fns:getDictList('nation')}"
									itemLabel="label" itemValue="value" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">身份证件类型：</label>
						<div class="group">
							<form:select path="sfzjlx" class="input-xlarge required gr-r-mc"
								id="csfzjlx">
								<form:option value="" label="" />
								<form:options items="${fns:getDictList('sfzjlx')}"
									itemLabel="label" itemValue="value" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">身份证号码：</label>
						<div class="mc-input">
							<form:input path="sfzjh" htmlEscape="false" maxlength="18" onblur="byID1()"
								id="csfzjh" class="input-xlarge required requ" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">出生年月：</label>
						<div class="mc-input">
							<input name="csrq" type="text" readonly="readonly" maxlength="20"
								id="ccsrq" class="input-medium Wdate required requ"
								value="<fmt:formatDate value="${bdJbxx.csrq}" pattern="yyyy-MM-dd"/>"
								onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div> 
					<%-- <div class="group">
						<label>出生年月：</label>
						<div class="group">
							<form:input path="csrq" id="ccsrq" htmlEscape="false" maxlength="64" onblur="byYears1()"
								class="input-xlarge required" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div> --%>
					<div class="right-group">
						<label class="gr-mc">家庭住址：</label>
						<div class="mc-input">
							<form:input path="jtzz" htmlEscape="false" maxlength="255"
								id="cjtzz" class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group ">
						<label class="gr-mc">签发机关：</label>
						<div class="mc-input">
							<form:input path="qfjg" htmlEscape="false" maxlength="50"
								id="cqfjg" class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">身份证件起始时间：</label>
						<div class="mc-input">
							<input name="starttime" type="text" readonly="readonly"
								id="cstarttime" maxlength="20" class="input-medium Wdate requ"
								value="<fmt:formatDate value="${bdJbxx.starttime}" pattern="yyyy-MM-dd"/>"
								onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">身份证件结束时间：</label>
						<div class="mc-input">
							<input name="overtime" type="text" readonly="readonly"
								id="covertime" maxlength="20" class="input-medium Wdate requ"
								value="<fmt:formatDate value="${bdJbxx.overtime}" pattern="yyyy-MM-dd"/>"
								onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">专业类别：</label>
						<div class="mc-input">
							<form:select path="zyId.id" id="zylxId2"
								onchange="lxChange2(this.value)" class="input-medium required requ">
								<form:option value="" label="请选择" />
								<form:options items="${fns:getZylxList()}" itemLabel="lxmc"
									itemValue="id" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>

						

					
						    <input type="hidden" value="2" name="datafrom"/>
						<div class="xj-pic">
							<img src="/em/static/js/xszp.png" alt="" width="120" height="160"
								id="pic1">
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">专业名称：</label>
						<div class="mc-input" id="zyByLx2">
							<select name="zylxId" class="input-medium requ" id="zyid1">
								<option value="" label="请选择" />
							</select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
						
						
						</div>
						<div class="right-group">
						    <label class="gr-mc">专业简称：</label>
							<div class="mc-input" id="zyinfo1">
							    <input name="zyjc" class="input-xlarge requ" id="zyjc1" type="text" readonly="readonly">
								
							    </input>
						    </div>
						</div>

				</form:form>
			</div>


			<!-- --------------------------------------户口簿/复印件扫描------------------------------------------------ -->
			<div class="right-information photo" style="display:none;">
				<h1 class="title">户口簿/复印件扫描</h1>

				<form:form id="inputForm3" modelAttribute="bdJbxx"
					action="${ctx}/xsbd/bdJbxx/save" method="post"
					class="form-horizontal">
					<form:hidden path="id" />
					<sys:message content="${message}" />
					<div class="r-group">
						<label class="gr-mc">姓名：</label>
						<div class="group">
							<form:input path="xm" htmlEscape="false" maxlength="64" id="bxm" onblur="byName2()"
								class="input-xlarge required gr-r-mc" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">曾用名：</label>
						<div class="group">
							<form:input path="cname" htmlEscape="false" maxlength="64"
								id="bcname" class="input-xlarge gr-r-mc" />
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">户主或与户主关系：</label>
						<div class="group">
							<form:input path="relation" htmlEscape="false" maxlength="64"
								id="crelation" class="input-xlarge gr-r-mc" />
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">性别：</label>
						<div class="group"  id="bxbm">
							<form:select path="xbm" class="input-xlarge required gr-r-mc">
								<form:option value="" label="" />
								<form:options items="${fns:getDictList('sex')}"
									itemLabel="label" itemValue="value" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">民族：</label>
						<div class="group">
							<%-- <form:input path="nation" htmlEscape="false" maxlength="64"
								id="bnation" class="input-xlarge required" /> --%>

							<form:select path="nation" id="ccmz"
								class="input-xlarge  required gr-r-mc" style="width:75%;">
								<form:option value="" label="" />
								<form:options items="${fns:getDictList('nation')}"
									itemLabel="label" itemValue="value" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">出生地：</label>
						<div class="group">
							<form:input path="jtzz" htmlEscape="false" maxlength="255"
								id="bjtzz" class="input-xlarge gr-r-mc" />
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">籍贯：</label>
						<div class="group">
							<form:input path="jg" htmlEscape="false" maxlength="64" id="bjg"
								class="input-xlarge gr-r-mc" />
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">出生日期：</label>
						<div class="group">
							<input name="csrq" type="text" readonly="readonly" maxlength="20"
								id="bcsrq" class="input-medium Wdate required gr-r-mc"
								value="<fmt:formatDate value="${bdJbxx.csrq}" pattern="yyyy-MM-dd"/>"
								onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					
					<div class="right-group">
						<label class="gr-mc">本市（县）其他住址：</label>
						<div class="mc-input">
							<form:input path="otheraddress" htmlEscape="false"
								maxlength="200" id="botheraddress" class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">宗教信仰：</label>
						<div class="mc-input">
							<form:input path="religion" htmlEscape="false" maxlength="200"
								id="breligion" class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">公民身份证件编号：</label>
						<div class="mc-input">
							<form:input path="sfzjh" htmlEscape="false" maxlength="18" onblur="byID2()"
								id="bsfzjh" class="input-xlarge required requ" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<%-- <div class="group">
						<label>出生年月：</label>
						<div class="group">
							<form:input path="csrq" id="bcsrq" htmlEscape="false" maxlength="64" onblur="byYears2()"
								class="input-xlarge required" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div> --%>
					<div class="right-group">
						<label class="gr-mc">身份证件类型：</label>
						<div class="mc-input">
							<form:select path="sfzjlx" class="input-xlarge required requ"
								id="ccsfzjlx">
								<form:option value="" label="" />
								<form:options items="${fns:getDictList('sfzjlx')}"
									itemLabel="label" itemValue="value" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">身高：</label>
						<div class="mc-input">
							<form:input path="sg" htmlEscape="false" maxlength="20" id="bsg"
								class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">血型：</label>
						<div class="mc-input">
							<form:input path="xx" htmlEscape="false" maxlength="20" id="bxx"
								class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">文化程度：</label>
						<div class="mc-input">
							<form:input path="whcd" htmlEscape="false" maxlength="20"
								id="bwhcd" class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">兵役状况：</label>
						<div class="mc-input">
							<form:input path="byzk" htmlEscape="false" maxlength="20"
								id="bbyzk" class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">服务处所：</label>
						<div class="mc-input">
							<form:input path="fwcs" htmlEscape="false" maxlength="100"
								id="bfwcs" class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">职业：</label>
						<div class="mc-input">
							<form:input path="zy" htmlEscape="false" maxlength="50" id="bzy"
								class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">何时由何地迁来本市（县）：</label>
						<div class="mc-input">
							<form:input path="bsx" htmlEscape="false" maxlength="200"
								id="bbsx" class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">何时由何地迁来本址：</label>
						<div class="mc-input">
							<form:input path="bzz" htmlEscape="false" maxlength="200"
								id="bbzz" class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">专业类别：</label>
						<div class="mc-input">
							<form:select path="zyId.id" id="zylxId3"
								onchange="lxChange3(this.value)" class="input-medium required requ">
								<form:option value="" label="请选择" />
								<form:options items="${fns:getZylxList()}" itemLabel="lxmc"
									itemValue="id" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
						    <input type="hidden" value="3" name="datafrom"/>
						<div class="xj-pic">
							<img src="/em/static/js/xszp.png" alt="" width="120" height="160"
								id="pic4">
						</div>
					</div>
					
					<div class="right-group">
					   <label class="gr-mc">专业名称：</label>
						<div class="mc-input" id="zyByLx3">
							<select name="zylxId" class="input-medium requ" id="zyid1">
								<option value="" label="请选择" />
							</select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>	
					<div class="right-group">
						    <label class="gr-mc">专业简称：</label>
							<div class="mc-input" id="zyinfo2">
							    <input name="zyjc" class="input-xlarge requ" id="zyjc2" type="text" readonly="readonly">
								
							    </input>
						    </div>
						</div>
				</form:form>
			</div>
			<!-- ---------------------------------其他证件扫描-------------------------------------- -->
			<div class="right-information photo" style="display:none;">
				<h1 class="title">其他证件扫描</h1>

				<form:form id="inputForm4" modelAttribute="bdJbxx"
					action="${ctx}/xsbd/bdJbxx/save" method="post"
					class="form-horizontal">
					<form:hidden path="id" />
					<sys:message content="${message}" />

					<div class="r-group">
						<label class="gr-mc">姓名：</label>
						<div class="group">
							<form:input path="xm" htmlEscape="false" maxlength="64" id="qxm" onblur="byName3()"
								class="input-xlarge required gr-r-mc" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">性别：</label>
						<div class="group" id="qxbm">
							<form:select path="xbm" class="input-xlarge required gr-r-mc">
								<form:option value="" label="" />
								<form:options items="${fns:getDictList('sex')}"
									itemLabel="label" itemValue="value" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>


					<div class="r-group">
						<label class="gr-mc">民族：</label>
						<div class="group">
							<form:select path="nation" id="crnation"
								class="input-xlarge  required gr-r-mc" style="width:75%;">
								<form:option value="" label="" />
								<form:options items="${fns:getDictList('nation')}"
									itemLabel="label" itemValue="value" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="r-group">
						<label class="gr-mc">身份证件类型：</label>
						<div class="group">
							<form:select path="sfzjlx" class="input-xlarge required gr-r-mc"
								id="qsfzjlx">
								<form:option value="" label="" />
								<form:options items="${fns:getDictList('sfzjlx')}"
									itemLabel="label" itemValue="value" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">身份证号码：</label>
						<div class="mc-input">
							<form:input path="sfzjh" htmlEscape="false" maxlength="18" onblur="byID3()"
								id="qsfzjh" class="input-xlarge required requ" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">出生年月：</label>
						<div class="mc-input">
							<input name="csrq" type="text" readonly="readonly" maxlength="20"
								id="qcsrq" class="input-medium Wdate required requ"
								value="<fmt:formatDate value="${bdJbxx.csrq}" pattern="yyyy-MM-dd"/>"
								onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<%-- <div class="group">
						<label>出生年月：</label>
						<div class="group">
							<form:input path="csrq" id="qcsrq" htmlEscape="false" maxlength="64" onblur="byYears3()"
								class="input-xlarge required" />
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div> --%>
					<div class="right-group">
						<label class="gr-mc">家庭住址：</label>
						<div class="mc-input">
							<form:input path="jtzz" htmlEscape="false" maxlength="255"
								id="qjtzz" class="input-xlarge requ" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">签发机关：</label>
						<div class="mc-input">
							<form:input path="qfjg" htmlEscape="false" maxlength="50"
								id="qqfjg" class="input-xlarge requ" />
						</div>
					</div> 
					<div class="right-group">
						<label class="gr-mc">身份证件起始时间：</label>
						<div class="mc-input">
							<input name="starttime" type="text" readonly="readonly"
								id="qstarttime" maxlength="20" class="input-medium Wdate requ"
								value="<fmt:formatDate value="${bdJbxx.starttime}" pattern="yyyy-MM-dd"/>"
								onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">身份证件结束时间：</label>
						<div class="mc-input">
							<input name="overtime" type="text" readonly="readonly"
								id="qovertime" maxlength="20" class="input-medium Wdate requ"
								value="<fmt:formatDate value="${bdJbxx.overtime}" pattern="yyyy-MM-dd"/>"
								onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});" />
						</div>
					</div>
					<div class="right-group">
						<label class="gr-mc">专业类别：</label>
						<div class="mc-input">
							<form:select path="zyId.id" id="zylxId4"
								onchange="lxChange4(this.value)" class="input-medium required requ">
								<form:option value="" label="请选择" />
								<form:options items="${fns:getZylxList()}" itemLabel="lxmc"
									itemValue="id" htmlEscape="false" />
							</form:select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>

						
                           <input type="hidden" value="4" name="datafrom"/>
						
						<div class="xj-pic">
							<img src="/em/static/js/xszp.png" alt="" width="120" height="160"
								id="pic3">
						</div>
					</div>
					
					<div class="right-group">
					 <label class="gr-mc">专业名称：</label>
						<div class="mc-input" id="zyByLx4">
							<select name="zylxId" class="input-medium requ" id="zyid1">
								<option value="" label="请选择" />
							</select>
							<span class="help-inline"><font color="red">*</font> </span>
						</div>
					</div>
					<div class="right-group">
						    <label class="gr-mc">专业简称：</label>
							<div class="mc-input" id="zyinfo3">
							    <input name="zyjc" class="input-xlarge requ" id="zyjc3" type="text" readonly="readonly">
								
							    </input>
						    </div>
						</div>
				</form:form>
			</div>


			<%-- <div class="form-actions">
			<shiro:hasPermission name="xsbd:bdJbxx:edit">
			<input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="关闭" onclick="closeDialog();"/>
		</div> --%>
		</div>

		<div class="clearfix"></div>
		<div class="information-btn">
			<shiro:hasPermission name="xsbd:bdJbxx:edit">
				<input id="btnSubmit" class="btn btn-primary"
					style=" width:20% !important;" type="button" value="保 存"
					onclick="savesubmit();" />&nbsp;</shiro:hasPermission>
					
		</div>

	</div>
  
</body>
</html>