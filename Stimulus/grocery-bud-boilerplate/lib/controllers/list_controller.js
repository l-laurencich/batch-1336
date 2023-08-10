// src/controllers/hello_controller.js
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["input", "result", "listItem"]
  connect() {
    console.log(" :D ")
  }
  addItem() {
    this.resultTarget.insertAdjacentHTML("beforeend", 
    `<li class="list-group-item" data-controller="list-item">
      <div class="d-flex justify-content-between">
        ${this.inputTarget.value}
        <a href="#" class="btn btn-danger" data-action="click->list-item#delete">delete</a>
      </div>
    </li>`)
    this.inputTarget.value = ""
  }
}