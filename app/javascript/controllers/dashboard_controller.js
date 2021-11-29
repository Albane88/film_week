import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["poster"]


  showInfo(event) {

    event.currentTarget.style.backgroundImage = "linear-gradient(rgba(0, 0, 0, 0.7),rgba(0, 0, 0, 0.7)),  url( " + event.currentTarget.dataset.imageUrl + ")" ;
    console.log(event.currentTarget.dataset.imageUrl )
    event.currentTarget.querySelector("h2").classList.toggle("d-none")

  }

  hideInfo(event) {
     event.currentTarget.style.backgroundImage = "url(" + event.currentTarget.dataset.imageUrl + ")";

//    event.currentTarget.classList.toggle("brightness")
    event.currentTarget.querySelector("h2").classList.toggle("d-none")

  }

}
