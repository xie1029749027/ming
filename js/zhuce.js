/* 
* @Author: Marte
* @Date:   2019-05-08 20:42:41
* @Last Modified by:   Marte
* @Last Modified time: 2019-05-18 02:09:16
*/

$(document).ready(function(){
    var isok = false;
    var isok1 = false ;
    var isok2 = false ;
    var isok3 = false ;
    var isok4 = false ;
    var isok5 = false ;

        //点击登录
        $('#denglu1').on('click',function(){
            location.href = '../html/denglu.html';
        })

        $('.has_number a').click(function(){
            location.href = '../html/denglu.html';
        })
        //点击注册，刷新页面
        $('#zhuce1').on('click',function(){
            window.location.reload();
        })
        //回到首页
          $('.header_left li').on('click',function(){
            location.href = '../shouye.html';
        })
        //手机号码验证
        $('#mobile').on('blur',function(){
            var reg = /^1[3-9]\d{9}$/;
            var res = $('#mobile').val();
                // console.log(res);

            if(res){//非空验证
               if(reg.test(res)){
                    $.ajax({//证明不存在
                        type : 'post',
                        url : '../api/zhuce.php',
                        data : {
                            mobile : $('#mobile').val(),
                        },
                        success : function(str) {
                            console.log(str);
                            if(str == 'yes'){//数据库中不存在
                                $('#mobile_tip').html('');
                                $('#mobile_tip').attr('class','tip suc');
                                $('#mobile_tip').css('display','block');
                                
                                isok = true;

                            }else{//数据库中已经存在
                                $('#mobile_tip').attr('class','tip err');
                                $('#mobile_tip').css('display','block');
                                 $('#mobile_tip').html('该手机号已被使用！');
                                 isok = false;

                            }
                        }
                    })
                    }else{//不满足正则的手机号
                        $('#mobile_tip').attr('class','tip err');
                        $('#mobile_tip').css('display','block');
                        $('#mobile_tip').html('输入正确的手机号');
                        
                    }
                }else{//空字符
                $('#mobile_tip').attr('class','tip err');
                $('#mobile_tip').css('display','block');
                $('#mobile_tip').html('请输入手机号');
            }    
        })
        
        //输入注册密码
        
        $('#psw').on('blur',function(){
            var reg1 = /^\w{6,20}$/;
            var res1 = $('#psw').val();
            
            if(res1){//非空
                if(reg1.test(res1)){
                     $('#password_tip').html('');
                    $('#password_tip').attr('class','tip suc');
                    $('#password_tip').css('display','block');
                      isok1 = true;     
                }else{//输入错误
                    $('#password_tip').attr('class','tip err');
                                $('#password_tip').css('display','block');
                                 $('#password_tip').html('输入正确的密码');
                                 isok1 = false; 
                }
            }else{//空字符
                $('#password_tip').attr('class','tip err');
                $('#password_tip').css('display','block');
                $('#password_tip').html('请输入注册密码');
            }
        })

        //再次输入密码
        $('#re_psw').on('blur',function(){
            var res2 = $('#re_psw').val();
            var mm =  $('#psw').val();
            
            if(res2){
                if(res2 == mm){
                     $('#repassword_tip').html('');
                    $('#repassword_tip').attr('class','tip suc');
                    $('#repassword_tip').css('display','block');
                    isok2 = true;
                }
                else{
                    $('#repassword_tip').attr('class','tip err');
                    $('#repassword_tip').css('display','block');
                    $('#repassword_tip').html('您输入的两次密码不一致！！');
                    isok2 = false;
                }
             }else{
                $('#repassword_tip').attr('class','tip err');
                    $('#repassword_tip').css('display','block');
                    $('#repassword_tip').html('请再次输入注册密码');
            }
        })

        //输入昵称
        $('#uid').on('blur',function(){
            // var reg3 = /^\w{2,10}$/;
            var res3 = $('#uid').val();
           
            if(res3){
                if(res3.length < 2){
                    $('#nickname_tip').attr('class','tip err');
                    $('#nickname_tip').css('display','block');
                    $('#nickname_tip').html('用户昵称不能小于2位！'); 
                    isok3 = true;
                }else if(res3.length > 10){
                    $('#nickname_tip').attr('class','tip err');
                    $('#nickname_tip').css('display','block');
                    $('#nickname_tip').html('用户昵称不能大于10位！'); 
                }else{
                        $.ajax({
                        type : 'post',
                        url : '../api/zhuce.php',
                        data : {
                            uid : $('#uid').val(),
                        },
                        success : function(str) {
                            // console.log(str);
                            if(str == 'yes'){//数据库中不存在
                                $('#nickname_tip').html('');
                                $('#nickname_tip').attr('class','tip suc');
                                $('#nickname_tip').css('display','block');
                                isok3 = true;
                              

                            }else{//数据库中已经存在
                                $('#nickname_tip').attr('class','tip err');
                                $('#nickname_tip').css('display','block');
                                 $('#nickname_tip').html('用户已存在！');
                                isok3 = false;

                         }
                        }
                  
                    })
                }
            }else{
                $('#nickname_tip').attr('class','tip err');
                $('#nickname_tip').css('display','block');
                $('#nickname_tip').html('请再次输入昵称');
            }
        })
        
        //验证码
        
        var show_num = [];
        draw(show_num);
        $("#update").on('click',function(){
            draw(show_num);
        })
        $("#yzm").on('blur',function(){
            var val = $("#yzm").val().toLowerCase();
            var num = show_num.join("");
             if(val == num){
                $('#m_verify_tip').attr('class','tip suc');
                $('#m_verify_tip').css('display','block');
                isok4 = true;
                $('#message').attr('class','message_suc');
                $('#message').css('color','#000');
               
            }else{
                $('#m_verify_tip').attr('class','tip err');
                $('#m_verify_tip').css('display','block');
                // $("#yzm").val('');
                // draw(show_num);
                $('#m_verify_tip').attr('class','tip err');
                $('#m_verify_tip').css('display','block');
                isok4 = false;
            }
        })
 

        //生成并渲染出验证码图形
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

        //获取手机短信
        var  a =  randomCode();
         $('#message').on('click',function(){
                   
                   console.log(a);
                    // isok5 = true;
                })
          $('#duanxin').on('blur',function(){
                if($('#duanxin').val() == a){
                    isok5 = true;
                }
    })
        // $('#duanxin').on('blur',function(){
        //     var res5 = $('#duanxin').val();
        //         var a 
        // }) 

        $('#register').click(function() {
            var xiey = document.getElementById('m_checkbox');
            
        if(xiey.checked){
           if(isok&&isok1&&isok2&&isok3&&isok4&&isok5){
            isok=false;
            isok1=false;
            isok2=false;
            isok3=false;
            isok4=false;
            isok5=false;
            // location.href = "../html/denglu.html";
             $.ajax({
                        type : 'post',
                        url : '../api/insert.php',
                        data : {
                            mobile : $('#mobile').val(),
                            password : $('#psw').val(),
                            uid : $('#uid').val()
                        },
                        success : function(str) {
                            // console.log(str);
                            if(str == 'yes'){
                                location.href = "../html/denglu.html";
                            }
                            else{
                                alert('注册失败');
                            }
                        }
                    });
        }
        else{
           alert('请完善信息');
           console.log(isok);
           console.log(isok1);
           console.log(isok2);
           console.log(isok3);
           console.log(isok4);
           console.log(isok5);
        }
    }else{
            alert('请阅读协议');
        }
        
        });
         
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
