/* 
* @Author: Marte
* @Date:   2019-05-18 12:50:23
* @Last Modified by:   Marte
* @Last Modified time: 2019-05-20 19:41:39
*/
window.onload=function(){
     var dls1 = document.getElementsByClassName("dls1");

    dls1[0].style.background = "#e53";

    
   
    var tz  = document.querySelector('.nav_center');
    var l1 = tz.getElementsByTagName('li');
        for(var i = 0; i<l1.length;i++){
            l1[i].onclick = function(){
                location.href = '../html/liebiao.html';
            }
        }

}
 $(function() {
    var $mobile = getCookie('mobile');
    if(getCookie('mobile')){
        
        $("#denglu").remove();
        $("#zhuce").remove();
        $(".hr1").prepend('<li class="hi">你好，</li><li class="user1"></li>') 
        $(".user1").html($mobile);
    }
    $('.logo_left').click(function(){
        location.href = '../shouye.html';
    })
    
     $('.sc_nav').click(function(){
        location.href = '../shouye.html';
    })
    var params = location.search.slice(1);//guid=001
    var guid = params.split("=")[1];//002
         // console.log(guid);
    $(window).scroll(function(){

            var a = $(window).scrollTop();
             if(a >= 800){
                        $('.pl_nav').css('position','fixed');
                        $('.pl_nav').css('top','0');

                    }else{
                         $('.pl_nav').css('position','absolute');
                    }
        })

        $('#ad1').click(function(){
            $(window).scrollTop('2000');
        })
        $('#ad2').click(function(){
            $(window).scrollTop('4000');
        })
        $('#ad3').click(function(){
            $(window).scrollTop('6000');
        })
        $('#ad4').click(function(){
            $(window).scrollTop('8000');
        })

         
     
                // var idx = 0;
                // meinv.some(function(item,index){
                //     idx = index;//idx=0,idx=1
                //     return item.guid == guid;//002==002
                // })
                // var obj = meinv[idx];

             $.ajax({
                type: "get",
                url: "../api/xiangqing.php",//获取图片url
                async: true,
                data : "id=" + guid,
                success: function(str) {
                    // console.log(str);
                    var arr = JSON.parse(str)[0].url1.split('&');//切割得到一组图片路径 
                    
                    $res = arr.map(function(item) {
                        return `<li>
                                    <div class="small-img">
                                        <img src="../img/${item}" />
                                    </div>
                                </li>`;
                    }).join('');

                    $('.animation03').html($res);
                    
                    //放大镜插件使用：先渲染再调用插件
                    var magnifierConfig = {
                        magnifier: "#magnifier1", //最外层的大容器
                        width: 400, //承载容器宽
                        height: 400, //承载容器高
                        moveWidth: null, //如果设置了移动盒子的宽度，则不计算缩放比例
                        zoom: 5 //缩放比例
                    };

                    var _magnifier = magnifier(magnifierConfig);
                }
            });

$('.dmount').on('click','.add',function(){
    var num = $(this).prev().val();
    // var kucun = $(this).prev().attr('data-num');
    num++;
    if(num>20){
        num = kucun;
     
    }
    $(this).prev().val(num);
})
$('.dmount').on('click','.reduce',function(){
    var num = $(this).next().val();
    num--;
  
    if(num<=1){
        num=1;
    }
      $(this).next().val(num);
})
$('.dmount').on('input','#buynum',function(){
    var num = $(this).val();
    if(num<=1){
        num = 1;
    }else if(num>=20){
                num=20;
        }
        $(this).val(num);
    
})
  $('.nav_r_t').click(function(){
           
            location.href = '../html/shopcar.html?data-id='+guid;
        }) 
$('.gotobuy').click(function(){
           
            location.href = '../html/shopcar.html?data-id='+guid;
        })
   
   
  $('.tocat').on('click',function(){

                var $qty = $('#buynum').val();
                console.log(guid); 
            if($mobile){
            $.ajax({
                type: "get",
                url: "../api/xiangqing_gou.php",//获取图片url
                // async: true,
                data : "id=" + guid+'&user='+ $mobile+'&val='+$qty,
                success: function(str) {
                    console.log(str);
                    alert('加入成功');
                }
            })
            }
        })
            
    });
   
  