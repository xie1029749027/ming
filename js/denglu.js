/* 
* @Author: Marte
* @Date:   2019-05-14 17:22:41
* @Last Modified by:   Marte
* @Last Modified time: 2019-05-18 02:06:15
*/

$(document).ready(function(){
    //验证码 
        var isok = false;
        var show_num = [];
        draw(show_num);
        $("#update").on('click',function(){
            draw(show_num);
        })
        $("#m_verify").on('blur',function(){
            var val = $("#m_verify").val().toLowerCase();
            var num = show_num.join("");
             if(val == num){
                $('.login_tip').css('display','none');
                $('#m_verify_tip').attr('class','tip suc');
                $('#m_verify_tip').css('display','block');
                isok = true;
            }else{
    
               $('#m_verify_tip').css('display','none');
                $('.login_tip').css('display','block');   
            }
        })
    function draw(show_num) {
            var canvas_width=$('#canvas').width();
            var canvas_height=$('#canvas').height();
            var canvas = document.getElementById("canvas");//获取到canvas的对象，演员
            var context = canvas.getContext("2d");//获取到canvas画图的环境，演员表演的舞台
            canvas.width = canvas_width;
            canvas.height = canvas_height;
            var sCode = "a,b,c,d,e,f,g,h,i,j,k,m,n,p,q,r,s,t,u,v,w,x,y,z,A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0";
            var aCode = sCode.split(",");
            var aLength = aCode.length;//获取到数组的长度
            
            for (var i = 0; i < 4; i++) {  //这里的for循环可以控制验证码位数（如果想显示6位数，4改成6即可）
                var j = Math.floor(Math.random() * aLength);//获取到随机的索引值
                // var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
                var deg = Math.random() - 0.5; //产生一个随机弧度
                var txt = aCode[j];//得到随机的一个内容
                show_num[i] = txt.toLowerCase();
                var x = 10 + i * 20;//文字在canvas上的x坐标
                var y = 20 + Math.random() * 8;//文字在canvas上的y坐标
                context.font = "bold 23px 微软雅黑";

                context.translate(x, y);
                context.rotate(deg);

                context.fillStyle = randomColor();
                context.fillText(txt, 0, 0);

                context.rotate(-deg);
                context.translate(-x, -y);
            }
            for (var i = 0; i <= 5; i++) { //验证码上显示线条
                context.strokeStyle = randomColor();
                context.beginPath();
                context.moveTo(Math.random() * canvas_width, Math.random() * canvas_height);
                context.lineTo(Math.random() * canvas_width, Math.random() * canvas_height);
                context.stroke();
            }
            for (var i = 0; i <= 30; i++) { //验证码上显示小点
                context.strokeStyle = randomColor();
                context.beginPath();
                var x = Math.random() * canvas_width;
                var y = Math.random() * canvas_height;
                context.moveTo(x, y);
                context.lineTo(x + 1, y + 1);
                context.stroke();
            }
        }

        //得到随机的颜色值
        function randomColor() {
            var r = Math.floor(Math.random() * 256);
            var g = Math.floor(Math.random() * 256);
            var b = Math.floor(Math.random() * 256);
            return "rgb(" + r + "," + g + "," + b + ")";
        }

        //账号手机切换登录方式
       //  "">账号密码登录
       // "login_list_tab">手机动态登录
       // $("#username_login").on('click',function(){
       //      $("#username_login")
       // })
       
       var login_tab = document.querySelector('.login_tab');
       var tabs = login_tab.getElementsByClassName('login_list_tab');
        var psw = document.querySelector('.psw'); 
        var tel_login = document.querySelector('.tel_login'); 
       // console.log(tabs);
       tabs[0].onclick=function(){
            this.className ='login_list_tab curr';
            tabs[1].className ='login_list_tab';
            tel_login.style.display= 'none'; 
            psw.style.display= 'block';
       }
       tabs[1].onclick=function(){
        this.className = 'login_list_tab curr';
        tabs[0].className ='login_list_tab';
            psw.style.display= 'none'; 
            tel_login.style.display= 'block';
       }
        var  yanzheng =  randomCode();
         $('#getLoginCode').on('click',function(){

                   console.log(yanzheng);
                    // isok5 = true;
                })
          $('#yanzhengma').on('blur',function(){
                if($('#yanzhengma').val() == yanzheng){
                    isok1 = true;
                }
    })
       //点击登录
        
       $('#Login').on('click',function(){
            // console.log($('#username').val());
            if(isok){//验证码验证
            $.ajax({
                        type : 'post',
                        url : '../api/denglu.php',
                        data : {
                            mobile : $('#username').val(),
                            password : $('#password').val(),
                        },
                        success : function(str) {
                            if (str == 'yes'){

                                location.href = '../shouye.html?cellphone='+ $('#username').val();//未完成
                                if($("#zidong").is(':checked')){
                                setCookie('mobile',$('#username').val(),7);
                                }  
                            }else{
                                alert('登录失败');
                            }                         
                        }
                    });
            }else if(isok1){
                location.href = '../shouye.html?cellphone='+ $('#cellphone').val();
                if($("#zidong").is(':checked')){
                                setCookie('mobile',$('#cellphone').val(),7);
                                }  
            }
       })
    //去注册
    $('#gozhuc').click(function(){
        location.href = '../html/zhuce.html';
    })
        function randomCode() { //2.声明体
    //3.执行代码
    var html = '0987654321qwertyuioplkjhgfdsazxcvbnmZXCVBNMLKJHGFDSAQWERTYUIOP';
    //随机数的范围：0-str.length-1
    // console.log(html[2]);
    var res = '';
    for(var i = 0; i < 4; i++) {
        var now = parseInt(Math.random() * html.length); //0-str.length-1
        res += html[now];
    }
    //              console.log(res);//四位随机数
    return res; //4.返回值
}
});