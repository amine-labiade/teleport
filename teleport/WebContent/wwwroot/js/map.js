


map = L.map('map', {doubleClickZoom: false}).locate({setView: true, maxZoom: 16});

L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoiYW15d2h5IiwiYSI6ImNrbDE3cjl3eTBlM2Yyb280ZmUxbDc4b2YifQ.iMl78di0CE6P8bCn8qBw8A', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    id: 'mapbox/streets-v11',
    tileSize: 512,
    zoomOffset: -1,
    accessToken: 'your.mapbox.access.token'
}).addTo(map);
