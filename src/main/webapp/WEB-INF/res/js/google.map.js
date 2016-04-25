// Note: This example requires that you consent to location sharing when
// prompted by your browser. If you see the error "The Geolocation service
// failed.", it means you probably did not give permission for the browser to
// locate you.


/**
 *
 */
function sendLocation() {

    var position = {
        lat: infoWindow.getPosition().lat(),
        lng: infoWindow.getPosition().lng()
    };

    console.log(position);

    $.ajax("/imb/map/set/" + position.lat + "/" + position.lng, {
        method: "POST",
        success: function (data) {
            alert(data);
        },
        complete: function (data) {

        }
    });

}

var lastPostion;
var map;
var infoWindow;

function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: -34.397, lng: 150.644},
        zoom: 15
    });
    infoWindow = new google.maps.InfoWindow({map: map});

    // Try HTML5 geolocation.
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            lastPostion = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };

            infoWindow.setPosition(lastPostion);
            infoWindow.setContent('Я тут');
            map.setCenter(lastPostion);
        }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
        });
    } else {
        // Browser doesn't support Geolocation
        handleLocationError(false, infoWindow, map.getCenter());
    }
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
            'Error: The Geolocation service failed.' :
            'Error: Your browser doesn\'t support geolocation.');
}