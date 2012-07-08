// JavaScript Document

$(function() {
	//Ajaxリクエスト
	//現在時刻を持たせてリクエストする
	//jsonで渡ってきたデータ
	//$name
	//$tel
	//$email
	$('#receive').click(function() {
		
		//Ajaxポストする
		$.getJSON ('http://shunsuke.make-bump.shka.net/receive.php?callback=?',
			
			function(json) {
				var TZ = +9;
				var date = unixtimeToDate(json.time, TZ);
				
				if(json != null) {
					
					console.log(json);
				
					$('#receive-info').html('<p>名前 : ' + json.name + '</p><p>電話番号 : ' + json.tel + '</p><p>Email : ' + json.email +'</p><p>取得時刻 : ' + date + '</p>');
				
				} else {
					$('#receive-info').html('<p>データが取得できませんでした</p>');
				}
			}
			
		);		
		
		
		return false;
		
	});
});

function unixtimeToDate (ut, TZ) {
	var tD = new Date ( ut * 1000);
	tD.setTime( tD.getTime() + (60*60*1000*TZ) );
	return tD;
}