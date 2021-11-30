import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["poster"]

  connect() {
    document.querySelectorAll('.card').forEach((element) => {
      element.style.backgroundImage = "url( " + element.dataset.imageUrl + ")";
      element.querySelector("h2").classList.add("d-none")
      console.log(element)
    })
  }


  showInfo(event) {

    event.currentTarget.style.backgroundImage = "linear-gradient(rgba(0, 0, 0, 0.7),rgba(0, 0, 0, 0.7)),  url( " + event.currentTarget.dataset.imageUrl + ")" ;
    console.log(event.currentTarget.dataset.imageUrl )
    event.currentTarget.querySelector("h2").classList.remove("d-none")
    event.currentTarget.style.border = "3px solid red"
  }

  hideInfo(event) {
     event.currentTarget.style.backgroundImage = "url(" + event.currentTarget.dataset.imageUrl + ")";
     event.currentTarget.style.border = ""

//    event.currentTarget.classList.toggle("brightness")
    event.currentTarget.querySelector("h2").classList.add("d-none")

  }

}
