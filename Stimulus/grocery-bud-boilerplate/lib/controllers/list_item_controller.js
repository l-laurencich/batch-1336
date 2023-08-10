import { Controller } from "stimulus"

export default class extends Controller {
  
  connect() {
    console.log("list Item controller connected")
  }

  delete() {
    this.element.remove()
  }

}