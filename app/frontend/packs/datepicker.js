import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"
import "flatpickr/dist/flatpickr.min.js"

document.addEventListener('turbolinks:load',function(){
  flatpickr("#book_published", {})
})
