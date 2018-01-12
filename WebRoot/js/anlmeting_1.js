$(function() {
    var tabBtn = $(".tabbox>ul>li");
    $(tabBtn[0]).on("mouseover", function() {
        $(".tabcontent").css("background", "url(/templets/default/images/nianhui2017/gif/nalmeeting_3dsignin.gif) no-repeat center");
    });
    $(tabBtn[1]).on("mouseover", function() {
        $(".tabcontent").css("background", "url(/templets/default/images/nianhui2017/gif/nalmeeting_signin.gif) no-repeat center");
    });
    $(tabBtn[2]).on("mouseover", function() {
        $(".tabcontent").css("background", "url(/templets/default/images/nianhui2017/gif/nalmeeting_shake.gif) no-repeat center");
    });
    $(tabBtn[3]).on("mouseover", function() {
        $(".tabcontent").css("background", "url(/templets/default/images/nianhui2017/gif/nalmeeting_barrage.gif) no-repeat center");
    });
    $(tabBtn[4]).on("mouseover", function() {
        $(".tabcontent").css("background", "url(/templets/default/images/nianhui2017/gif/nalmeeting_lotto.gif) no-repeat center");
    });
    $(tabBtn[5]).on("mouseover", function() {
        $(".tabcontent").css("background", "url(/templets/default/images/nianhui2017/gif/nalmeeting_vote.gif) no-repeat center");
    });

    // 悬浮框可复用
    //设置滚动条到一定位置悬浮框隐藏
    var dataHeight = $(".getmeetingdata").offset().top;
    $(window).scroll(function() {
        var this_scrollTop = $(this).scrollTop();
        if (this_scrollTop >= (dataHeight - 850)) {
            $(".hoverbox").hide();
        } else {
            $(".hoverbox").show();
        }
    });

    //设置点击X悬浮框隐藏
    $(".hoverexit").on("click", function() {
        $(".hoverbox").hide();
        dataHeight = 0;
    })
    // 设置点击退出关闭窗口
    $(".datamsgexit").on("click", function() {
        $('.nianhui-mask').hide();
        $('.last-databox').hide();
    })
    //查看更多logo
    $('#showLogo').click(function() {
        $(this).parent().prev().css('height', '475px');
        $(this).hide();
    })

    var clientIP = returnCitySN["cip"];
    //设置点击按钮提交并弹框
    $('#btnNianHui').on('click', function(event) {
        $('#inpTime').val(new Date().getFullYear() + '年' + (new Date().getMonth() + 1) + '月' + new Date().getDate() + '日' + new Date().getHours() + '时' + new Date().getMinutes() + '分' + new Date().getSeconds() + '秒');
        if ($('.dataname').val() == '') {
            alert('请填写您的姓名');
            return false;
        }
        if ($('.datacompany').val() == '') {
            alert('请填写您的公司名称');
            return false;
        }
        if ($('.dataphone').val() == '') {
            alert('请填写您的手机号码');
            return false;
        }
        if (!(/^[0-9]*[1-9][0-9]*$/).test($('.dataphone').val()) || $('.dataphone').val().length != 11) {
            $(this).css('pointer-events', 'auto');
            alert('手机号码必须为11位数字');
            return false;
        }
        if ($('.datawork').val() == '') {
            alert('请填写您的职位');
            return false;
        }
        $.ajax({
            url: 'http://qwthird.do1.com.cn/qwcgi/portal/outerintf/user!addOrgDeptUser.action',
            type: 'POST',
            dataType: 'json',
            data: {
                orgId: '7bed74d8-1413-4f12-9b38-e491e55c30da',
                personName: $('.dataname').val(),
                mobile: $('.dataphone').val(),
                position: $('.datacompany').val() + "&" + $('.datawork').val(),
                deptName: '2016企微体验D组',
                mark: '企微年会' + '@ip' + clientIP
            },
            success: function(data) {
                console.log(data)
                if (data.code == '0') {
                    $('.nianhui-mask').show();
                    $('.last-databox').show();
                    $('.inp-nianhui').val('');

                } else {
                    //alert(data.desc);
                    $('.nianhui-mask').show();
                    $('.last-databox').show();
                    $('.inp-nianhui').val('');
                }
            },
            error: function() {
                alert('发生未知错误,请重试');
            }
        });
    })
})
