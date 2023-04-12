import { Controller } from "@hotwired/stimulus"
import axios from 'axios';

export default class extends Controller {
  static targets = ["emailWrapper", "email", "errorMessage", "submit"]
  connect() {
    this.submitTarget.addEventListener('click', (e)=> {
      e.preventDefault();
      if(this.emailTarget.value.length == 0) {
      } else {
        axios.get(`/users/users_by_emails/${this.emailTarget.value}`, {
          headers: {
          'ACCEPT': 'application/json'
          }
        })
        .then(function (response) {
          Turbo.visit('users/sign_in')
        })
        .catch(function (error) {
          Turbo.visit('users/sign_up')
          // handle error
        })
      }
    })
  }
}
