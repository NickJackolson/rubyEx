// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]
  random(){
    const list = ["Hello","Merhaba","Bonjour","Hallo","Geia",
                  "Shalom","Selam","Helo","Hei","Hai","Privet",
                  "Hola","Henlo"]
    var rand = list[Math.floor(Math.random() * list.length)];
    this.outputTarget.textContent = rand + "! We now use stimulus"
  }
  click_handler(){
    this.random()
  }
  resize_detect(){
    console.log("Windows resizing...")
  }

  connect() {
    this.random()
  }
}
