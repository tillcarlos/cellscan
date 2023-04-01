import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const selectedValues = this.element.dataset.selectedValues
    // const selectedValues = JSON.parse(this.element.dataset.selectedValues)
    const checkboxes = this.element.querySelectorAll("input[type=checkbox]")

    checkboxes.forEach((checkbox) => {
      if (selectedValues.includes(checkbox.value)) {
        checkbox.checked = true
      } else {
        checkbox.checked = false
      }
    })
  }

  // We can do this later
  // data-action="click->filter-checkboxes#toggleCheckbox" data-checkbox-id="<%=tag%>"
  toggleCheckbox(event) {
    const checkboxId = event.currentTarget.dataset.checkboxId
    const checkbox = this.element.querySelector(`input[type='checkbox'][value='${checkboxId}']`);
    if (checkbox) {
      checkbox.checked = !checkbox.checked
    }
  }

}
