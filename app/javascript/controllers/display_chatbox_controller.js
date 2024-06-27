import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-chatbox"
export default class extends Controller {
  static values = {
    numero: Number,
  }
  static targets = ["toto"]
  connect() {
    const url = window.location.href.split('/')
    const chatboxId = url[url.length - 1]

    this.totoTargets.forEach(target => {
      if (target.dataset.displayChatboxNumeroValue === chatboxId) {
        target.classList.add('green-active')
      }
    })

  }
}
