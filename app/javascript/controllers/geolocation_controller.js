import { Controller } from "@hotwired/stimulus"
import { getDistance, convertSpeed } from 'geolib';
var lat;
var lon;
export default class extends Controller {
  
  connect() {
    window.navigator.geolocation.getCurrentPosition((pos)=> { 
      lat = pos.coords.latitude;
      lon = pos.coords.longitude;
      this.element.dataset.longitude = lon;
      this.element.dataset.latitude = lat;
    })
    
  }

  get_distance() {
    convertSpeed(getDistance(
      {
        latitude: lat,
        longitude: lon
      }
      ,{
        latitude: 51.525,
        longitude: 7.4575,
      }), 'km')
  }
}
