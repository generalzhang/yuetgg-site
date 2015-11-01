// JavaScript Document
    var t = n = 0, count;
    $(document).ready(function(){    
        count=$("#bpic_list a").length;
        $("#bpic_list a:not(:first-child)").hide();
       
        $("#bpic li").click(function() {
            var i = $(this).text() - 1;
            n = i;
            if (i >= count) return;
            
            $("#bpic_list a").filter(":visible").fadeOut(2000).parent().children().eq(i).fadeIn(2000);
            document.getElementById("bpic").style.background="";
            $(this).toggleClass("on");
            $(this).siblings().removeAttr("class");
        });
        t = setInterval("showAuto()", 5000);
        $("#bpic").hover(function(){clearInterval(t)}, function(){t = setInterval("showAuto()", 3000);});
    })
    
    function showAuto()
    {
        n = n >=(count - 1) ? 0 : ++n;
        $("#bpic li").eq(n).trigger('click');
    }
	
	