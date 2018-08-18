

function initMap(){

    let isDraggable;

    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)){
        isDraggable = false;
    } else {
        isDraggable = true;
    }


    const  map = new google.maps.Map(document.getElementById('map'),{
        center : city,
        zoom : 8,
        disableDefaultUI: true,
        draggable: isDraggable,
        styles: [{"featureType":"landscape.natural","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#e0efef"}]},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"hue":"#1900ff"},{"color":"#c0e8e8"}]},{"featureType":"road","elementType":"geometry","stylers":[{"lightness":100},{"visibility":"simplified"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"transit.line","elementType":"geometry","stylers":[{"visibility":"on"},{"lightness":700}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#61dac9"}]}]
    });

    let cityMarker = new google.maps.Marker({
        position : city,
        map : map,
        title: markerTitle,
        icon: '../templates/assets/img/googleMap/pin-green.png'

});



}

