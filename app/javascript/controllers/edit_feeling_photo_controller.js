import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-feeling-photo"
export default class extends Controller {
  connect() {
    let image = document.querySelector("#feeling_photo")
    let imagePlace = document.querySelector(".nels")
    uploadFilesPreview(image, imagePlace)
  }
}
