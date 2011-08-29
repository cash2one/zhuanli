$(document).ready(function(){
    // Disable certain links in docs
    // =============================
    $('ul.tabs a, ul.pills a, .pagination a, .well .btn, .actions .btn, .alert-message .btn, a.close ,#sidebar a').click(function(e) {
    	e.preventDefault();
    });

    //variables
    var $nav= $('#topbar ul') 
    var $tabs=$('#tabs li')
    var $sidebar=$('#sidebar li')
    var $minicontent=$('#minicontent')
    var $window=$(window)
    var $content=$('#content')

    //Dropdown menu
    $("body").bind("click", function(e) {
	$("ul.menu-dropdown").hide();
	$('a.menu').parent("li").removeClass("open").children("ul.menu-dropdown").hide();
    });

    $("a.menu").click(function(e) {
	var $target = $(this);
	var $parent = $target.parent("li");
	var $siblings = $target.siblings("ul.menu-dropdown");
	var $parentSiblings = $parent.siblings("li");
	if ($parent.hasClass("open")) {
	    $parent.removeClass("open");
	    $siblings.hide();
	} else {
	    $parent.addClass("open");
	    $siblings.show();
	}
	$parentSiblings.children("ul.menu-dropdown").hide();
	$parentSiblings.removeClass("open");
	return false;
    });
    
    //load tabs
    //<li>s
    $tabs.click(function(e)
		 {
		     var $this=$(this),
		     $a=$this.find("a"),
		     $href=$a.attr("href");
		     $this.addClass("active").siblings().removeClass("active");
		     $content.load($href);
		 }
	       )
    
    
});