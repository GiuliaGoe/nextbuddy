import mapboxgl from 'mapbox-gl';

const mapMarkers = {};
let map = null

const selectUser = (userId) => {
  console.log(mapMarkers[userId]);
  const marker = mapMarkers[userId];
  // Zoom the map
  const lngLat = marker.getLngLat();
  console.log(lngLat);
  // map.setCenter();
  map.flyTo({center: [lngLat.lng, lngLat.lat], zoom: 12, speed: 2.5});

  // Change appeareance of marker
  const markerElement = marker.getElement();
  const oldMarkers = document.getElementsByClassName('map-marker-active');
  if (oldMarkers[0]) {
    oldMarkers[0].classList.remove('map-marker-active');
  }
  markerElement.classList.add('map-marker-active');
  // Change the appeareance of the item in the list
  const card = document.querySelector(`[data-user-id='${userId}']`);
  const oldCards = document.getElementsByClassName('card-user-active');
  if (oldCards[0]) {
    oldCards[0].classList.remove('card-user-active');
  }
  card.classList.add('card-user-active');

  const cardWidth = 280;
  const screenWidth = window.outerWidth;
  const spaceOnEitherSideOfCard = (screenWidth - cardWidth) / 2;
  const scrollTo = card.offsetLeft - spaceOnEitherSideOfCard;;

  const cardScroller = document.getElementById('card-scroller');

  const scrollIns = new ScrollTo({
    container: cardScroller,
    target: card,
    animationFn: 'easeOut',
    axis: 'x',
    duration: 400
  });
  scrollIns.scroll();

  //cardScroller.scrollLeft = scrollTo;
}


const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    if (markers.length === 0) {
      return;
    }
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  };


  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    const cards = document.getElementsByClassName('js-card-user');
    console.log(cards);

    markers.forEach((marker) => {
      const el = document.createElement('div');
      el.classList.add('map-marker');
      el.addEventListener('click', function() {
        selectUser(marker.user_id);

      } )
      mapMarkers[marker.user_id] = new mapboxgl.Marker(el)
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    });

    for (let i = 0; i < cards.length; i++) {
      const card = cards[i];
      card.addEventListener('click', function() {
        selectUser(card.dataset.userId);
      } )
    }

    fitMapToMarkers(map, markers);
    // selectUser(5);
  }
};

export { initMapbox };
