$(function(){
     win = $(window);
    
    function Slider(slip,li,a,i,left,animatetime){
    this.$slip = slip;
    this.$li = li;
    this.$a = a;
    this.$i = i;
    this.$left=left;
    this.$animatetime=animatetime;
    var _this = this;
    this.dingwei=function(){
        this.$slip.stop().animate({
            width:_this.$a.width() + 'px',
            left:parseInt(_this.$a.position().left) + parseInt(_this.$left)  + 'px'
        },_this.$animatetime)
    };
    this.bindevent=function(){
        var _this = this;
        this.$li.hover(function(){
            _this.$slip.stop().animate({
                width:$(this).width() + 'px',
                  left:parseInt( $(this).position().left )+ parseInt( _this.$left) + 'px'
              }, _this.$animatetime);
        },function(){
            _this.dingwei();
        })
    };
    this.intr=function(){
        this.dingwei();
        this.bindevent();
    };
    this.intr();
};
    
    function showNav(){
        var urlstr = location.href;
        var urlstatus=false;
        $(".box2 li a").each(function () {
            //console.log($(this).attr('href'));
            if ((urlstr + '/').indexOf($(this).attr('href')) > -1&&$(this).attr('href')!='') {
              $(this).parent().addClass('curr'); urlstatus = true;      
            } else {
              $(this).parent().removeClass('curr');urlstatus = false;
            }
        });
    };
    
    function innav(){
        var li = $('.Navbox ul li'),
            sideli = $('.sideNav'),
            innavbg = $('.innavbg');
        li.hover(function(){
            index = $(this).index();
            $(this).find(sideli).stop().fadeIn(200);
            inshow(index);
        },function(){
            $(this).find(sideli).stop().fadeOut(200);
            innavbg.stop().fadeOut(200);
        });
       
        function inshow(index){
            if (index == 7) {
                innavbg.stop().fadeIn(200);
            }else  {
                innavbg.stop().fadeOut(200);
            };

        };
    };
    
    innav()
	// 导航栏定位
   

    // if($(".Navbox .navli.cur")[0]){
	   //  //头部滑块
	   //  var slip2=$(".navline"),li2=$(".Navbox .navli"),a2=$(".Navbox .navli.cur"),i2="",left2="45",animatetime2=300;
	   //  var Slider2 =new Slider(slip2,li2,a2,i2,left2,animatetime2);
    // }else{
    	
    // 	$(".Navbox .navli").mouseenter(function(){
    // 		$(this).addClass("cur").siblings().removeClass("cur");
    // 		var slip2=$(".navline"),li2=$(".Navbox .navli"),a2=$(".Navbox .navli.cur"),i2="",left2="45",animatetime2=300;
	   //  	var Slider2 =new Slider(slip2,li2,a2,i2,left2,animatetime2);
    // 	})
    	
    // 	$(".Navbox").mouseleave(function(){
    // 		$(".Navbox .navli").removeClass("cur")
    // 		$(".navline").animate({"width":0,"left":0},300)
    // 	})
    // }

    $(".Navbox .navli").mouseenter(function(){
        $(this).addClass("cur").siblings().removeClass("cur");
        var slip2=$(".navline"),li2=$(".Navbox .navli"),a2=$(".Navbox .navli.cur"),i2="",left2="45",animatetime2=300;
        var Slider2 =new Slider(slip2,li2,a2,i2,left2,animatetime2);
    })
    
    $(".Navbox").mouseleave(function(){
        $(".Navbox .navli").removeClass("cur")
        $(".navline").animate({"width":0,"left":0},300)
    })

    $(".Navbox .navli").eq(0).removeClass("cur");
    
})