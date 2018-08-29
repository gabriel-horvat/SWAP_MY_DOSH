import "bootstrap";
import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.min.css';
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


import { screenfull } from "./screenfull";

flatpickr(".datepicker", {

});

flatpickr("#request_start_date", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#request_end_date"})]
})

flatpickr("#start_date", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#end_date"})]
})




// <script>
//   const goFS = document.getElementById("goFS");
//   goFS.addEventListener("click", function() {
//       document.body.requestFullscreen();
//   }, false);
// </script>
