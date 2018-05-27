
$(function(){
	
	var str = " ";
	$.getJSON("json/group.json","",function(data){
		
		$.each(data.sites,function(i,item){
			
			 str += item.url+"name:"+item.name + "<br>";
			$(".groupContent ul.kind li:nth-child("+(i+1)+") > a").html(item.name);
			
		})
	
	})
	
})
