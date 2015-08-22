function MySlider(){
    var glob = {
        cs : 0,
        pause: 6000,
        duration: 750
    }
    
    this.init = function(params){
        
        if (params.duration) {
            glob.duration = parseInt(params.duration,10);
        }
        
        if (params.pause) {
            glob.pause = parseInt(params.pause,10);
        }
        
        /* Init */
        content.init();
        display.bindControls();
        controls.bindControls();
    }
    
    var display = {
        /* Resize function */
        resize: function(){
            $("#MySlider").css({height: $("#MySlider .slide").height()});
            controls.position();
        },
        
        /* Bind resize listener */
        bindControls: function(){
            $(window).resize(function(){
                display.resize()
            });
        }
    }
    
    var controls = {
        /* Adjust buttons position */
        position: function(){
            $("#MySlider .slidePrev, #MySlider .slideNext").css({
                top: $("#MySlider").height() / 2 - $("#MySlider .slideNext").height() / 2
            });
            
            $("#MySlider .slidePrev").css({left:0});
            $("#MySlider .slideNext").css({right:0});
        },
        
        /* Bind button controls */
        bindControls : function(){
            
            /* Hover effect */
            $("#MySlider .slidePrev, #MySlider .slideNext").on("mouseover", function(){
                $(this).animate({
                    opacity:1
                },{
                    queue:false, 
                    duration:1000,
                    easing:"easeOutCubic"
                });
            });
            
            /* Hover effect - mouseout */
            $("#MySlider .slidePrev, #MySlider .slideNext").on("mouseout", function(){
                $(this).animate({
                    opacity:0.2
                },{
                    queue:false, 
                    duration:1000,
                    easing:"easeOutCubic"
                });
            });
            
            /* Next Button */
            $("#MySlider .slideNext").on("click", function(){
                if ($("#MySlider .slide").is(":animated")) return; 
                
                if ($("#MySlider .slide:eq("+(glob.cs+1)+")").length <= 0) {
                    glob.cs = 0;
                    
                    $("#MySlider .timers .timer .progress").stop();
                    
                    $("#MySlider .timers .timer:last .progress").animate({
                        width:"100%"
                    },{
                        queue:false,
                        duration:glob.duration,
                        easing:"easeOutCubic",
                        complete: function(){
                            $("#MySlider .timers .timer .progress").css({
                                width:"0%"
                            });
                        }
                    });
                } else {
                    glob.cs++;
                    
                    $("#MySlider .timers .timer .progress").stop();
                    $("#MySlider .timers .timer:lt("+glob.cs+") .progress").animate({
                        width:"100%"
                    },{
                        queue:false,
                        duration:glob.duration,
                        easing:"easeOutCubic"
                    });
                    
                }
                content.show();
            });
            
            /* Previous Button */
            $("#MySlider .slidePrev").on("click", function(){
                if ($("#MySlider .slide").is(":animated")) return; 
                
                if (glob.cs <= 0) {
                    glob.cs = $("#MySlider .slide").index();
                    
                    $("#MySlider .timers .timer .progress").stop();
                    $("#MySlider .timers .timer .progress").css({
                        width:"100%"
                    });
                     $("#MySlider .timers .timer:last .progress").animate({
                        width:"0%"
                    },{
                        queue:false,
                        duration:glob.duration,
                        easing:"easeOutCubic"
                    });
                    
                } else {
                    glob.cs--;
                    
                    $("#MySlider .timers .timer .progress").stop();
                    $("#MySlider .timers .timer:gt("+glob.cs+") .progress").css({
                        width:"0%"
                    });
                    $("#MySlider .timers .timer:eq("+glob.cs+") .progress").animate({
                        width:"0%"
                    },{
                        queue:false,
                        duration:glob.duration,
                        easing:"easeOutCubic"
                    });
                }
                content.show();
            });
        }
    }
    
    var content = {
        init: function(){
            /* First run content adjustment */
            
            for (var i = 0; i < $("#MySlider .slide").length; i++){
                $('<div class="timer"><div class="progress"></div></div>').appendTo("#MySlider .timers");
            }
            
            $("#MySlider .timers").css({
                width: ($("#MySlider .timers .timer").length + 1) * 45
            });
            
            $("#MySlider .slide:eq("+glob.cs+")").fadeIn({
                duration:500, 
                easing: "swing"
            });
            
            $("#MySlider").animate({
                height: $("#MySlider .slide:first img").height()
            },{
                queue:false,
                duration:500, 
                easing: "easeInOutExpo", 
                complete: function(){
                    $("#MySlider .slidePrev").animate({
                        left:0
                    },{
                        queue:false,
                        duration:1000, 
                        easing:"easeOutCubic"
                    });
                    
                    $("#MySlider .slideNext").animate({
                        right:0
                    },{
                        queue:false,
                        duration:1000, 
                        easing:"easeOutCubic"
                    });
                    
                    content.showText();
                    controls.position();
                    display.resize();
                    auto.run();
                }
            });
        },
        
        show: function(){
            /* Show slide */
            
            content.hideText();
            
            $("#MySlider .slide:eq("+glob.cs+")").css({
                opacity:0,
                zIndex:2
            }).show().animate({
                opacity:1
            },{
                queue:false,
                duration: glob.duration, 
                easing: "swing", 
                complete: function(){
                    $("#MySlider .slide:lt("+glob.cs+"), #MySlider .slide:gt("+glob.cs+")").css({
                        zIndex:0
                    }).hide();
                   
                    $("#MySlider .slide:eq("+glob.cs+")").css({
                        zIndex:1
                    });
                    content.showText();
                    auto.run();
                }
            });
        },
        
        showText: function(){
            /* Show slide text */
            
             $("#MySlider .slide:eq("+glob.cs+") .title").animate({
                opacity:1,
					marginTop : '0px'
            },{
                queue:false,
                duration:300,
                easing:"swing"
            });
            
            setTimeout(function(){
                $("#MySlider .slide:eq("+glob.cs+") .description").animate({
                    opacity:1,
					marginTop : '0px'
                },{
                    queue:false,
                    duration:300,
                    easing:"swing"
                });
            },150)
            
            setTimeout(function(){
                $("#MySlider .slide:eq("+glob.cs+") .readmore").animate({
                    opacity:1,
					marginTop : '0px'
                },{
                    queue:false,
                    duration:300,
                    easing:"swing"
                });
            },300)
            
            
        },
        hideText: function(){
            /* Hide slide text */
            
            $("#MySlider .slide .title").animate({
                opacity:0
            },{
                queue:false,
                duration:300,
                easing:"swing"
            });
            
            setTimeout(function(){
                $("#MySlider .slide .description").animate({
                    opacity:0
                },{
                    queue:false,
                    duration:300,
                    easing:"swing"
                });
            },150)
            
            setTimeout(function(){
                $("#MySlider .slide .readmore").animate({
                    opacity:0
                },{
                    queue:false,
                    duration:300,
                    easing:"swing"
                });
            },300)
            setTimeout(function(){
				$("#MySlider .slide .title, #MySlider .slide .description, #MySlider .slide .readmore").css('margin-top','-10px');
			},500)
            
        }
    }
    
    var auto = {
        /* Run timer */
        run: function(){
            $("#MySlider .timer:eq("+glob.cs+") .progress").animate({
                width:"100%" 
            },{
                queue:false,
                duration: (glob.pause - (glob.pause/100)*((($("#MySlider .timer:eq("+glob.cs+") .progress").width() / $("#MySlider .timer:eq("+glob.cs+")").width()) * 100))), 
                easing:"linear", 
                complete: function(){
                    $("#MySlider .slideNext").trigger("click");
                }
            });
        }/*,
        
         Stop on focus 
        focus: function(){
            $("#MySlider .slide_content").on("mouseover", function(){
                if ($("#MySlider .slide").is(":animated")) return;
                $("#MySlider .timer .progress").stop();
            });
            
            $("#MySlider .slide_content").on("mouseleave", function(){
                if ($("#MySlider .slide").is(":animated")) return;
                auto.run();
            });
        }*/
    }
}
/*
$(window).load(function(){
	new MySlider().init({
		duration: "1000", /* Fade Speed (miliseconds) */
/*		pause:    "6000"  Autoslide pause between slides (miliseconds)*/
/*	});
});*/