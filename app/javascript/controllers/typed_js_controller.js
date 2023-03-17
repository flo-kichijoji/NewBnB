import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

var options = {
  strings: ['<i>First</i> sentence.', '&amp; a second sentence.'],
  typeSpeed: 40
};

var typed = new Typed('.element', options);

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
  }
}
