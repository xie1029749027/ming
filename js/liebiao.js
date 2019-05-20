/* 
* @Author: Marte
* @Date:   2019-05-16 09:57:05
* @Last Modified by:   Marte
* @Last Modified time: 2019-05-19 23:11:17
*/


 $(function() {
     var $mobile = getCookie('mobile');
        if(getCookie('mobile')){
        
        $("#denglu").remove();
        $("#zhuce").remove();
        $(".hr1").prepend('<li class="hi">你好，</li><li class="user1"></li><li class="tuichu"><a href="###">退出</a></li>');
        $(".user1").html($mobile);
    }
       $('.logo_left').click(function(){
        location.href = '../shouye.html';
    })
       $('.tuichu').click(function(){
        removeCookie('mobile');
        
        $(".hr1 .hi").remove();
        $(".hr1 .user1").remove();
        $(".hr1 .tuichu").remove();
        window.location.reload();
        $(".hr1").prepend('<li id="denglu"><a href="javascript:;">登录</a></li><li id="zhuce"><a href="javascript:;">注册</a></li>');

    })
       // var nav_r_t = document.querySelector('.nav_r_t');
    
        $('#denglu').click(function(){
            location.href="../html/denglu.html"
        })
        $('#zhuce').click(function(){
            location.href="../html/zhuce.html"
        })
        $('.nav_r_t').click(function(){
         location.href = '../html/shopcar.html';
    })
        var zxf_pagediv = document.getElementsByClassName('zxf_pagediv');
        var product_list = document.querySelector('.product_list');
      
        var nowpage = 1;//当前页
            var num = 16;//每页标题数量
           
            var total;
            var type = '';
            var order = '';
    
         function init(nowpage) {

                    ajax2({
                        type : 'get',
                        url :'../api/liebiao.php',
                        data :'page=' + nowpage + '&num=' + num+ '&type=' + type + '&order=' + order,
                        success : function(str) {
                            // console.log(str);
                            // console.log(min);
                            // console.log(max);
                            creat(str);
                        } 
                    });
                }
                init(1);


                 function creat(str){//封装渲染

                var arr = JSON.parse(str);
                console.log(arr);
                //字符串转成对象
                //遍历并找到父元素添加
                var res = arr.data.map(function(item){
                    return `<li data-id="${item.id}">
                        <div class="top">
                        <img src="${item.url}"/>
                        <p><strong>￥${item.sale}</strong>${item.danjia}元/斤</p>
                        <p class="name">${item.name}</p>

                        <div  class="comment"><span>已售${item.yishou}</span><span>已有  <strong>${item.comment}</strong>人评价</span></div>
                        </div>
                        <div class="bott"> 
                            <a id="addcar"href="javascript:;"><i class="iconfont icon-gouwuche"></i>加入购物车</a>
                            <a href="javascript:;"><i class="iconfont icon-gouwuche"></i>收藏</a>
                        </div>
                        </li>`
                             }).join('');
                    product_list.innerHTML = res;
            
            var pages = Math.ceil(arr.total/arr.num);
                }
               
            $(".zxf_pagediv").createPage({

                    pageNum: 9,
                    current: 1,
                    backfun: function(e) {
                        //console.log(e);//回调
            }
        });
             
        $(".zxfokbtn").click(function(ev){
            var page = $('.zxfinput').val();

                 init(page);
                $('.zxfinput').val(page);
            })
        $(".zxf_pagediv").click(function(ev){
            if(ev.target.innerHTML >=1){
                 nowpage = ev.target.innerHTML;
                 init(nowpage);
            }
        
           if(ev.target.className.toLowerCase() == 'nextbtn'){
                if(nowpage<9){
                                  nowpage++;
                                // init();           
                               
                            } 
                             init(nowpage);
           }
        
         if(ev.target.className.toLowerCase() == 'prebtn'){
                if(nowpage>1){
                                  nowpage--;
                                // init();           
                                
                            } 
                            init(nowpage);
           }

        })
$('#price').click(function() {
            type = 'sale';
            order =  'ASC';
            init(1);
    });
$('#pricelow').click(function() {
            type = 'sale';
            order ='DESC';
            init(1);
    });
$('#xiaoiang').click(function() {
            type ='yishou';
            order = 'DESC';
            init(1);
    });

        //点击跳转详情页
           
        // for(var i = 0; i < $('.roduct_list li').size(); i++) {
        //         $('#list li').eq(i).html(i+1);
        //     }
       $(".product_list").click(function(e){
            if(e.target.tagName == "IMG" ||e.target.tagName == "P" ){
                
                location.href = '../html/xiangqing.html?data-id='+ e.target.parentNode.parentNode.dataset.id;
            }

       })
       // $("#addcar").click(function(){
       //       // location.href = '../html/xiangqing.html?data-id='+ e.target.parentNode.parentNode.dataset.id;
       //       console.log(666)
       // })
       $(".product_list").on('click','#addcar',function(e){
            
                location.href = '../html/shopcar.html?data-id='+ e.target.parentNode.parentNode.dataset.id;
            

       })

    //手风琴
     var box = document.getElementById('box');
    var btns = box.getElementsByTagName('h2');
    for(var i = 0; i < btns.length; i++) {
                    //准备多个开关
                    btns[i].isok = true;
                    btns[i].onclick = function() {
                        if(this.isok) {
                            this.nextElementSibling.style.display = 'block';
                            this.nextElementSibling.style.overflow = '';
                            
                        }else{
                            this.nextElementSibling.style.display = 'none';
                            this.nextElementSibling.style.overflow = 'hidden';
                        }
                        this.isok = !this.isok;
                    }
                }

});