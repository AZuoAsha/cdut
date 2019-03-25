$(document).ready(function(){
	  $.ajax({
	        type: "get",
	        url: "receive/jsonAjax.do?newsType=5",
//	      data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
	       // data: {"para":1},
	        //cache: false,
	        //async : false,
	        dataType: "json",
	        success: function (data ,textStatus, jqXHR)
	        {
	        	var oj = JSON.parse(data);
		     		var html="";
		      		for(var i=0;i<oj.length;i++){
			      	html=oj[i].newsTittle;
			      	var html2=oj[i].releaseTime;
			      	var txt1=$("#newsCenter ol");
			      	var txt2=$("<a style='color:#5B5B5B;font-size:15px;padding-top:10px' target='_blank'><li></li></a><img src='images/new.gif'><br>").text(html).attr("id","new_title_"+i);
			    	var txt3=$("<span style='float:right;margin-top:-19px;font-size:13.5px;color:#BEBEBE'></span><br>").text(html2)
			      	txt1.append(txt2);
			      	txt1.append(txt3);
		      			var href="receive/findOne.do?id="+oj[i].id;
		      			$('#new_title_'+i).attr("href",href);
		      			 
		      			}
	        },
	        error:function (XMLHttpRequest, textStatus, errorThrown) {      
	            alert("请求失败！");
	        }
	     });

	  $.ajax({
	        type: "get",
	        url: "receive/jsonAjax.do?newsType=6",
//	      data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
	       // data: {"para":1},
	        //cache: false,
	        //async : false,
	        dataType: "json",
	        success: function (data ,textStatus, jqXHR)
	        {
	        	var oj = JSON.parse(data);
		     		var html="";
		      		for(var i=0;i<oj.length;i++){
			      	html=oj[i].newsTittle;
			      	var html2=oj[i].releaseTime;
			      	var txt1=$("#newsCenter2 ol");
			      	var txt2=$("<a style='color:#5B5B5B;font-size:15px;padding-top:10px' target='_blank'><li></li></a><img src='images/new.gif'><br>").text(html).attr("id","new1_title_"+i);
			    	var txt3=$("<span style='float:right;margin-top:-19px;font-size:13.5px;color:#BEBEBE'></span><br>").text(html2)
			      	txt1.append(txt2);
			      	txt1.append(txt3);
		      			var href="receive/findOne.do?id="+oj[i].id;
		      			$('#new1_title_'+i).attr("href",href);
		      			 
		      			}
	        },
	        error:function (XMLHttpRequest, textStatus, errorThrown) {      
	            alert("请求失败！");
	        }
	     });

	  $.ajax({
	        type: "get",
	        url: "receive/jsonAjax.do?newsType=2",
//	      data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
	       // data: {"para":1},
	        //cache: false,
	        //async : false,
	        dataType: "json",
	        success: function (data ,textStatus, jqXHR)
	        {
	        	var oj = JSON.parse(data);
		     		var html="";
		      		for(var i=0;i<oj.length;i++){
			      	html=oj[i].newsTittle;
			      	var html2=oj[i].releaseTime;
			      	var txt1=$("#newsCenter3 ol");
			      	var txt2=$("<a style='color:#5B5B5B;font-size:15px;padding-top:10px' target='_blank'><li></li></a><img src='images/new.gif'><br>").text(html).attr("id","new2_title_"+i);
			    	var txt3=$("<span style='float:right;margin-top:-19px;font-size:13.5px;color:#BEBEBE'></span><br>").text(html2)
			      	txt1.append(txt2);
			      	txt1.append(txt3);
		      			var href="receive/findOne.do?id="+oj[i].id;
		      			$('#new2_title_'+i).attr("href",href);
		      			 
		      			}
	        },
	        error:function (XMLHttpRequest, textStatus, errorThrown) {      
	            alert("请求失败！");
	        }
	     });


	  $.ajax({
	        type: "get",
	        url: "receive/jsonAjax.do?newsType=3",
//	      data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
	       // data: {"para":1},
	        //cache: false,
	        //async : false,
	        dataType: "json",
	        success: function (data ,textStatus, jqXHR)
	        {
	        	var oj = JSON.parse(data);
		     		var html="";
		      		for(var i=0;i<oj.length;i++){
			      	html=oj[i].newsTittle;
			      	var html2=oj[i].releaseTime;
			      	var txt1=$("#newsCenter4 ol");
			      	var txt2=$("<a style='color:#5B5B5B;font-size:15px;padding-top:10px' target='_blank'><li></li></a><img src='images/new.gif'><br>").text(html).attr("id","new3_title_"+i);
			    	var txt3=$("<span style='float:right;margin-top:-19px;font-size:13.5px;color:#BEBEBE'></span><br>").text(html2)
			      	txt1.append(txt2);
			      	txt1.append(txt3);
		      			var href="receive/findOne.do?id="+oj[i].id;
		      			$('#new3_title_'+i).attr("href",href);
		      			 
		      			}
	        },
	        error:function (XMLHttpRequest, textStatus, errorThrown) {      
	            alert("请求失败！");
	        }
	     });
	  

	  $.ajax({
	        type: "get",
	        url: "receive/jsonAjax.do?newsType=4",
//	      data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
	       // data: {"para":1},
	        //cache: false,
	        //async : false,
	        dataType: "json",
	        success: function (data ,textStatus, jqXHR)
	        {
	        	var oj = JSON.parse(data);
		     		var html="";
		      		for(var i=0;i<oj.length;i++){
			      	html=oj[i].newsTittle;
			      	var html2=oj[i].releaseTime;
			      	var txt1=$("#newsCenter5 ol");
			      	var txt2=$("<a style='color:#5B5B5B;font-size:15px;padding-top:10px' target='_blank'><li></li></a><img src='images/new.gif'><br>").text(html).attr("id","new4_title_"+i);
			    	var txt3=$("<span style='float:right;margin-top:-19px;font-size:13.5px;color:#BEBEBE'></span><br>").text(html2)
			      	txt1.append(txt2);
			      	txt1.append(txt3);
		      			var href="receive/findOne.do?id="+oj[i].id;
		      			$('#new4_title_'+i).attr("href",href);
		      			 
		      			}
	        },
	        error:function (XMLHttpRequest, textStatus, errorThrown) {      
	            alert("请求失败！");
	        }
	     });

	  $.ajax({
	        type: "get",
	        url: "receive/jsonAjax.do?newsType=8",
//	      data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
	       // data: {"para":1},
	        //cache: false,
	        //async : false,
	        dataType: "json",
	        success: function (data ,textStatus, jqXHR)
	        {
	        	var oj = JSON.parse(data);
		     		var html="";
		      		for(var i=0;i<oj.length;i++){
			      	html=oj[i].newsTittle;
			      	var html2=oj[i].releaseTime;
			      	var txt1=$("#newsCenter6 ol");
			      	var txt2=$("<a style='color:#5B5B5B;font-size:15px;padding-top:10px' target='_blank'><li></li></a><img src='images/new.gif'><br>").text(html).attr("id","new5_title_"+i);
			    	var txt3=$("<span style='float:right;margin-top:-19px;font-size:13.5px;color:#BEBEBE'></span><br>").text(html2)
			      	txt1.append(txt2);
			      	txt1.append(txt3);
		      			var href="receive/findOne.do?id="+oj[i].id;
		      			$('#new5_title_'+i).attr("href",href);
		      			 
		      			}
	        },
	        error:function (XMLHttpRequest, textStatus, errorThrown) {      
	            alert("请求失败！");
	        }
	     });

	  $.ajax({
	        type: "get",
	        url: "receive/jsonAjax.do?newsType=1",
//	      data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
	       // data: {"para":1},
	        //cache: false,
	        //async : false,
	        dataType: "json",
	        success: function (data ,textStatus, jqXHR)
	        {
	        	var oj = JSON.parse(data);
		     		var html="";
		      		for(var i=0;i<oj.length;i++){
			      	html=oj[i].newsTittle;
			      	var html2=oj[i].releaseTime;
			      	var txt1=$("#newsCenter7 ol");
			      	var txt2=$("<a style='color:#5B5B5B;font-size:15px;padding-top:10px' target='_blank'><li></li></a><img src='images/new.gif'><br>").text(html).attr("id","new6_title_"+i);
			    	var txt3=$("<span style='float:right;margin-top:-19px;font-size:13.5px;color:#BEBEBE'></span><br>").text(html2)
			      	txt1.append(txt2);
			      	txt1.append(txt3);
		      			var href="receive/findOne.do?id="+oj[i].id;
		      			$('#new6_title_'+i).attr("href",href);
		      			 
		      			}
	        },
	        error:function (XMLHttpRequest, textStatus, errorThrown) {      
	            alert("请求失败！");
	        }
	     });

	/*  $.ajax({
	        type: "get",
	        url: "receive/jsonAjax.do?newsType=7",
//	      data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
	       // data: {"para":1},
	        //cache: false,
	        //async : false,
	        dataType: "json",
	        success: function (data ,textStatus, jqXHR)
	        {
	        	var oj = JSON.parse(data);
		     		var html="";
		      		for(var i=0;i<oj.length;i++){
			      	html=oj[i].newsTittle;
			      	var html2=oj[i].releaseTime;
			      	var txt1=$("#newsCenter8 ol");
			      	var txt2=$("<a style='color:#5B5B5B;font-size:15px;padding-top:10px'><li></li></a><img src='images/new.gif'><br>").text(html).attr("id","new7_title_"+i);
			    	var txt3=$("<span style='float:right;margin-top:-19px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:362px;margin-top:-16px'><br>").text(html2)
			      	txt1.append(txt2);
			      	txt1.append(txt3);
		      			var href="receive/findOne.do?id="+oj[i].id;
		      			$('#new7_title_'+i).attr("href",href);
		      			 
		      			}
	        },
	        error:function (XMLHttpRequest, textStatus, errorThrown) {      
	            alert("请求失败！");
	        }
	     });
*/
	  $.ajax({
	        type: "get",
	        url: "receive/jsonAjax.do?newsType=9",
//	      data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
	       // data: {"para":1},
	        //cache: false,
	        //async : false,
	        dataType: "json",
	        success: function (data ,textStatus, jqXHR)
	        {
	        	var oj = JSON.parse(data);
		     		var html="";
		      		for(var i=0;i<oj.length;i++){
			      	html=oj[i].newsTittle;
			      	var html2=oj[i].releaseTime;
			      	var txt1=$("#newsCenter9 ol");
			      	var txt2=$("<a style='font-size:15px;padding-top:10px' target='_blank'><li></li></a><img src='images/notice.png'><br>").text(html).attr("id","new8_title_"+i);
			      	txt1.append(txt2);
		      			var href="receive/findOne.do?id="+oj[i].id;
		      			$('#new8_title_'+i).attr("href",href);
		      			 
		      			}
	        },
	        error:function (XMLHttpRequest, textStatus, errorThrown) {      
	            alert("请求失败！");
	        }
	     });

	  $.ajax({
		    type: "post",
		    url: "upLoad/findAllFiles.do",
		//  data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
		   // data: {"para":1},
		    //cache: false,
		    //async : false,
		    dataType: "json",
		    success: function (data ,textStatus, jqXHR)
		    {
		    	var oj = JSON.parse(data);
		     		var html="";
		     		//$('#div1').empty();
		      		for(var i=0;i<oj.length;i++){
			      	html=oj[i].showName;
			      	var html2=oj[i].releaseTime;
			      	var txt1=$("#newsCenter8 ol");
			      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;' target='_blank'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
			    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
			      	txt1.append(txt2);
			      	txt1.append(txt3);
		      			var href="upLoad/download.do?id="+oj[i].id;
		      			$('#file_title_'+i).attr("href",href);
		      			 
		      			}
		      		 },
		 	        error:function (XMLHttpRequest, textStatus, errorThrown) {      
		 	            alert("请求失败！");
		 	        }
		 	     });
  });

