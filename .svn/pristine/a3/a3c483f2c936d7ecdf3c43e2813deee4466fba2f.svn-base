<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>jQuery UI 自动完成（Autocomplete） - 默认功能</title>
  <link rel="stylesheet" href="jqueryui/style.css">
  <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <!--
  	jquery.ui.core.js
  	jquery.ui.menu.js
  	jquery.ui.position.js
  	jquery.ui.widget.js
   -->
  
  
  <script>
  $(function() {
    $( "#tags" ).autocomplete({
      source: "../backdrugdata"
    });
  });
  
  function check(){
	  alert();
  }
  </script>
  <script type="text/javascript"> 
var countdown=60; 
function settime(obj) { 
    if (countdown == 0) { 
        obj.removeAttribute("disabled");    
        obj.value="免费获取验证码"; 
        countdown = 60; 
        return;
    } else { 
        obj.setAttribute("disabled", true); 
        obj.value="重新发送(" + countdown + ")"; 
        countdown--; 
    } 
setTimeout(function() { 
    settime(obj) }
    ,1000) 
}
  
</script>
</head>
<body>
	 
	<div class="ui-widget">
	  <label for="tags">标签：</label>
	  <input id="tags">
	</div>
	<form method="post" onsubmit="check()">
		<input type="submit">
	</form>
	<br /><br /><br /><br /><br />
	<input type="button" id="btn" value="免费获取验证码" onclick="settime(this)" />
 
</body>