import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
// import { button } from '../plugins/preview';
import { rangeSlider } from '../plugins/slider';


initMapbox();
rangeSlider();
