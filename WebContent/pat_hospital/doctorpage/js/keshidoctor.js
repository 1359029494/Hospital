function nextpage() {
		var url = window.location.host;
		var frist = document.getElementById("fristpage");
		var old = document.getElementById("oldpage");
		var next = document.getElementById("nextpage");
		var more = document.getElementById("morepage");
		var keshi = document.getElementById("title");
		if(pagenow>pagecount-1){
			
		}else{
			pagenow = pagenow+1;
			
			$.get("../../doshowkeshidoctor",{keshiname:keshi.innerHTML,pagenow:pagenow},function(data){
				var now = document.getElementById("wk_pagenow");
				now.innerHTML=pagenow;
				var len = data.length;
				var zhanshi = document.getElementById("zhanshi");
				zhanshi.innerHTML="";
				for(i=0;i<len;i++){
					var li = document.createElement("li");
					var dl = document.createElement("dl");
					var dd = document.createElement("dd");
					var dt = document.createElement("dt");
					var img = document.createElement("img");
					var span = document.createElement("span");
					var br1 = document.createElement("br");
					var br2 = document.createElement("br");
					var br3 = document.createElement("br");
					var a = document.createElement("a");
					var md = data[i];
					img.src="http://"+url+"/hospital/hos_admin/admin/"+md.docphoto;
					img.className="";
					img.style.width="185px";
					img.style.height="150px";
					li.style.marginRight="100px";
					span.className="book_title";
					span.style.color="#000000";
					span.style.fontSize="20px";
					span.style.marginLeft="120px";
					span.innerHTML=md.docname;
					a.className="book_buy";
					a.href="../../preconfirmguahao?docid="+md.docid;
					a.innerHTML="选择";
					a.style.marginLeft="120px";
					zhanshi.appendChild(li);
					li.appendChild(dl);
					dl.appendChild(dd);
					dl.appendChild(dt);
					dd.appendChild(img);
					dt.appendChild(span);
					dt.appendChild(br1);
					dt.appendChild(br2);
					dt.appendChild(br3);
					dt.appendChild(a);
				}
				if(pagenow==1){
					frist.className="wk_nopage";
					old.className="wk_nopage";
				}
				if(pagenow!=1){
					frist.className="wk_fristpage";
					old.className="wk_fristpage";
				}
				if(pagenow==pagecount){
					next.className="wk_nopage";
					more.className="wk_nopage";
				}
				if(pagenow!=pagecount){
					next.className="wk_fristpage";
					more.className="wk_fristpage";
				}
			},"json");
		}
	}
	function oldpage() {
		var url = window.location.host;
		var frist = document.getElementById("fristpage");
		var old = document.getElementById("oldpage");
		var next = document.getElementById("nextpage");
		var more = document.getElementById("morepage");
		var keshi = document.getElementById("title");
		if(pagenow<2){
			
		}else{
			pagenow = pagenow-1;
			$.get("../../doshowkeshidoctor",{keshiname:keshi.innerHTML,pagenow:pagenow},function(data){
				var now = document.getElementById("wk_pagenow");
				now.innerHTML=pagenow;
				var len = data.length;
				var zhanshi = document.getElementById("zhanshi");
				zhanshi.innerHTML="";
				for(i=0;i<len;i++){
					var li = document.createElement("li");
					var dl = document.createElement("dl");
					var dd = document.createElement("dd");
					var dt = document.createElement("dt");
					var img = document.createElement("img");
					var span = document.createElement("span");
					var br1 = document.createElement("br");
					var br2 = document.createElement("br");
					var br3 = document.createElement("br");
					var a = document.createElement("a");
					var md = data[i];
					img.src="http://"+url+"/hospital/hos_admin/admin/"+md.docphoto;
					img.className="";
					img.style.width="185px";
					img.style.height="150px";
					li.style.marginRight="100px";
					span.className="book_title";
					span.style.color="#000000";
					span.style.fontSize="20px";
					span.style.marginLeft="120px";
					span.innerHTML=md.docname;
					a.className="book_buy";
					a.href="../../preconfirmguahao?docid="+md.docid;
					a.innerHTML="选择";
					a.style.marginLeft="120px";
					zhanshi.appendChild(li);
					li.appendChild(dl);
					dl.appendChild(dd);
					dl.appendChild(dt);
					dd.appendChild(img);
					dt.appendChild(span);
					dt.appendChild(br1);
					dt.appendChild(br2);
					dt.appendChild(br3);
					dt.appendChild(a);
				}
				if(pagenow==1){
					frist.className="wk_nopage";
					old.className="wk_nopage";
				}
				if(pagenow!=1){
					frist.className="wk_fristpage";
					old.className="wk_fristpage";
				}
				if(pagenow==pagecount){
					next.className="wk_nopage";
					more.className="wk_nopage";
				}
				if(pagenow!=pagecount){
					next.className="wk_fristpage";
					more.className="wk_fristpage";
				}
			},"json");
		}
	}
	function fristpage() {
		var url = window.location.host;
		var frist = document.getElementById("fristpage");
		var old = document.getElementById("oldpage");
		var next = document.getElementById("nextpage");
		var more = document.getElementById("morepage");
		var keshi = document.getElementById("title");
		pagenow = 1;
		$.get("../../doshowkeshidoctor",{keshiname:keshi.innerHTML,pagenow:pagenow},function(data){
			var now = document.getElementById("wk_pagenow");
			now.innerHTML=pagenow;
			var len = data.length;
			var zhanshi = document.getElementById("zhanshi");
			zhanshi.innerHTML="";
			for(i=0;i<len;i++){
				var li = document.createElement("li");
				var dl = document.createElement("dl");
				var dd = document.createElement("dd");
				var dt = document.createElement("dt");
				var img = document.createElement("img");
				var span = document.createElement("span");
				var br1 = document.createElement("br");
				var br2 = document.createElement("br");
				var br3 = document.createElement("br");
				var a = document.createElement("a");
				var md = data[i];
				img.src="http://"+url+"/hospital/hos_admin/admin/"+md.docphoto;
				img.className="";
				img.style.width="185px";
				img.style.height="150px";
				li.style.marginRight="100px";
				span.className="book_title";
				span.style.color="#000000";
				span.style.fontSize="20px";
				span.style.marginLeft="120px";
				span.innerHTML=md.docname;
				a.className="book_buy";
				a.href="../../preconfirmguahao?docid="+md.docid;
				a.innerHTML="选择";
				a.style.marginLeft="120px";
				zhanshi.appendChild(li);
				li.appendChild(dl);
				dl.appendChild(dd);
				dl.appendChild(dt);
				dd.appendChild(img);
				dt.appendChild(span);
				dt.appendChild(br1);
				dt.appendChild(br2);
				dt.appendChild(br3);
				dt.appendChild(a);
			}
			if(pagenow==1){
				frist.className="wk_nopage";
				old.className="wk_nopage";
			}
			if(pagenow!=1){
				frist.className="wk_fristpage";
				old.className="wk_fristpage";
			}
			if(pagenow==pagecount){
				next.className="wk_nopage";
				more.className="wk_nopage";
			}
			if(pagenow!=pagecount){
				next.className="wk_fristpage";
				more.className="wk_fristpage";
			}
		},"json");
	}
	function morepage() {
		var url = window.location.host;
		var frist = document.getElementById("fristpage");
		var old = document.getElementById("oldpage");
		var next = document.getElementById("nextpage");
		var more = document.getElementById("morepage");
		var keshi = document.getElementById("title");
		pagenow = pagecount;
		$.get("../../doshowkeshidoctor",{keshiname:keshi.innerHTML,pagenow:pagenow},function(data){
			var now = document.getElementById("wk_pagenow");
			now.innerHTML=pagenow;
			var len = data.length;
			var zhanshi = document.getElementById("zhanshi");
			zhanshi.innerHTML="";
			for(i=0;i<len;i++){
				var li = document.createElement("li");
				var dl = document.createElement("dl");
				var dd = document.createElement("dd");
				var dt = document.createElement("dt");
				var img = document.createElement("img");
				var span = document.createElement("span");
				var br1 = document.createElement("br");
				var br2 = document.createElement("br");
				var br3 = document.createElement("br");
				var a = document.createElement("a");
				var md = data[i];
				img.src="http://"+url+"/hospital/hos_admin/admin/"+md.docphoto;
				img.className="";
				img.style.width="185px";
				img.style.height="150px";
				li.style.marginRight="100px";
				span.className="book_title";
				span.style.color="#000000";
				span.style.fontSize="20px";
				span.style.marginLeft="120px";
				span.innerHTML=md.docname;
				a.className="book_buy";
				a.href="../../preconfirmguahao?docid="+md.docid;
				a.innerHTML="选择";
				a.style.marginLeft="120px";
				zhanshi.appendChild(li);
				li.appendChild(dl);
				dl.appendChild(dd);
				dl.appendChild(dt);
				dd.appendChild(img);
				dt.appendChild(span);
				dt.appendChild(br1);
				dt.appendChild(br2);
				dt.appendChild(br3);
				dt.appendChild(a);
			}
			if(pagenow==1){
				frist.className="wk_nopage";
				old.className="wk_nopage";
			}
			if(pagenow!=1){
				frist.className="wk_fristpage";
				old.className="wk_fristpage";
			}
			if(pagenow==pagecount){
				next.className="wk_nopage";
				more.className="wk_nopage";
			}
			if(pagenow!=pagecount){
				next.className="wk_fristpage";
				more.className="wk_fristpage";
			}
		},"json");
	}