(function($){
	$.fn.fakeHTML = function( fb_tag, innerhtml , params ){
		var container = $(this);
		params = params || {};
		fb_tag = $("<" +fb_tag + ">"+innerhtml+"</" + fb_tag + ">");
		$.each(params, function( key , value ) {
			fb_tag.attr( key , value );
		});
		fb_tag.appendTo(container);
		$(this).replaceWith(fb_tag);
	};
})(jQuery); 
$(document).ready(function() {
    $(".footer_social_div").find("a").each(function() {
        $(this).mouseenter(function() {
            $(this).animate({
                marginTop: "-=10px",
                marginLeft: "-=10px",
                marginRight: "-=10px",
                height: '70px',
                width: '70px'
            }, 100);
            $(this).find("img").animate({
                marginTop: "-=10px",
                marginLeft: "-=10px",
                marginRight: "-=10px",
                height: '70px',
                width: '70px'
            }, 100);
        });
        $(this).mouseleave(function() {
            $(this).animate({
                marginTop: "+=10px",
                marginLeft: "+=10px",
                marginRight: "+=10px",
                height: '40px',
                width: '40px'
            }, 100);
            $(this).find("img").animate({
                marginTop: "+=10px",
                marginLeft: "+=10px",
                marginRight: "+=10px",
                height: '40px',
                width: '40px'
            }, 100);
        });
    });
    $(".scrollTop").click(function() {
        $('html,body').animate({
            scrollTop: 0
        }, 300, function() {
        });
    });
    $(".bul li p a").each(function() {
        $(this).mouseenter(function() {
            $(this).animate({ 'margin-left': 20 }, 200, function() {
                $(this).animate({ 'margin-left': 0 });
            });

        });
    });
    $(".sitemap li a").each(function() {
        $(this).mouseenter(function() {
            $(this).animate({ 'margin-left': 10 }, 200, function() {
                $(this).animate({ 'margin-left': 0 });
            });

        });
    });
	$("#fb_like").fakeHTML("fb:like","", {"layout":"button_count", "href":"http://www.facebook.com/InnovaSystems"});
	$("#faketwitter").fakeHTML("a", "",{"href":"http://twitter.com/innovaindia", "class":"twitter-follow-button","data-show-count":"false"});
	$("#fakeGoogle").fakeHTML("g:plusone","", {"size":"medium", "callback":"plusone_vote"});
	//parent.$.colorbox({ speed: "1000", html: '<img src="../images/diwali-popup.jpg" alt="Innova Systems wish you a Happy Diwali & Prosperous New Year" />',width: 592, height: 592, overlayClose: false });
});
function openSubmitDlg() {
    if (document.getElementById("txtFullName").value == "" || document.getElementById("txtFullName").value == "Full Name") {
        alert("Enter Your Full Name first.");

    } else if (validatePhone(document.getElementById("txtPhoneNo")) != "") {
        alert(validatePhone(document.getElementById("txtPhoneNo")));

    } else if (validateEmail(document.getElementById("txtEmail")) != "") {
        alert(validateEmail(document.getElementById("txtEmail")));
    }
/*    
    else {
        $('#submitContactUsDiv').fadeTo('slow', 0.8, function() {});
        $("#sessionErrorDiv").html("");
        document.getElementById('captcha').src = 'Cap_Img.jsp';
				
        document.getElementById("submitContactUsDiv").style.display = "block";
        document.getElementById("submitContactUsTable").style.display = "";
    }
*/
}
function validateEmail(fld) {
    var error = "";
    var tfld = fld.value; // value of field with whitespace trimmed off
    var emailFilter = /^[^@]+@[^@.]+\.[^@]*\w\w$/;
    var illegalChars = /[\(\)\<\>\,\;\:\\\"\[\]]/;

    if (fld.value == "") {
        fld.style.background = '#FF8F03';
        error = "You didn't enter an email address.\n";
    } else if (!emailFilter.test(tfld)) { // test email for illegal characters
        fld.style.background = '#FF8F03';
        error = "Please enter a valid email address.\n";
    } else if (fld.value.match(illegalChars)) {
        fld.style.background = '#FF8F03';
        error = "The email address contains illegal characters.\n";
    } else {
        fld.style.background = 'url("images/SubPages/input_bg.jpg") repeat-x scroll left top transparent';
    }
    return error;
}
function validatePhone(fld) {
    var error = "";
    var stripped = fld.value.replace(/[\(\)\.\-\ ]/g, '');
    if (fld.value == "") {
        error = "You didn't enter a phone number.\n";
        fld.style.background = '#FF8F03';
        fld.style.color = 'white';
    } else if (isNaN(parseInt(stripped))) {
        error = "The phone number contains illegal characters.\n";
        fld.style.background = '#FF8F03';
    } else {
        fld.style.background = 'url("images/SubPages/input_bg.jpg") repeat-x scroll left top transparent';
    }
    return error;
}
function closedlg() {
    $('#submitContactUsDiv').fadeOut();
    $('#submitContactUsTable').fadeOut();
    $('#txtFullName').val("Full Name");
    $('#txtPhoneNo').val("Phone Number");
    $('#txtEmail').val("Email");
}
$.fn.preload = function() {
    this.each(function(){
        $('<img/>')[0].src = this;
    });
}
$(['images/submit_ho.png', 	'images/inquiry_ho.png', 'images/reset_ho.png', 'images/drop_hov.jpg', 'images/nav_ho.png', 'images/nav_right_ho.png', 'images/nav_bg_ho.png', 'images/gotop_hover.jpg', 'images/unchecked.gif','images/goto-hover.gif']).preload();