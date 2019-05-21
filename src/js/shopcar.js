/* 
* @Author: Marte
* @Date:   2019-05-18 17:39:02
* @Last Modified by:   Marte
* @Last Modified time: 2019-05-21 16:02:46
*/

$(document).ready(function(){

    var params = location.search.slice(1);//guid=001
    var gid = params.split("=")[1];//002
    // console.log(gid);
    var $mobile = getCookie('mobile');
    if(getCookie('mobile')){
        
        $("#denglu").remove();
        $("#zhuce").remove();
        $(".hr1").prepend('<li class="hi">你好，</li><li class="user1"></li>') 
        $(".user1").html($mobile);
    }
    $('#jxbuy').click(function(){
            location.href='../html/liebiao.html';
        

    })
    console.log($mobile);
        $.ajax({
                type: "get",
                url: "../api/shopping.php",
                // async: true,
                data:{
                    account : $mobile,
                },
                success: function(data) {
                    console.log(data);
                    var data = JSON.parse(data);
                $('.order_content').html(data.data.map(function(item){
                        return `
                <ul class="order_lists" data-id="${item.zid}">
                    <li class="list_chk">
                        <input type="checkbox" id="checkbox_${item.zid}" class="son_check">
                        <label for="checkbox_${item.zid}"></label>
                    </li>
                    <li class="list_con">
                        <div class="list_img"><a href="javascript:;"><img src="${item.url}" alt=""></a></div>
                        <div class="list_text"><a href="javascript:;">${item.name}</a></div>
                    </li>
                    <li class="list_info">
                        <p>规格：默认</p>
                        <p>产地：进口</p>
                    </li>
                    <li class="list_price">
                        <p class="price">￥${item.sale}</p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="${item.qty}" id="sum" class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">￥${item.sale*item.qty}</p>
                    </li>
                    <li class="list_op">
                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                    </li>
                </ul>`
                     }))                
    


      
         $('.order_lists').on('click','.plus',function(){

                    var $id = $(this).parent().parent().parent().attr("data-id");
                    // $(this).parent().parent().next().
                    // console.log($id);
                    $.ajax({
                        type : 'get',
                        url : '../api/shopcar.php',
                        data : {
                            key :'jia',
                            dataid : $id
                        },
                        success : function(data){
                            
                            // var arr = JSON.parse(data);
                            // console.log(arr);
                            // $('#sum').val(arr.data);
                            // let zhi = arr.quan[0].sale;
                            // // console.log(zhi);
                            // $('.sum_price').text(zhi*arr.data);

                            totalMoney();

                        }
                    })
                })

                // 数量减
               
                $('.order_lists').on('click','.reduce',function(){
                    var $id = $(this).parent().parent().parent().attr("data-id");

                    $.ajax({
                        type : 'get',
                        url : '../api/shopcar.php',
                        data : {
                            key :'jian',
                            dataid : $id
                        },
                        success : function(data){
                            // var arr = JSON.parse(data);
                            // if($('#sum').val()==1){
                            //     alert("最低数量！");
                            // }
                            // $('#sum').val(arr.data);
                            // let zhi = arr.quan[0].sale;
                            // $('.sum_price').text(zhi*arr.data);
                            totalMoney();
                        }
                    })

                })
                // 删除宝贝
                $('.order_lists').on('click','.delBtn',function(){
                    var res=confirm("您确认要删除该宝贝？");
                    if(res){
                        var $id = $(this).parent().parent().parent().attr("data-id");
                        // console.log($id);
                    $.ajax({
                        type : 'get',
                        url : '../api/shopcar.php',
                        data : {
                            key :'del',
                            dataid : $id
                        },
                        success : function(data){
                            // console.log(data);
                            
                        }
                    })
                    }else{

                    }
                    
                })
                // 全选
                // $('.list_chk input').click(function() {
                //     var istrue = $(this).prop('checked');
                //     console.log(istrue)
                //     $('.order_content input').prop('checked',istrue);
                //     // $('.shuju_l1 input').prop('checked',istrue);

                //     totalMoney();
                // });
            var $allCheckbox = $('input[type="checkbox"]'),     //全局的全部checkbox
                    $wholeChexbox = $('.whole_check'),
                    $cartBox = $('.order_content'),                       //每个商铺盒子
                    // $shopCheckbox = $('.shopChoice'),               //每个商铺的checkbox
                    $sonCheckBox = $('.son_check');                 //每个商铺下的商品的checkbox
                $allCheckbox.click(function () {
                    if ($(this).is(':checked')) {
                        $(this).next('label').addClass('mark');
                    } else {
                        $(this).next('label').removeClass('mark')
                    }
                });

    //===============================================全局全选与单个商品的关系================================
    $wholeChexbox.click(function () {
        var $checkboxs = $cartBox.find('input[type="checkbox"]');
        if ($(this).is(':checked')) {
            $checkboxs.prop("checked", true);
            $checkboxs.next('label').addClass('mark');
        } else {
            $checkboxs.prop("checked", false);
            $checkboxs.next('label').removeClass('mark');
        }
        totalMoney();
    });
    $sonCheckBox.each(function () {
        $(this).click(function () {
            if ($(this).is(':checked')) {
                //判断：所有单个商品是否勾选
                var len = $sonCheckBox.length;
                var num = 0;
                $sonCheckBox.each(function () {
                    if ($(this).is(':checked')) {
                        num++;
                    }
                });
                if (num == len) {
                    $wholeChexbox.prop("checked", true);
                    $wholeChexbox.next('label').addClass('mark');
                }
            } else {
                //单个商品取消勾选，全局全选取消勾选
                $wholeChexbox.prop("checked", false);
                $wholeChexbox.next('label').removeClass('mark');
            }
        });
    });
    $cartBox.each(function () {
        var $this = $(this);
        var $sonChecks = $this.find('.son_check');
        $sonChecks.each(function () {
            $(this).click(function () {
                if ($(this).is(':checked')) {
                    //判断：如果所有的$sonChecks都选中则店铺全选打对勾！
                    var len = $sonChecks.length;
                    var num = 0;
                    $sonChecks.each(function () {
                        if ($(this).is(':checked')) {
                            num++;
                        }
                    });
                    if (num == len) {
                        $(this).parents('.order_content').find('.shopChoice').prop("checked", true);
                        $(this).parents('.order_content').find('.shopChoice').next('label').addClass('mark');
                    }

                } else {
                    //否则，店铺全选取消
                    $(this).parents('.order_content').find('.shopChoice').prop("checked", false);
                    $(this).parents('.order_content').find('.shopChoice').next('label').removeClass('mark');
                }
                totalMoney();
            });
        });
    });


          var $plus = $('.plus'),
        $reduce = $('.reduce'),
        $all_sum = $('.sum');
    $plus.click(function () {
        var $inputVal = $(this).prev('input'),
            $count = parseInt($inputVal.val())+1,
            $obj = $(this).parents('.amount_box').find('.reduce'),
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = $count*parseInt($price.substring(1));
        $inputVal.val($count);
        $priceTotalObj.html('￥'+$priceTotal);
        if($inputVal.val()>1 && $obj.hasClass('reSty')){
            $obj.removeClass('reSty');
        }
        totalMoney();
    });

    $reduce.click(function () {
        var $inputVal = $(this).next('input'),
            $count = parseInt($inputVal.val())-1,
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = $count*parseInt($price.substring(1));
        if($inputVal.val()>1){
            $inputVal.val($count);
            $priceTotalObj.html('￥'+$priceTotal);
        }
        if($inputVal.val()==1 && !$(this).hasClass('reSty')){
            $(this).addClass('reSty');
        }
        totalMoney();
    });

    $all_sum.keyup(function () {
        var $count = 0,
            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
            $priceTotal = 0;
        if($(this).val()==''){
            $(this).val('1');
        }
        $(this).val($(this).val().replace(/\D|^0/g,''));
        $count = $(this).val();
        $priceTotal = $count*parseInt($price.substring(1));
        $(this).attr('value',$count);
        $priceTotalObj.html('￥'+$priceTotal);
        totalMoney();
    })

    //======================================移除商品========================================

    var $order_lists = null;
    var $order_content = '';
    $('.delBtn').click(function () {
        $order_lists = $(this).parents('.order_lists');
        $order_content = $order_lists.parents('.order_content');
        $('.model_bg').fadeIn(300);
        $('.my_model').fadeIn(300);
    });

    //关闭模态框
    $('.closeModel').click(function () {
        closeM();
    });
    $('.dialog-close').click(function () {
        closeM();
    });
    function closeM() {
        $('.model_bg').fadeOut(300);
        $('.my_model').fadeOut(300);
    }
    //确定按钮，移除商品
    $('.dialog-sure').click(function () {
        $order_lists.remove();
        if($order_content.html().trim() == null || $order_content.html().trim().length == 0){
            $order_content.parents('.cartBox').remove();
        }
        closeM();
        $sonCheckBox = $('.son_check');
        totalMoney();
    })

    //======================================总计==========================================

    function totalMoney() {
        var total_money = 0;
        var total_count = 0;
        var calBtn = $('.calBtn a');
        // $sonCheckBox.each(function () {
        //     if ($(this).is(':checked')) {
        //         var goods = parseInt($(this).parents('.order_lists').find('.sum_price').html().substring(1));
        //         var num =  parseInt($(this).parents('.order_lists').find('.sum').val());
        //         total_money += goods;
        //         total_count += num;
        //     }
        // });
           $sonCheckBox.each(function () {
            if ($(this).is(':checked')) {
                var goods = parseInt($(this).parents('.order_lists').find('.sum_price').html().substring(1));
                var num =  parseInt($(this).parents('.order_lists').find('.sum').val());
                total_money += goods;
                total_count += num;
            }
        });
        $('.total_text').html('￥'+total_money);
        $('.piece_num').html(total_count);

        // console.log(total_money,total_count);

        if(total_money!=0 && total_count!=0){
            if(!calBtn.hasClass('btn_sty')){
                calBtn.addClass('btn_sty');
            }
        }else{
            if(calBtn.hasClass('btn_sty')){
                calBtn.removeClass('btn_sty');
            }
        }
    
                }  

                }
            })
    })
