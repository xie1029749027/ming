/* 
* @Author: Marte
* @Date:   2019-05-11 17:39:35
* @Last Modified by:   Marte
* @Last Modified time: 2019-05-19 21:43:19
*/
window.onload=function(){
    
    
    var Denglu = document.getElementById('denglu');
    Denglu.onclick =function(){
        location.href = 'html/denglu.html';
    }
    var Zhuce = document.getElementById('zhuce');
    Zhuce.onclick =function(){
        location.href = 'html/zhuce.html';
    }
     var nav_r_t = document.querySelector('.nav_r_t');
    nav_r_t.onclick =function(){
        location.href = '../html/shopcar.html';
    }
   
    var tz  = document.querySelector('.nav_center');
    var l1 = tz.getElementsByTagName('li');
        for(var i = 0; i<l1.length;i++){
            l1[i].onclick = function(){
                location.href = '../html/liebiao.html';
            }
        }
     var dog_nav = document.querySelector('.dog_nav');
    var as = dog_nav.getElementsByTagName('a');
        for(var i = 0; i<as.length;i++){
                as[i].onclick = function(){
                    location.href = '../html/liebiao.html';
                }
            }

    $('#weizhi').on('mouseover',function(){
        $('.cityList').attr('display','block');
    })

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
        $('#denglu').click(function(){
            location.href="../html/denglu.html"
        })
        $('#zhuce').click(function(){
            location.href="../html/zhuce.html"
        })
    


    //滑动显示
    var header_right = document.querySelector('.header_right');
    var head_lis = header_right.getElementsByTagName('li');
    var arr = [];
    arr.push(head_lis[2]);
    arr.push(head_lis[3]);
    arr.push(head_lis[4]);
    // console.log(arr);
         for(var i = 0; i<arr.length;i++){
                       // a1[i].index = i ;
                        arr[i].onmouseover = function() {
                            // for(var j = 0;j<arr.length;j++){
                            //     arr[j].className = "";

                            //     // con[j].style.display = "none";
                            // }
                            this.className = "current";
                            // con[this.index].style.display = "block";
                            
                        }
                        // a1[i].index = i ;
                        arr[i].onmouseout = function() {
                             this.className = "";
                        }

                }
        var  weizhi = document.getElementById('weizhi');
         var  cityList = document.getElementsByClassName('cityList');

        weizhi.onmouseover = function(){
            weizhi.className = "current";
        }
         weizhi.onmouseout = function(){
              weizhi.className = '';
        }
        // telPhone.onmouseout = function(){
        //     tel_select.style.display = 'none';
        // }
        // tel_select.onmouseout = function(){
        //      tel_select.style.display = 'none';
        // }
    //轮播图功能
     var banner_screen = document.getElementById("banner_screen");
            var screen1 = banner_screen.children[0];
            var lis = screen1.getElementsByTagName('li');
            // console.log(lis);
            var prev = banner_screen.getElementsByClassName('prev')[0];
            var next = banner_screen.getElementsByClassName('next')[0];
            var iw = lis[0].offsetWidth;//设置图片的滑动距离
            var now = 0;//当前可视窗口的图片的li下标
            var  light = banner_screen.children[1];
            // console.log(light);
            for(var li of lis){//遍历所有的li并且全部放到可视窗口的右边
                li.style.left = iw + 'px';
            }
            lis[0].style.left = 0;//开始的时候将第一张图放至可视区域

            //开启一个空定时器用来计算轮播图的跳转
            var timer = null;
            function nextPic() {//下一张图片
                startMove(lis[now],{'left':-iw});//旧图移出可视区域，向左移动一个iw的距离
                now++;//now已变成准备登场的图片
                if(now >= lis.length){//当now超出最后一张时，用第一张拼接上（循环效果）
                    now = 0;    
                }
                    lis[now].style.left = iw + 'px';
                    startMove(lis[now],{'left':0});
                //新图片从右边的隐藏区域往左走1个iw距离（原为iw），此时iw最终的水平位置为0；   
                lightMove(); 
            }
            timer = setInterval(nextPic,2000);


             

            banner_screen.onmouseover = function() {//鼠标移出清除定时器
                clearInterval(timer);
             }

            banner_screen.onmouseout = function() {//鼠标移出开始定时器
                timer = setInterval(nextPic,2000);
             }

             //设置焦点并渲染
             var html ="";
             for(var i = 0;i<lis.length; i++){
                html += '<span>'+(i+1)+'</span>'
             }
             light.innerHTML = html;
             // console.log(light);
             light.children[0].className = 'active';//一开始时第一个焦点为高亮



             function lightMove(){//设置高亮
                for(var i=0;i<lis.length;i++){
                    light.children[i].className = "";
                }
                light.children[now].className = "active";//焦点的位置是跟随now
             }

             for(let i=0 ;i < light.children.length; i ++){

                     light.children[i].onclick = function(){
                        var index = i;
                        if(index > now){//
                            startMove(lis[now],{'left':-iw});
                            lis[index].style.left = iw + 'px';

                        }
                        if(index < now){//同理
                            
                            startMove(lis[now],{'left':iw});
                            lis[index].style.left = -iw + 'px';
                        }
                        startMove(lis[index],{'left':0});
                        now = index;//替换索引
                        lightMove();//焦点显示
                     }
             }


             //切换文字turn
             var prev = document.querySelector('.prev');
             var next = document.querySelector('.next');
             var ul_zx = document.querySelector('#ul_zx');
             var lis1 = ul_zx.getElementsByTagName('li');
             var iw1 = lis1[0].offsetWidth;
             var now1 = 0;
             for(var li of lis1){//遍历所有的li并且全部放到可视窗口的右边
                li.style.left = iw1 + 'px';
            }
            lis1[0].style.left = 0;//
                next.onclick = function(){
                    startMove(lis1[now1],{'left':-iw1});
                    now1++;
                    if(now1 >= lis1.length){//
                    now1 = 0;    
                }
                    lis1[now1].style.left = iw1 + 'px';
                    startMove(lis1[now1],{'left':0});
             }


             prev.onclick = function(){
                 startMove(lis1[now1],{'left':iw1});
                now1--;
               if(now1 <= -1 ){
                    now1 = lis1.length -1;    
                }
                lis1[now1].style.left = -iw1+ 'px';
                    startMove(lis1[now1],{'left':0});
          
             }
            //火爆商品渲染
            var hot_pro_b_body = document.querySelector('.hot_pro_b_body');
            console.log(hot_pro_b_body);
             var brand_bot = document.querySelector('.brand_bot');
           
           
            // console.log(dog_c_t);
            ajax2({
                    type : 'get',
                    url : 'api/shouye.php',
                    success : function(str) {
                        
                        var arr = JSON.parse(str);//字符串转成对象
                        var arr1 = arr.slice(0,12);                        // console.log(arr1);
                        // console.log(arr2);
                        //火爆商品区
                        

                        var res1 = arr1.map(function(item){
                            return `<dl style="display:block;"data-id="${item.id}">
                                    <dt><img src="${item.url}" alt="" title="${item.name}"/></dt>
                                    <dd><a href="javascript:;">${item.name}</a></dd>
                                    <dd>
                                        <span class="l">￥${item.sale}</span>
                                        <span class="r">已售:${item.yishou}</span>
                                    </dd>
                                </dl>`
                             }).join('');
                       hot_pro_b_body.innerHTML = res1;


                    //知名品牌区
                        var arr2 = arr.slice(12,21);
                        var res2 = arr2.map(function(item){
                            return `<a href="javascript:;">
                                    <img  class="${item.name}"src="${item.url}"alt="" />
                    </a>`}).join('');
                        brand_bot.innerHTML = res2;
                    

                    // //狗狗专区
                    // var arr3 = arr.slice(21,64);
                    
                    // var res3 = arr3.map(function(item){
                    //         return `<dl>
                    //             <dt>
                    //                 <a href="#">
                    //                     <img src="${item.url}"}/>
                    //                 </a>
                    //             </dt>
                    //             <dd><a href="#">${item.name}</a></dd>
                    //             <dd>
                    //                 <span class="l">¥${item.sale}</span>
                    //                 <span class="r">已售${item.yishou}</span>
                    //             </dd>
                    //         </dl>`}).join('');
                    //     dog_c_t[0].innerHTML = res3;

                    // //猫咪专区
                    // var arr4 = arr.slice(64,107);
                    // var res4 = arr4.map(function(item){
                        
                    //         return `<dl>
                    //             <dt>
                    //                 <a href="#">
                    //                     <img src="${item.url}"}/>
                    //                 </a>
                    //             </dt>
                    //             <dd><a href="#">${item.name}</a></dd>
                    //             <dd>
                    //                 <span class="l">¥${item.sale}</span>
                    //                 <span class="r">已售${item.yishou}</span>
                    //             </dd>
                    //         </dl>`}).join('');
                    //     dog_c_t[1].innerHTML = res4;
                    }
            })
            
            //换一批
            
            
            var change = document.getElementById('change_product');
            var changeBody = document.getElementsByClassName('hot_pro_b_body');
            var dls = hot_pro_b_body.getElementsByTagName('dl');
               // var now = 0;
               // var num = 5;
               var isok = true;
            // changeBody[0].style.display= "block";
                change.onclick = function(){
                        // console.log(num);
                        if(isok){
                        for(var i = 0; i<6;i++){
                            dls[i].style.display = 'none';

                        }
                        for(var i= 6;i<12;i++){
                            dls[i].style.display = 'block';
                        }
                        isok=false;
}else{
                        for(var i= 6;i<12;i++){
                            dls[i].style.display = 'none';
                        }
                        for(var i = 0; i<6;i++){
                            dls[i].style.display = 'block';

                        }
                        isok = true;
}
                    // startMove(changeBody[now2],{'opacity':0});
                    // // startMove(changeBody[now2],{'top':-210});
                    //  changeBody[now2].style.display= "none";
                    //  now2++;
                    //  if(now2 >= changeBody.length){
                    //     now2 = 0;
                    //  }
                    //  changeBody[now2].style.display= "block";
                    //  startMove(changeBody[now2],{'opacity':100});
                    //  changeBody[now2].style.top = "210px";
                     // startMove(changeBody[now2],{'top':0});
                     // 
                     
                }
            //标题切换背景颜色
            var navs = document.getElementsByClassName('dog_nav');
            var bodys = document.getElementsByClassName('dog_body');
                // console.log(dog_c_t);
            var a1 = navs[0].getElementsByTagName('a');
            var a2 = navs[1].getElementsByTagName('a');
            var b1 = bodys[0].getElementsByTagName('div');
            var b2 = bodys[1].getElementsByTagName('div');
        
                setColor(a1,b1);//狗狗区导航切换
                setColor(a2,b2);//喵咪区导航切换

            function setColor(a,b){
            for(var i = 0; i<a.length;i++){
                       a[i].index = i ;
                        a[i].onmouseover = function() {
                            for(var j = 0;j<a.length;j++){
                                a[j].className = "";
                                b[j].style.display = "none";
                            }
                            this.className = "active";
                            b[this.index].style.display = "block";
                        }
                }
            }
            //回到顶部
            var toTop = document.getElementById('toTop');

                toTop.onclick = function(){
                    window.scrollTo(0,0);
                }
            
         }

