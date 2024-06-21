import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-booking"
export default class extends Controller {
  static targets = ["form"]
  send(event) {
    event.preventDefault()

    console.log("TODO: send request in AJAX")
  }
}
