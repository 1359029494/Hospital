jQuery.AutoComplete = function(selector){
  var elt = $(selector);
  var strHtml = '<div class="AutoComplete" id="AutoComplete">'+
        '    <ul class="AutoComplete_ul">'+
        '      <li hz="@163.com"></li>'+
        '      <li hz="@126.com"></li>'+
        '      <li hz="@139.com"></li>'+
        '      <li hz="@189.com"></li>'+
        '      <li hz="@qq.com"></li>'+
        '      <li hz="@vip.sina.com"></li>'+
        '      <li hz="@sina.cn"></li>'+
        '      <li hz="@sina.com"></li>'+
        '      <li hz="@sohu.com"></li>'+
        '      <li hz="@hotmail.com"></li>'+
        '      <li hz="@gmail.com"></li>'+
        '      <li hz="@wo.com.cn"></li>'+
        '      <li hz="@21cn.com"></li>'+
        '      <li hz="@aliyun.com"></li>'+
        '      <li hz="@yahoo.com"></li>'+
        '      <li hz="@foxmail.com"></li>'+
        '    </ul>'+
        '  </div>';
  //将div追加到body上
  $('body').append(strHtml);     
  var autoComplete,autoLi;
  autoComplete = $('#AutoComplete');    
  autoComplete.data('elt',elt);
  autoLi = autoComplete.find('li');
  autoLi.mouseover(function(){
    $(this).siblings().filter('.hover').removeClass('hover');
    $(this).addClass('hover');
  }).mouseout(function(){
    $(this).removeClass('hover');
  }).mousedown(function(){
    autoComplete.data('elt').val($(this).text()).change();
    autoComplete.hide();
  });
  //用户名补全+翻动
  elt.keyup(function(e){
    if(/13|38|40|116/.test(e.keyCode) || this.value==''){
      return false;
    }
    var username = this.value;
    if(username.indexOf('@')==-1){
      autoComplete.hide();
      return false;
    }
    autoLi.each(function(){
      this.innerHTML = username.replace(/\@+.*/,'')+$(this).attr('hz');
      if(this.innerHTML.indexOf(username)>=0){
        $(this).show();
      }else{
        $(this).hide();  
      }
    }).filter('.hover').removeClass('hover');
    autoComplete.show().css({
      left : $(this).offset().left,
      top : $(this).offset().top + $(this).outerHeight(true) - 1,
      position: 'absolute',
      zIndex: '99999'
    });
    if(autoLi.filter(':visible').length==0){
      autoComplete.hide();
    }else{
      autoLi.filter(':visible').eq(0).addClass('hover');      
    }
  }).keydown(function(e){
    if(e.keyCode==38){ //上
      autoLi.filter('.hover').prev().not('.AutoComplete_title').addClass('hover').next().removeClass('hover');
    }else if(e.keyCode==40){ //下
      autoLi.filter('.hover').next().addClass('hover').prev().removeClass('hover');
    }else if(e.keyCode==13){ //确定
      autoLi.filter('.hover').mousedown();
    }
  }).focus(function(){
    autoComplete.data('elt',$(this));
  }).blur(function(){
    autoComplete.hide();
  });
};