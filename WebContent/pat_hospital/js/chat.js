function tione(obj) {
				var ti = obj.innerHTML;
				var msgs = document.getElementById("msgs");
				msgs.innerHTML += "<div class=\"msg guest\">" +
					"<div class=\"msg-right\">" +
					"<div class=\"msg-ball\">" + ti + "</div>" +
					"</div>" +
					"</div>";

				msgs.innerHTML += "<div class=\"msg robot\">" +
					"<div class=\"msg-left\">" +
					"<div class=\"msg-ball\">" +
					"<p>挂号功能必须登录后才可以使用哦！！</p><br />" +
					"<p>用户登录后会跳转到个人中心界面，这时候点击挂号按钮就可以去挂号了</p><br />" +
					"<p>用户挂号使时需要选择科室，请患者务必根据自己的病情选择正确的科室！！</p><br />" +
					"<p>挂号时需要实名，所以千万不要代人挂号，以免影响延误患者病情！！</p><br />" +
					"</div>" +
					"</div>" +
					"</div>";
				texts.value = "";

			}
			function titwo(obj){
				var ti = obj.innerHTML;
				var msgs = document.getElementById("msgs");
				msgs.innerHTML += "<div class=\"msg guest\">"+
								  "<div class=\"msg-right\">"+
	                            "<div class=\"msg-ball\">"+ti+"</div>"+
	                            "</div>"+
	                            "</div>";
	                            
	          msgs.innerHTML += "<div class=\"msg robot\">"+
	                            "<div class=\"msg-left\">"+
	          				  "<div class=\"msg-ball\">"+
	          				  "<p>买药功能必须登录后才可以使用哦！！</p><br />"+
	          				  "<p>用户登录后会跳转到个人中心界面，这时候点击主页按钮返回主页！</p><br />"+
	          				  "<p>在主页点击自助拿药按钮，就可以去购买药品了</p><br />"+
	          				  "<p>患者自己所能购买的药都是非处方药(OTC)</p><br />"+
	          				  "<p>如果不了解病情，可以询问客服哦</p><br />"+
								  "</div>"+
								  "</div>"+
								  "</div>";
			        texts.value = "";
								  
			}
			function tithree(obj){
				var ti = obj.innerHTML;
				var msgs = document.getElementById("msgs");
				msgs.innerHTML += "<div class=\"msg guest\">"+
								  "<div class=\"msg-right\">"+
	                            "<div class=\"msg-ball\">"+ti+"</div>"+
	                            "</div>"+
	                            "</div>";
	                            
	          msgs.innerHTML += "<div class=\"msg robot\">"+
	                            "<div class=\"msg-left\">"+
	          				  "<div class=\"msg-ball\">"+
	          				  "<p>还在为脱发而烦恼吗？</p><br />"+
	          				  "<p>还在使用明标着防脱发却毫无作用的洗发露吗？</p><br />"+
	          				  "<p>还在用头发的长度来掩盖头发的密度吗？</p><br />"+
	          				  "<p>现在告诉你</p><br />"+
	          				  "<p>脱发这还真没招治！！</p><br />"+
	          				  "<p>理光头去吧</p><br />"+
								  "</div>"+
								  "</div>"+
								  "</div>";
			        texts.value = "";
								  
			}
			function tifour(obj){
				var ti = obj.innerHTML;
				var msgs = document.getElementById("msgs");
				msgs.innerHTML += "<div class=\"msg guest\">"+
								  "<div class=\"msg-right\">"+
	                            "<div class=\"msg-ball\">"+ti+"</div>"+
	                            "</div>"+
	                            "</div>";
	                            
	          msgs.innerHTML += "<div class=\"msg robot\">"+
	                            "<div class=\"msg-left\">"+
	          				  "<div class=\"msg-ball\">"+
	          				  "<p>小儿抵抗力弱！抵抗力差！</p><br />"+
	          				  "<p>经常感冒，老不好！怎么办？</p><br />"+
	          				  "<p>办法就是：</p><br />"+
	          				  "<p>赶紧生个二胎吧！！</p><br />"+
								  "</div>"+
								  "</div>"+
								  "</div>";
			        texts.value = "";
								  
			}
