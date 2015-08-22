$(document).ready(function() {
	$("#frmInquire").validate( {
		rules : {
			txtEmailId : {
				required : true,
				email : true
			},
			txtCompany : {
				required : true
			},
			txtPhone : {
				required : true
			},
			txtName : {
				required : true
			},
			txtService : {
				required : true
			},
			txtDetails : {
				required : true
			},
			user_code : {
				required : true
			}
		}
	});
});