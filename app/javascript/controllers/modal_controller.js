import { Controller } from "@hotwired/stimulus"
import {enter, leave, toggle} from "el-transition"
const modalWrapper = document.getElementById("modal-wrapper")
const modalBackdrop = document.getElementById("modal-backdrop")
const modalPanel = document.getElementById("modal-panel")

export default class extends Controller {
  static targets = [ "closeButton" ]
  connect() {
    this.closeButtonTarget.addEventListener('click', () => {
      leave(modalWrapper)
      leave(modalBackdrop)
      leave(modalPanel)
    })
    modalWrapper.addEventListener('click', this.closeModal)
  }

  showModal(){
    enter(modalWrapper)
    enter(modalBackdrop)
    enter(modalPanel)
  }

  closeModal(event){
    const modalPanelClicked = modalPanel.contains(event.target)
    if (!modalPanelClicked && event.target.id !== 'modal-trigger' ) {
      leave(modalWrapper)
      leave(modalWrapper)
      leave(modalWrapper)
    }
  }
}
