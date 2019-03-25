/*var obj=null;
var As=document.getElementById('nav').getElementsByTagName('a');
obj = As[0];
for(i=1;i<As.length;i++){if(window.location.href.indexOf(As[i].href)>=0)
obj=As[i];}
obj.id='nav_current'
*/

window.onload = function ()
{
	var oLi = document.getElementById("tab").getElementsByTagName("li");
	var oUl = document.getElementById("content").getElementsByTagName("ul");
	
	for(var i = 0; i < oLi.length; i++)
	{
		oLi[i].index = i;
		oLi[i].onmouseover = function ()
		{
			for(var n = 0; n < oLi.length; n++) oLi[n].className="";
			this.className = "current";
			for(var n = 0; n < oUl.length; n++) oUl[n].style.display = "none";
			oUl[this.index].style.display = "block";
			
		}	
	}
}


var t = count = n = 0;
$(function(){
	$(".big_img a:not(:first)").hide();
	$(".link_nav a:not(:first)").hide();
	$num_nav = $(".num_nav span");
	$big_img = $(".big_img a");
	count = $big_img.length;
	t = setInterval("showAuto()",3000);  
	
	$num_nav.click(function(){
		var num_nav = $(".num_nav span").index(this);
		$(this).addClass("selected").siblings().removeClass("selected");
		$big_img.filter(":visible").fadeOut(500).parent().children().eq(num_nav).fadeIn(1000); 
		$(".link_nav a").filter(":visible").fadeOut(500).parent().children().eq(num_nav).fadeIn(1000); 
	});
	$(".img_nav").hover(function(){clearInterval(t)}, function(){t = setInterval("showAuto()", 3000);}); 
})

function showAuto()   
{   
	n = n >= 2 ? 0 : (n + 1);   
	$num_nav.eq(n).trigger('click');   
}

