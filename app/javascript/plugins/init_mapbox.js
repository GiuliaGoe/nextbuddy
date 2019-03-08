import mapboxgl from 'mapbox-gl';

const mapMarkers = {};

const selectUser = (userId) => {
  // Zoom the map
  // Change appeareance of marker
  console.log(mapMarkers[userId]);
  const marker = mapMarkers[userId];
  const markerElement = marker.getElement();
  markerElement.style.backgroundColor = 'red';
  // Change the appeareance of the item in the list
}


const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  };


  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const el = document.createElement('div');
      el.style.width = 40 + 'px';
      el.style.height = 40 + 'px';
      el.style.backgroundColor = 'black';
      el.addEventListener('click', function() {
        selectUser(marker.user_id)
      } )
      mapMarkers[marker.user_id] = new mapboxgl.Marker(el)
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    });
    fitMapToMarkers(map, markers);
    // selectUser(5);
  }
};

// const cards = getElementsByClassName("card-user")


export { initMapbox };
