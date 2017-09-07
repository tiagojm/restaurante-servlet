/*$(document).ready(function(){
	$("#navigation ul li").mouseover(function(event){
		$(".submenu").removeClass(".esconder");
	});
});*/

$(document).ready(function(){
	$(".helper").mouseover(
		function(){
			$(".submenu").removeClass("esconder");
		}
		
	);
	$(".helper").mouseout(
		function(){
			$(".submenu").addClass("esconder");
		}
	);
	
	$(".submenu").mouseover(
		function(){
			$(this).removeClass("esconder");
		}
	);
	$(".submenu").mouseout(
		function(){
			$(this).addClass("esconder");
		}
	);
});	
	/*$(".helper").hover(
	function(){
		$(".submenu").removeClass("esconder");
	},
	function(){
		$(".submenu").addClass("esconder");
	}
);
});
	
});*/