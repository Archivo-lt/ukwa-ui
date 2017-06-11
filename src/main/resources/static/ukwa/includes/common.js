//common on load functions
$(document).ready(function(e) {
	
	//bootstrap tooltips
	$('[data-toggle="tooltip"]').tooltip(); 
	$('[data-toggle="tooltip"]').click(function(e) { e.stopPropagation(); });
	
	//radio and check button keyboard
    $(".form-check-cont").each(function(index, element) {
        $(this).on("keypress", function(e) {
			e.stopImmediatePropagation();
			$(this).find("input[type=radio], input[type=checkbox]").trigger("click");
		});
    });
	
	//main menu
	$(".main-menu-button").click(function(e) {
        $(".main-menu").addClass("active");
		$(".main-menu-block").addClass("active");
    });
	
	$(".main-menu-close").click(function(e) {
        $(".main-menu").removeClass("active");
		$(".main-menu-block").removeClass("active");
    });
	
	//sidebar collapse
	$("#toggle-sidebar").click(function(e) {
		if ($(this).hasClass("open")) {
			$(this).addClass("closed");
			$(this).removeClass("open");
			$(".sidebar-collapse").addClass("open");
		} else {
			$(this).addClass("open");
			$(this).removeClass("closed");
			$(".sidebar-collapse").removeClass("open");
		}
	});
	
	//scroll top
	$(".up-button").click(function(e) {
		$("html, body").animate({ scrollTop: 0 }, 600);
	});
	
	//about video
	$("#play-about-video").click(function(e) {
		$("html, body").animate({ scrollTop: "0px" });
        $(".about-full-video-container").fadeIn("slow");
		$("#about-full-video")[0].play();
		$("html").css("overflow","hidden");
    });
	
	$("#close-about-video").click(function(e) {
        $(".about-full-video-container").fadeOut("slow");
		$("#about-full-video")[0].pause();
		$("html").css("overflow","auto");
    });
	
	//replace broken images for collections
	$(".coll-img").each(function(index, element) {
        $(this).on('error', function() {
			var old_img=$(this).attr('src');
			$(this).unbind("error").attr("src", "img/collections/collection_default.png");
			console.log(old_img+' replaced with default image.');
		});
    });
	
	
});
