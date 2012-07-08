// JavaScript Document
$(function(){
	
	$('#geolocation_getPosition').click(function() {
		
		if(navigator.geolocation) {
			getPosition();
		} else {
			yqlgeo.get('visitor', normalize_yql_response);
		}
	})
});


//GPSセンサーから現在の方位を取得

function getPosition() {
	navigator.geolocation.getCurrentPosition (
		function(position) {
			$('#geolocation_position').html(
				'緯度: ' + position.coords.latitude + '<br>' +
				'経度: ' + position.coords.longitude + '<br>' +
				'高度: ' + position.coords.altitude + '<br>' +
				'位置精度: ' + position.coords.accuracy + '<br>' +
				'高度精度: ' + position.coords.altitudeAccuracy + '<br>' +
				'方位: ' + position.coords.heading + '<br>' +
				'速度: ' + position.coords.speed
			);
			
			$('#geolocation_timestamp').html('日付:'+new Date(position.timestamp).toString());
			
			$('#geolocation_viewmap')
				.attr('href', 'geo:'+position.coords.latitude+','+position.coords.longitude)
				.css('display', 'block');
		},
		function(error) {
			alert(error.message);
		},
		{
			enableHighAccuracy : true,
			timeout : 10000,
			maximumAge : 5000,
		}
	);
}


