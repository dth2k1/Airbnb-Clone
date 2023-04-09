import { Controller } from "@hotwired/stimulus"
import {enter, leave, toggle} from 'el-transition'

export default class extends Controller {
  static targets = ["openUserMenu"]

  connect() {
    const btnToggleMenu = this.openUserMenuTarget
    btnToggleMenu.addEventListener('click', this.toggleDropdownMenu)
  }
  toggleDropdownMenu() {
    const dropdownMenu = document.getElementById("menu-dropdown-items")
    toggle(dropdownMenu)
  }
}
