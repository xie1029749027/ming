// 回到顶部
 function toTop(id,height,speed) {
                
                //滚动到300px的时候，出现回到顶部，点击回到顶部，可以快速回到顶部
                
                var box = document.getElementById(id);
                
                // window.onscroll = function() {
                //     //在窗口滚动的时候触发
                //     // console.log(window.scrollY);
                //     var scrollTop = window.scrollY;
                //     if(scrollTop >= height) {
                //         box.style.display = 'block';
                //     }else{
                //         box.style.display = 'none';
                //     }
                // }
                
                box.onclick = function() {
                    //点击回到顶部，可以快速回到顶部
//                  window.scrollTo(0,0);   
                    var scrollTop = window.scrollY;//获取当前的滚动距离 
                    var timer = setInterval(function() {
                        scrollTop -= speed;//步长
                        if(scrollTop <= 0) {//临界值
                            clearInterval(timer);
                            window.scrollTo(0,0);
                        }else{
                            window.scrollTo(0,scrollTop);
                        }
                    },30);
                    
                }
            }
