
window.initMap = function () {
var polygonCoords = document.getElementById('map').dataset.polygon;
console.log(polygonCoords);
var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 5,
    mapTypeId: 'terrain'
});

var polygon = new google.maps.Polygon({
    paths: polygonCoords,
    strokeColor: '#FF0000',
    strokeOpacity: 0.8,
    strokeWeight: 2,
    fillColor: '#FF0000',
    fillOpacity: 0.35
});
polygon.setMap(map);

var bounds = new google.maps.LatLngBounds();
for (i = 0; i < polygonCoords.length; i++) {
    bounds.extend(new google.maps.LatLng(polygonCoords[i].lat, polygonCoords[i].lng));
}
map.fitBounds(bounds);
}
