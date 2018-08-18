// console.log('Hello!')
$(document).ready(function() {
	$('#deletePostImg').click(function(e) {
		e.preventDefault();
		$('#deletePostImgCheckBox').slideDown();
		$('#save-check').attr('checked', 'checked');
	});	

	CKEDITOR.replace( 'CKeditor' );
	CKEDITOR.replace( 'CKeditor2' );
});
