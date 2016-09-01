var map;
jQuery(document).ready(function(){
	if( jQuery("#map").length ){
		map = new GMaps({
			el: '#map',
			lat: tokooMaps.latitude,
			lng: tokooMaps.longitude,
			zoom : parseInt( tokooMaps.zoom ),
			options: {
				scrollwheel: false,
			}

		});

		var markerTitle = "<h2>"+tokooMaps.marker_title+"</h2>";
		var markerContent = "<p><"+tokooMaps.marker_content+"</p>";

		map.addMarker({
			lat: tokooMaps.latitude,
			lng: tokooMaps.longitude,
			title: 'Marker with InfoWindow',
			infoWindow: {
				content: markerTitle + markerContent,
			}
		});
	}


	if( jQuery("#map-component").length ){
		var latitude = jQuery("#map-component").data("lat");
		var longitude = jQuery("#map-component").data("long");
		var mTitle = jQuery("#map-component").data("marker-title");
		var mContent = jQuery("#map-component").data("marker-content");

		var mapC = new GMaps({
			el: "#map-component",
			lat: parseFloat(latitude),
			lng: parseFloat(longitude),
			zoom : 15,
			options: {
				scrollwheel: false,
			}
		});

		var markerTitle = "<h2>"+mTitle+"</h2>";
		var markerContent = "<p>"+mContent+"</p>";

		mapC.addMarker({
			lat: parseFloat(latitude),
			lng: parseFloat(longitude),
			title: 'Marker with InfoWindow',
			infoWindow: {
			  content: markerTitle + markerContent,
			}
		});
	}

	if ( jQuery(".tokoo-dynamic-maps-no-marker").length ) {
		var mapslatitude 		= jQuery(".tokoo-dynamic-maps-no-marker").data("lat");
		var mapslongitude 		= jQuery(".tokoo-dynamic-maps-no-marker").data("long");
		var mapsMarkerTitle 	= jQuery(".tokoo-dynamic-maps-no-marker").data("marker-title");
		var mapsMarkerContent 	= jQuery(".tokoo-dynamic-maps-no-marker").data("marker-content");

		var tokooDynamicMaps = new GMaps({
			el: ".tokoo-dynamic-maps-no-marker",
			lat: parseFloat(mapslatitude),
			lng: parseFloat(mapslongitude),
			zoom : 15,
			scrollwheel: false,
			disableDefaultUI: true,
        	mapTypeControl: false,
            panControl: false,
            zoomControl: false,
            scaleControl: false,
            streetViewControl: false,
            rotateControl: false,
            rotateControlOptions: false,
            overviewMapControl: false,
            OverviewMapControlOptions: false

		});
	}

	if ( jQuery(".tokoo-dynamic-maps-with-marker").length ) {
		var mapslatitude 		= jQuery(".tokoo-dynamic-maps-with-marker").data("lat");
		var mapslongitude 		= jQuery(".tokoo-dynamic-maps-with-marker").data("long");
		var mapsMarkerTitle 	= jQuery(".tokoo-dynamic-maps-with-marker").data("marker-title");
		var mapsMarkerContent 	= jQuery(".tokoo-dynamic-maps-with-marker").data("marker-content");

		var tokooDynamicMapsWM = new GMaps({
			el: ".tokoo-dynamic-maps-with-marker",
			lat: parseFloat(mapslatitude),
			lng: parseFloat(mapslongitude),
			zoom : 15,
			scrollwheel: false,

		});

		tokooDynamicMapsWM.addMarker({
			lat: parseFloat(latitude),
			lng: parseFloat(longitude),
			title: 'Marker with InfoWindow',
			infoWindow: {
			  content: markerTitle + markerContent,
			}
		});
	}
});
