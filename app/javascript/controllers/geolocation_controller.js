import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  connect() {
    window.navigator.geolocation.getCurrentPosition((pos)=> { 
      var lat = pos.coords.latitude;
      var lon = pos.coords.longitude;
      this.element.dataset.longitude = lon;
      this.element.dataset.latitude = lat;
    })
  }
}
