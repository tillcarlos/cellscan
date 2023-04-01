import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["id", "input", "dropdown", "item"];

  connect() {
    this.inputTarget.focus();
  }

  search() {
    const searchTerm = this.inputTarget.value.trim().toLowerCase();
    let found = false;
    this.itemTargets.forEach((element) => {
      const text = element.textContent.trim().toLowerCase();
      element.hidden = !text.includes(searchTerm);
      if (text.includes(searchTerm)) {
        found = true;
      }
    });
    this.dropdownTarget.classList.remove("hidden");
  }

  select(event) {
    const element = event.currentTarget;
    this.inputTarget.value = element.textContent.trim();
    this.dropdownTarget.classList.add("hidden");

    this.idTarget.value = event.currentTarget.dataset.personId;
  }
}
