import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  connect() {
  }

  favorite() {
    if(this.element.dataset.favorited === "true"){
      this.element.dataset.favorited = "false";
      this.element.setAttribute("fill", "none")
    }else{
      this.element.dataset.favorited = "true";
      this.element.setAttribute("fill", "red")
    }
  }
}
