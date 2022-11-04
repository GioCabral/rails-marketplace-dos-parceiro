import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="feeling-image"
export default class extends Controller {
  connect() {
    console.log("hello from image")
    let image = document.querySelector("#feeling_photo")
    let imagePlace = document.querySelector(".nels")
    image.addEventListener("change", (event) => {
      imagePlace.innerHTML = ""

      const fr = new FileReader()
      const file = image.files[0]
      fr.readAsArrayBuffer(file)
      fr.onload = function () {
        const blob = new Blob([fr.result])
        const url = URL.createObjectURL(blob, { type: "image/png" });
        const a = document.createElement("img")
        a.src = url
        a.className = "img_prd";
        imagePlace.appendChild(a)
      }
    });
  }
}
