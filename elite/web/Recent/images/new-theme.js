// JavaScript Document


$(document).ready(function () {
	
	$('a.testv-img').click(function () {
		var Link = $(this).attr('href');
		$('.testv-block').html('<iframe width="100%" height="335" frameborder="0" allowfullscreen="" src="' + Link + '?rel=0&autoplay=1"></iframe>');
		return false;
	});
	
	
	// settings
		var $slider = $('.cus-story'); // class or id of carousel slider
		var $slide = 'li'; // could also use 'img' if you're not using a ul
		var $transition_time = 1000; // 1 second
		var $time_between_slides = 5000; // 4 seconds
		
		
		
		function slides(){
		  return $slider.find($slide);
		}
		
		slides().fadeOut();
		
		// set active classes
		slides().first().addClass('active');
		slides().first().fadeIn($transition_time);
		
		// auto scroll 
		$interval = setInterval(
			function(){
			  var $i = $slider.find($slide + '.active').index();
			
			  slides().eq($i).removeClass('active');
			  slides().eq($i).fadeOut($transition_time);
			
			  if (slides().length == $i + 1) $i = -1; // loop to start
			
			  slides().eq($i + 1).fadeIn($transition_time); 
			  slides().eq($i + 1).addClass('active');
			}
			, $transition_time +  $time_between_slides 
		);
		
	  
	var highestBox = 0;
		$('.contactBox').each(function(){  
				if($(this).height() > highestBox){  
				highestBox = $(this).height();  
		}
	});    
	$('.contactBox').height(highestBox);
	
	
	 $.get("news/", function(data){
			 var NLength =$(data).find('#current .prdBox');
			 var Nhead1 = $(data).find('#scroll .prdBox:eq(0) h2').html();
			 var Ndate1 = $(data).find('#scroll .prdBox:eq(0) .combtmSct').html(); 
			 var Nhead2 = $(data).find('#scroll .prdBox:eq(1) h2').html();
			 var Ndate2 = $(data).find('#scroll .prdBox:eq(1) .combtmSct').html(); 
			 var Nhead3 = $(data).find('#scroll .prdBox:eq(2) h2').html();
			 var Ndate3 = $(data).find('#scroll .prdBox:eq(2) .combtmSct').html();  
		
		$('ol#NewsFeed li:nth-child(1)').html('<h4>'+ Nhead1 +'</h4><p>' + Ndate1 + '</p>');
		$('ol#NewsFeed li:nth-child(2)').html('<h4>'+ Nhead2 +'</h4><p>' + Ndate2 + '</p>');
		$('ol#NewsFeed li:nth-child(3)').html('<h4>'+ Nhead3 +'</h4><p>' + Ndate3 + '</p>');
			
	 });
	
});



