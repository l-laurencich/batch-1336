import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = ['button', 'link']

  connect() {
    console.log("Hello batch 1336 from our first Stimulus controller. This is exciting!");
  }

  disable() {
    console.log(this.element)
    this.buttonTarget.innerText = "Bingo!"
    this.buttonTarget.setAttribute('disabled', '')
    this.linkTarget.classList.remove('d-none')
  }

  reset() {
    this.buttonTarget.innerText = "Click me!"
    this.buttonTarget.removeAttribute('disabled', '')
    this.linkTarget.classList.add('d-none')
  }
}