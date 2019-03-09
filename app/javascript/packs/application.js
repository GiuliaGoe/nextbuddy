import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

// import { button } from '../plugins/preview';
import { rangeSlider } from '../plugins/slider';

// import { accept_button } from '../plugins/request-buttons';;
// import { decline_button } from '../plugins/request-buttons';

initMapbox();
rangeSlider();
