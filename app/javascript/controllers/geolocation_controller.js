import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    window.navigator.geolocation.getCurrentPosition(function(pos) { 
      console.log(pos); 
      var lat = pos.coords.latitude;
      var lon = pos.coords.longitude;
    })
  }
}
