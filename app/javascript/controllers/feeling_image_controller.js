import { Controller } from "@hotwired/stimulus"
import uploadFilesPreview from "./lib/uploadFilesPreview"

// Connects to data-controller="feeling-image"
export default class extends Controller {
  connect() {
    let image = document.querySelector("#feeling_photo")
    let imagePlace = document.querySelector(".nels")
    uploadFilesPreview(image, imagePlace)
  }
}
