// JavaScript Document

$(function() {
	$('#btn').click(function() {
		var time = parseInt(new Date() / 1000 );
		//Ajaxポストする
		$.getJSON ('http://shunsuke.make-bump.shka.net/?callback=?',
			
			{
				'name' : $('#name').val(),
				'tel' : $('#tel').val(),
				'email' : $('#email').val(),
				'time' : time,
			},
			
			function(json) {
				alert(json.msg);
			}
			
		);		
		
		
		return false;
		
	});
});