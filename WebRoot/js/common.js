/**
 *
 * @authors hechuanhua(447503467@qq.com)
 * @date    2014-11-11 15:32:46
 * @version $Id$
 */
/*var b_v=navigator.appVersion,IE6=-1!=b_v.search(/MSIE 6/i),IE7=-1!=b_v.search(/MSIE 7/i);(IE6||IE7)&&(alert("你的浏览器版本过低，请升级你的浏览器或者更换其他浏览器"),window.opener=null,window.open("","_self"),window.close()),$(function(){$("#gongzhonghao").mouseover(function(){$(this).children(".qr_tooldiv").show(),$(this).children(".qt_tooldiv").show()}),$("#gongzhonghao_wrap").mouseleave(function(){$(this).find(".qr_tooldiv").hide(),$(this).find(".qt_tooldiv").hide()}),$("#gongzhonghao2").mouseover(function(){$(this).children(".qr_tooldiv2").show()}),$("#gongzhonghao2_wrap").mouseleave(function(){$(this).find(".qr_tooldiv2").hide()}),function(a){a("#i").mouseover(function(){a(this).children(".more_nav").show()}).mouseout(function(){a(this).children(".more_nav").hide()})}(jQuery),function(a){var c,d,e,f,b=document.location.href;for("http://wbg.do1.com.cn/"==b&&a("#nav").find("li").eq(0).addClass("active"),c=1;c<a("#nav li").length-1;c++)d=a("#nav").find("a").eq(c).attr("href").match(/[^\/]+\//i),d[0]&&b.indexOf(d[0])>-1&&(4==c||5==c?(e=a("#nav").find("a").eq(c).attr("href").match(/[^\/]+\/[^\/]+\//i),e[0]&&b.indexOf(e[0])>-1&&a("#nav").find("li").eq(3).addClass("active")):b.indexOf("plus")>-1?a("#nav").find("li").eq(2).addClass("active"):a("#nav").find("li").eq(c).addClass("active"));a(".apply_l a").each(function(c,d){d.href&&b.indexOf(d.href)>-1&&(a(d).parent().addClass("active"),a("#nav").find("li").eq(1).addClass("active"))}),c=1,f=a("#imgbox img").length,f>3&&a(".jt").show(),a(".jtr").click(function(){c+3>f||(a("#imgbox").stop(!0,!0).animate({left:-228*c},"fast"),c++)}),a(".jtl").click(function(){1!=c&&(a("#imgbox").stop(!0,!0).animate({left:-228*(c-2)},"fast"),c--)})}(jQuery),function(a){var e,f,g,h,b=a(".more-leftNav > a").length,c=document.location.href.substr(21),d=a(".more-leftNav > a").eq(0).attr("href");for(e=0;b>e;e++)c===a(".more-leftNav > a").eq(e).attr("href")&&a(".more-leftNav > a").eq(e).addClass("active");for(c.indexOf("list")>-1&&c.indexOf(d)>-1&&a(".more-leftNav > a").eq(0).addClass("active"),f=a(".num").length,e=0;f>e;e++)"()"===a(".num").eq(e).html()&&a(".num").eq(e).html("(0)");a(".line span").css("top",35*a(".more-leftNav >a.active").index()+"px"),g=a(".line span").attr("style"),a(".more-leftNav > a").mousemove(function(){0!=a(this).index()&&a(".line span").css("top",35*a(this).index()+"px")}).mouseout(function(){a(".line span").attr("style",g)}),h=a("#lanmuSpan").css("left"),a(".lanmuList a").mouseenter(function(){0==a(this).index()&&a("#lanmuSpan").css("left","-10px"),1==a(this).index()&&a("#lanmuSpan").css("left","200px"),2==a(this).index()&&a("#lanmuSpan").css("left","400px"),3==a(this).index()&&a("#lanmuSpan").css("left","600px")}),a(".lanmuList").mouseleave(function(){a("#lanmuSpan").css("left",h)}),a(".more-leftNav .title").mouseenter(function(){a(this).children(".popMenu").fadeIn()}).mouseleave(function(){a(this).children(".popMenu").fadeOut()})}(jQuery),function(a){function e(){var f,g,e=a(document).scrollTop();for(f=0;c>f;f++)d.eq(f).offset().top>=e&&d.eq(f).offset().top<=parseInt(e)+parseInt(b)&&(g=d.eq(f).clone(),g.attr("src",d.eq(f).attr("data-src")).removeAttr("data-src").hide(),d.eq(f).replaceWith(g),g.fadeIn())}var b=a(window).height(),c=a("body img[data-src]").length,d=a("body img[data-src]");e(),a(window).scroll(function(){e()})}(jQuery)});
*/
/*var b_v=navigator.appVersion;var IE6=b_v.search(/MSIE 6/i)!=-1;var IE7=b_v.search(/MSIE 7/i)!=-1;if(IE6||IE7){alert("你的浏览器版本过低，请升级你的浏览器或者更换其他浏览器");window.opener=null;window.open("","_self");window.close()}*/
$(function() {
    $('#gongzhonghao').mouseover(function() {
        $(this).children('.qr_tooldiv').show();
        $(this).children('.qt_tooldiv').show();
    })
    $('#gongzhonghao_wrap').mouseleave(function(event) {
        $(this).find('.qr_tooldiv').hide();
        $(this).find('.qt_tooldiv').hide();
    });
    $('#gongzhonghao2').mouseover(function() {
        $(this).children('.qr_tooldiv2').show();
    })
    $('#gongzhonghao2_wrap').mouseleave(function(event) {
        $(this).find('.qr_tooldiv2').hide();
    });
    //更多菜单按钮
    /*(function($) {
        $('#i').mouseover(function() {
            $(this).children('.more_nav').show();
        }).mouseout(function() {
            $(this).children('.more_nav').hide();
        })

    }(jQuery));*/
    //导航栏添加active
    (function($) {
        var url = document.location.href;
        /*if (url == 'http://wbg.do1.com.cn/') {
            $('#nav').find('li').eq(0).addClass('active')
        }*/
        for (var i = 0; i < $('#nav li').length; i++) {//导航
            var str = $('#nav').find('a').eq(i).attr('href').match(/[^\/]+\//i)
            if (url.indexOf(str[0]) > -1) {
                /*if(i==4){
                    $('#nav').find('li').eq(4).addClass('active')
                    var str1=$('#nav').find('a').eq(i).attr('href').match(/[^\/]+\/[^\/]+\//i);
                    if (url.indexOf(str1[0]) > 0){
                        $('#nav').find('li').eq(4).addClass('active')
                    }
                    if (url.indexOf('More/About')>-1){
                        $('#nav').find('li').eq(7).addClass('active')
                    }
                    if(url.indexOf('More/Dynamic')>-1||url.indexOf('More/About')>-1){
                        $('#i i').css('borderColor', '#ff9600 transparent transparent');
                    }
                }else{
                    $('#nav').find('li').eq(i).addClass('active')
                }*/
                $('#nav').find('li').eq(i).addClass('active')
            }
        }
        // 改版应用与套件
        /*$('.apply_l a').each(function(index, el) {
            if(el.href&&url.indexOf(el.href)>-1){
                $(el).parent().addClass('active');
                 $('#nav').find('li').eq(0).addClass('active')
            }
        });*/

        // var len=$('.more-head-b a').length;
        // for(var i=0;i<len;i++){//应用头部
        //     var str = $('.more-head-b').find('a').eq(i).attr('href').match(/[^\.]+/i);
        //     if(url.indexOf(str[0]) > -1){
        //         $('.more-head-b').find('a').eq(i).addClass('active');
        //     }
        // }
        var i=1;
        var len=$('#imgbox img').length;
        if(len>3){
            $('.jt').show();
        }
        $('.jtr').click(function(){
            if((i+3)>len){
                return
            }else{
              $('#imgbox').stop(true,true).animate({'left': -228*i},'fast');
              i++;
            }

        })
         $('.jtl').click(function(){
            if(i==1){
                return
            }else{
                $('#imgbox').stop(true,true).animate({'left': -228*(i-2)},'fast');
                 i--;
            }
        });
    }(jQuery));
    (function($) {
        // 左侧菜单栏根据链接添加active
        var alen=$('.more-leftNav > a').length;
        var url=document.location.href.substr(21);
        var href=$('.more-leftNav > a').eq(0).attr('href');
        for(var i=0;i<alen;i++){
            if(url===$('.more-leftNav > a').eq(i).attr('href')){
                $('.more-leftNav > a').eq(i).addClass('active');
            }
        }
        if(url.indexOf('list')>-1&&url.indexOf(href)>-1){
              $('.more-leftNav > a').eq(0).addClass('active');
        }
        // 左侧菜单栏添加top滑动状态
        var num=$('.num').length;
        for(var i=0;i<num;i++)
            // 如果发布条数为空，则显示为0
        if($('.num').eq(i).html()==='()'){
            $('.num').eq(i).html("(0)");
        }
        // 左侧菜单栏根据.active添加top值
        $('.line span').css('top', $('.more-leftNav >a.active').index() * 35 + 'px');
        var cssText = $('.line span').attr('style');
        // 滑动效果
        $('.more-leftNav > a').mousemove(function() {
            if ($(this).index() != 0) {
                $('.line span').css('top', $(this).index() * 35 + 'px');
            }
        }).mouseout(function() {
            $('.line span').attr('style', cssText);
        })
        // 栏目滑动效果
        var left=$('#lanmuSpan').css('left');
        $('.lanmuList a').mouseenter(function(){
            if($(this).index()==0){
                $('#lanmuSpan').css('left', '-10px');
            }
            if($(this).index()==1){
                $('#lanmuSpan').css('left', '200px');
            }
            if($(this).index()==2){
                $('#lanmuSpan').css('left', '400px');
            }
            if($(this).index()==3){
                $('#lanmuSpan').css('left', '600px');
            }
        })
        $('.lanmuList').mouseleave(function(event) {
            $('#lanmuSpan').css('left',left);
        });
        // 左侧弹出菜单
        $('.more-leftNav .title').mouseenter(function(){
            $(this).children('.popMenu').fadeIn();
        }).mouseleave(function(){
            $(this).children('.popMenu').fadeOut();
        })
    }(jQuery));
    (function($){//图片懒加载
        var h=$(window).height();
        var imglen=$('body img[data-src]').length;
        var img=$('body img[data-src]');
        function LJZ(){
        var Stop=$(document).scrollTop();
        for(var i=0;i<imglen;i++){
            if(img.eq(i).offset().top>=Stop&&img.eq(i).offset().top<=parseInt(Stop)+parseInt(h)){
                var Oimg=img.eq(i).clone();
                Oimg.attr('src',img.eq(i).attr('data-src')).removeAttr('data-src').hide();
                img.eq(i).replaceWith(Oimg);
                Oimg.fadeIn();
             }}
        }
        LJZ();
        $(window).scroll(function(){
            LJZ();
          })
    }(jQuery))
})
