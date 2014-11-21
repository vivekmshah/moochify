var geocoder;
var map;
var service;

function handleSearchResults(results, status) {

    console.log(results);
    for(var i = 0; i < results.length; i++) {
        var marker = new google.maps.Marker({
            position: results[i].geometry.location,
            map: map
        });
    }

}

function performSearch() {
    var equipment = document.getElementById("equipment").value;

    var request = {
        bounds: map.getBounds(),
        name: equipment
    }
    service.nearbySearch(request, handleSearchResults);

    google.maps.event.addListenerOnce(map, 'bounds_changed', performSearch);

}

function initialize() {

    map = new google.maps.Map(document.getElementById('map-canvas'), {
        zoom: 3,
        center: new google.maps.LatLng(37.2242, -95.7083)
    });

    geocoder = new google.maps.Geocoder();
    
    // Set focus to address field
    document.getElementById('address').focus();

    // Bind click event listener for search button that renders a zip code view
    document.getElementById("search").addEventListener('click', codeAddress, false);

    // Bind click event listener for search button that performs the equipment search
    document.getElementById("search").addEventListener('click', performSearch, false);

    // Bind key-up event listener for address field
    document.getElementById("address").addEventListener('keyup', function (event) {

        // Check the event key code
        if (event.keyCode == 13) {

            // Key code 13 == Enter key was pressed (and released)
            codeAddress();
            performSearch();
            handleSearchResults();
        }
    });

    service = new google.maps.places.PlacesService(map);

}

function codeAddress() {
    
    var address = document.getElementById("address").value;
    
    geocoder.geocode({
        'address': address, "componentRestrictions":{"country":"US"}
    }, function (results, status) {
        
        if (status == google.maps.GeocoderStatus.OK) {
            
            map.setCenter(results[0].geometry.location);
            map.setZoom(12);
            
            var marker = new google.maps.Marker({
                map: map,
                position: results[0].geometry.location
            });

            
            
        } else {
            alert("Geocode was not successful for the following reason: " + status);
        }
    });
}

google.maps.event.addDomListener(window, 'load', initialize);