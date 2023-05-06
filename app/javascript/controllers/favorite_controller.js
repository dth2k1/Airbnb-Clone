import { Controller } from "@hotwired/stimulus"
import axios from 'axios';
export default class extends Controller {
  connect() {
  }

  favorite() {
    if(this.element.dataset.userloggedin == "false"){
      return document.querySelector('[data-header-target="userAuthLink"]').click()
    }
    if(this.element.dataset.favorited === "true"){
      this.handleUnFavorite()
    }else{
      this.handleFavorite()
    }
  }
  handleUnFavorite() {
    let that = this
    axios.delete(this.element.dataset.unfavoriteurl, {
      headers: {
      'ACCEPT': 'application/json'
      }
    })
    .then(function (response) {
      that.element.dataset.favorited = "false";
      that.element.setAttribute("fill", "none")
    })
    .catch(function (error) {
    })
  }
  handleFavorite() {
    let that = this
    axios.post(this.element.dataset.favoriteurl, { 
      user_id: this.element.dataset.userid,
      property_id: this.element.dataset.propertyid
    }, {
      headers: {
      'ACCEPT': 'application/json'
      }
    })
    .then(function (response) {
      that.element.dataset.favorited = "true";
      that.element.setAttribute("fill", "red")
    })
    .catch(function (error) {
    })
  }
}
