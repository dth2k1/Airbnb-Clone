import { Controller } from "@hotwired/stimulus"
import { enter, leave, toggle } from "el-transition"
import ModalController from "controllers/modal_controller"

export default class extends Controller {
  static targets = ["openUserMenu", "userAuthLink"]
  connect() {
    const btnToggleMenu = this.openUserMenuTarget
    const btnAuth = this.userAuthLinkTargets
    btnToggleMenu.addEventListener('click', this.toggleDropdownMenu)
    btnAuth.forEach((link) => {
      link.addEventListener('click',(e) => {
        e.preventDefault()
        document.getElementById('modal-trigger').click()
      })
    })
  }
  toggleDropdownMenu() {
    const dropdownMenu = document.getElementById("menu-dropdown-items")
    toggle(dropdownMenu)
  }
}
