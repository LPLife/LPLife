$(function() {
	$(".mypanel").hide();
	var items = $(".items");
	var panel = $(".mypanel");
	items.on("mousemove", function() {
		var content = $(this)[0].hash;
		$(content).fadeIn(200);
	}).on("mouseleave", function() {
		var content = $(this)[0].hash;
		$(content).fadeOut(10);
	})
	panel.on("mousemove", function() {
		$(this).fadeIn(200);
	}).on("mouseleave", function() {
		$(this).fadeOut(10);
	})

})
window.location.href = "#top";