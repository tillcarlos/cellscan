import { Controller } from "@hotwired/stimulus"
import { useClickOutside } from 'stimulus-use'

export default class extends Controller {
  static targets = ['dropdown', 'icon', 'button']

  connect() {
    this.iconTarget.classList.add('rotate-180');
    this.dropdownTarget.classList.add('hidden');

    useClickOutside(this, { element: this.dropdownTarget });
  }
  

  clickOutside(event) {
    // We are outside the dropdown, but still hit the button.
    // Then we DONT want to close the dropdown - 
    // else the toggle would come on top an dopen it again.
    if (this.buttonTarget.contains(event.target)) {
      return
    }
    event.preventDefault()
    this.closeDrowdown()
  }

  toggle() {
    this.dropdownTarget.classList.toggle('hidden')

    this.iconTarget.classList.toggle('rotate-180');
    this.iconTarget.classList.toggle('rotate-0');
  }

  closeDrowdown() {
    this.iconTarget.classList.add('rotate-180');
    this.dropdownTarget.classList.add('hidden')
  }

}
