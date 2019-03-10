import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { setupprofile } from '../plugins/setupprofile';
import { activitiesList } from '../plugins/setupprofile';

initMapbox();
setupprofile();
activitiesList();
