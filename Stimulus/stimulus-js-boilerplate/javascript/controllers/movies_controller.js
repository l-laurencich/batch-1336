import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['input', 'list']

  static values = {
    baseUrl: String
  }

  connect() {
    fetch(`${this.baseUrlValue}/?s=Lord&of&the&Rings&apikey=adf1f2d7`)
    .then (response => response.json())
    .then (data => {
      this.insertMovies(data)
    })
  }

  search() {
    this.listTarget.innerHTML = ""
    this.fetch(this.inputTarget.value)
  }

  fetch(searchTerm) {
    fetch(`https://www.omdbapi.com/?s=${searchTerm}&apikey=adf1f2d7`)
    .then (response => response.json())
    .then (data => {
      this.insertMovies(data)
    })
  }

  insertMovies(data) {
    data.Search.forEach(result => {
      const movieTag = `<li class="list-group-item border-0">
      <img src="${result.Poster}" alt="" width="100" height="100%">
    </li>`
    this.listTarget.insertAdjacentHTML('beforeend', movieTag)
    });
  }

}