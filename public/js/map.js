var map = L.map("map").setView([-6.1145, 106.1623], 13);
L.tileLayer("http://{s}.tile.osm.org/{z}/{x}/{y}.png", {
    attribution: "Leaflet &copy; OpenStreetMap",
    maxZoom: 18,
}).addTo(map);

var blueMarkerIcon = L.icon({
    iconUrl: "assets/img/taxi.png",
    iconSize: [70, 70],
});

// Add markers for terminal locations
L.marker([-6.1183255131450505, 106.16994885563196], { icon: blueMarkerIcon })
    .bindPopup("Ahmad Yani-Kepandean PP")
    .addTo(map);

L.marker([-6.123555338147862, 106.17141287666796], { icon: blueMarkerIcon })
    .bindPopup("Cipocok")
    .addTo(map);
L.marker([-6.109251631462418, 106.16776001476646], { icon: blueMarkerIcon })
    .bindPopup("Pasar Rau")
    .addTo(map);
L.marker([-6.148818629321701, 106.19189109680713], { icon: blueMarkerIcon })
    .bindPopup("Polda Banten")
    .addTo(map);
L.marker([-6.130648344612414, 106.16115755981039], { icon: blueMarkerIcon })
    .bindPopup("Simpang Boru")
    .addTo(map);
L.marker([-6.2079136378707584, 106.35752252049565], { icon: blueMarkerIcon })
    .bindPopup("Terminal Cikande")
    .addTo(map);
L.marker([-6.189568825486181, 106.46365785670349], { icon: blueMarkerIcon })
    .bindPopup("Terminal Balaraja")
    .addTo(map);
L.marker([-6.121550248571412, 106.19649696235386], { icon: blueMarkerIcon })
    .bindPopup("Terminal Pakupatan Serang")
    .addTo(map);

var taxiIcon = L.icon({
    iconUrl:
        "https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/images/marker-icon.png",
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
    shadowSize: [41, 41],
});

var marker; // Marker will be created if geolocation is allowed
var routingControl;

// Get user's current location
function getUserLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(
            function (position) {
                var userLat = position.coords.latitude;
                var userLon = position.coords.longitude;
                marker = L.marker([userLat, userLon], { icon: taxiIcon }).addTo(
                    map
                );
                map.setView([userLat, userLon], 13);
                document.getElementById("start-location").innerHTML =
                    `<option value="current">Lokasi Anda</option>` +
                    document.getElementById("start-location").innerHTML;
            },
            function () {
                alert(
                    "Geolocation service failed. Please allow location access."
                );
            }
        );
    } else {
        alert("Geolocation is not supported by this browser.");
    }
}

getUserLocation();

function calculateRoute() {
    var start = document.getElementById("start-location").value;
    var end = document.getElementById("end-location").value.split(",");

    // Get start location as lat/lng
    if (start === "current" && marker) {
        start = [marker.getLatLng().lat, marker.getLatLng().lng];
    } else if (start !== "current") {
        start = start.split(",");
    }

    if (routingControl) {
        map.removeControl(routingControl);
    }

    // Update route display
    var startLocationName = document.querySelector(
        "#start-location option:checked"
    ).text;
    var endLocationName = document.querySelector(
        "#end-location option:checked"
    ).text;

    // Calculate the route
    routingControl = L.Routing.control({
        waypoints: [L.latLng(start[0], start[1]), L.latLng(end[0], end[1])],
        createMarker: function () {
            return null;
        },
        show: false,
    })
        .on("routesfound", function (e) {
            var route = e.routes[0];
            var distance = route.summary.totalDistance / 1000; // Convert from meters to kilometers
            var duration = route.summary.totalTime / 60; // Convert from seconds to minutes

            Swal.fire({
                title: "Rute Ditemukan!",
                html: `
        <strong>JARAK TUJUAN:</strong> ${distance.toFixed(2)} km<br>
        <strong>DURASI:</strong> ${duration.toFixed(0)} minutes<br>
        <strong>TUJUAN:</strong> ${startLocationName} - ${endLocationName}
    `,
                icon: "success",
            });
        })
        .addTo(map);
}
