	$(document).ready(function(){
				//alert(count);
				$.ajax({
			        type: "post",
			        url: "upLoad/findAllFiles.do",
//			      data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
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
					      		if(i<=18){
					      	html=oj[i].showName;
					      	var html2=oj[i].releaseTime;
					      	var txt1=$(".content .demo #div1");
					      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
					    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
					      	txt1.append(txt2);
					      	txt1.append(txt3);
				      			var href="upLoad/download.do?id="+oj[i].id;
				      			$('#file_title_'+i).attr("href",href);
				      			 
				      			}else if(i>18 && i<=36){
				      				html=oj[i].showName;
							      	var html2=oj[i].releaseTime;
							      	var txt1=$(".content .demo #div2");
							      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
							    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
							      	txt1.append(txt2);
							      	txt1.append(txt3);
						      			var href="upLoad/download.do?id="+oj[i].id;
						      			$('#file_title_'+i).attr("href",href);
						      			 
					      			}else if(i>36 && i<=54){
					      				html=oj[i].showName;
								      	var html2=oj[i].releaseTime;
								      	var txt1=$(".content .demo #div3");
								      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
								    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
								      	txt1.append(txt2);
								      	txt1.append(txt3);
							      			var href="upLoad/download.do?id="+oj[i].id;
							      			$('#file_title_'+i).attr("href",href);
						      		}else if(i>54 && i<=72){
						      				html=oj[i].showName;
									      	var html2=oj[i].releaseTime;
									      	var txt1=$(".content .demo #div4");
									      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
									    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
									      	txt1.append(txt2);
									      	txt1.append(txt3);
								      			var href="upLoad/download.do?id="+oj[i].id;
								      			$('#file_title_'+i).attr("href",href);
							      	}else if(i>72 && i<=90){
					      				html=oj[i].showName;
								      	var html2=oj[i].releaseTime;
								      	var txt1=$(".content .demo #div5");
								      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
								    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
								      	txt1.append(txt2);
								      	txt1.append(txt3);
							      			var href="upLoad/download.do?id="+oj[i].id;
							      			$('#file_title_'+i).attr("href",href);
							      			 
						      		}else if(i>90 && i<=108){
						      				html=oj[i].showName;
									      	var html2=oj[i].releaseTime;
									      	var txt1=$(".content .demo #div6");
									      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
									    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
									      	txt1.append(txt2);
									      	txt1.append(txt3);
								      			var href="upLoad/download.do?id="+oj[i].id;
								      			$('#file_title_'+i).attr("href",href);
							      	}else if(i>108 && i<=126){
							      				html=oj[i].showName;
										      	var html2=oj[i].releaseTime;
										      	var txt1=$(".content .demo #div7");
										      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
										    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
										      	txt1.append(txt2);
										      	txt1.append(txt3);
									      			var href="upLoad/download.do?id="+oj[i].id;
									      			$('#file_title_'+i).attr("href",href);
								    }else if(i>126 && i<=144){
						      				html=oj[i].showName;
									      	var html2=oj[i].releaseTime;
									      	var txt1=$(".content .demo #div8");
									      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
									    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
									      	txt1.append(txt2);
									      	txt1.append(txt3);
								      			var href="upLoad/download.do?id="+oj[i].id;
								      			$('#file_title_'+i).attr("href",href);
								      			 
							      	}else if(i>144 && i<=162){
							      				html=oj[i].showName;
										      	var html2=oj[i].releaseTime;
										      	var txt1=$(".content .demo #div9");
										      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
										    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
										      	txt1.append(txt2);
										      	txt1.append(txt3);
									      			var href="upLoad/download.do?id="+oj[i].id;
									      			$('#file_title_'+i).attr("href",href);
								      }else if(i>162 && i<=180){
								      				html=oj[i].showName;
											      	var html2=oj[i].releaseTime;
											      	var txt1=$(".content .demo #div10");
											      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
											    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
											      	txt1.append(txt2);
											      	txt1.append(txt3);
										      			var href="upLoad/download.do?id="+oj[i].id;
										      			$('#file_title_'+i).attr("href",href);
									    }else if(i>180 && i<=198){
							      				html=oj[i].showName;
										      	var html2=oj[i].releaseTime;
										      	var txt1=$(".content .demo #div11");
										      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
										    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
										      	txt1.append(txt2);
										      	txt1.append(txt3);
									      			var href="upLoad/download.do?id="+oj[i].id;
									      			$('#file_title_'+i).attr("href",href);
									      			 
								      	}else if(i>198 && i<=216){
								      				html=oj[i].showName;
											      	var html2=oj[i].releaseTime;
											      	var txt1=$(".content .demo #div12");
											      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
											    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
											      	txt1.append(txt2);
											      	txt1.append(txt3);
										      			var href="upLoad/download.do?id="+oj[i].id;
										      			$('#file_title_'+i).attr("href",href);
									     }else if(i>216 && i<=234){
									      				html=oj[i].showName;
												      	var html2=oj[i].releaseTime;
												      	var txt1=$(".content .demo #div13");
												      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
												    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
												      	txt1.append(txt2);
												      	txt1.append(txt3);
											      			var href="upLoad/download.do?id="+oj[i].id;
											      			$('#file_title_'+i).attr("href",href);
									     }else if(i>234 && i<=252){
							      				html=oj[i].showName;
										      	var html2=oj[i].releaseTime;
										      	var txt1=$(".content .demo #div14");
										      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
										    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
										      	txt1.append(txt2);
										      	txt1.append(txt3);
									      			var href="upLoad/download.do?id="+oj[i].id;
									      			$('#file_title_'+i).attr("href",href);
									      			 
								      			}else if(i>252 && i<=270){
								      				html=oj[i].showName;
											      	var html2=oj[i].releaseTime;
											      	var txt1=$(".content .demo #div15");
											      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
											    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
											      	txt1.append(txt2);
											      	txt1.append(txt3);
										      			var href="upLoad/download.do?id="+oj[i].id;
										      			$('#file_title_'+i).attr("href",href);
									      		}else if(i>270 && i<=288){
									      				html=oj[i].showName;
												      	var html2=oj[i].releaseTime;
												      	var txt1=$(".content .demo #div16");
												      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
												    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
												      	txt1.append(txt2);
												      	txt1.append(txt3);
											      			var href="upLoad/download.do?id="+oj[i].id;
											      			$('#file_title_'+i).attr("href",href);
										      	}else if(i>288 && i<=306){
								      				html=oj[i].showName;
											      	var html2=oj[i].releaseTime;
											      	var txt1=$(".content .demo #div17");
											      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
											    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
											      	txt1.append(txt2);
											      	txt1.append(txt3);
										      			var href="upLoad/download.do?id="+oj[i].id;
										      			$('#file_title_'+i).attr("href",href);
										      			 
									      		}else if(i>306 && i<=324){
									      				html=oj[i].showName;
												      	var html2=oj[i].releaseTime;
												      	var txt1=$(".content .demo #div18");
												      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
												    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
												      	txt1.append(txt2);
												      	txt1.append(txt3);
											      			var href="upLoad/download.do?id="+oj[i].id;
											      			$('#file_title_'+i).attr("href",href);
										      	}else if(i>324 && i<=342){
										      				html=oj[i].showName;
													      	var html2=oj[i].releaseTime;
													      	var txt1=$(".content .demo #div19");
													      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
													    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
													      	txt1.append(txt2);
													      	txt1.append(txt3);
												      			var href="upLoad/download.do?id="+oj[i].id;
												      			$('#file_title_'+i).attr("href",href);
											    }else if(i>342 && i<=360){
									      				html=oj[i].showName;
												      	var html2=oj[i].releaseTime;
												      	var txt1=$(".content .demo #div20");
												      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
												    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
												      	txt1.append(txt2);
												      	txt1.append(txt3);
											      			var href="upLoad/download.do?id="+oj[i].id;
											      			$('#file_title_'+i).attr("href",href);
											      			 
										      	}else if(i>360 && i<=378){
										      				html=oj[i].showName;
													      	var html2=oj[i].releaseTime;
													      	var txt1=$(".content .demo #div21");
													      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
													    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
													      	txt1.append(txt2);
													      	txt1.append(txt3);
												      			var href="upLoad/download.do?id="+oj[i].id;
												      			$('#file_title_'+i).attr("href",href);
											      }else if(i>378 && i<=396){
											      				html=oj[i].showName;
														      	var html2=oj[i].releaseTime;
														      	var txt1=$(".content .demo #div22");
														      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
														    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
														      	txt1.append(txt2);
														      	txt1.append(txt3);
													      			var href="upLoad/download.do?id="+oj[i].id;
													      			$('#file_title_'+i).attr("href",href);
												    }else if(i>396 && i<=414){
										      				html=oj[i].showName;
													      	var html2=oj[i].releaseTime;
													      	var txt1=$(".content .demo #div23");
													      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
													    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
													      	txt1.append(txt2);
													      	txt1.append(txt3);
												      			var href="upLoad/download.do?id="+oj[i].id;
												      			$('#file_title_'+i).attr("href",href);
												      			 
											      	}else if(i>414 && i<=432){
											      				html=oj[i].showName;
														      	var html2=oj[i].releaseTime;
														      	var txt1=$(".content .demo #div24");
														      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
														    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
														      	txt1.append(txt2);
														      	txt1.append(txt3);
													      			var href="upLoad/download.do?id="+oj[i].id;
													      			$('#file_title_'+i).attr("href",href);
												     }else{
												      				html=oj[i].showName;
															      	var html2=oj[i].releaseTime;
															      	var txt1=$(".content .demo #div25");
															      	var txt2=$("<a style='color:#5B5B5B;font-size:16px;'> </a><img src='images/download.png' style='height:15px;width:15px;'><br>").text(html).attr("id","file_title_"+i);
															    	var txt3=$("<span style='float:right;margin-top:-20px;font-size:13.5px;color:#BEBEBE'></span><img src='images/enli.png' style='margin-left:840px;margin-top:-14px'><br>").text(html2)
															      	txt1.append(txt2);
															      	txt1.append(txt3);
														      			var href="upLoad/download.do?id="+oj[i].id;
														      			$('#file_title_'+i).attr("href",href);
												     }
				      		}
			        },
			        error:function (XMLHttpRequest, textStatus, errorThrown) {      
			            alert("请求失败！");
			        }
			     });
			 }); 