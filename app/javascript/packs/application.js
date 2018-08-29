import "bootstrap";
import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.min.css';
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import { };



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


// function refresh() {
//   const oldCount = document.getElementById("count");
//   const newCount = document.querySelectorAll(".message").length;
//   oldCount.innerHTML = `(${newCount})`
// }
// document.addEventListener("DOMContentLoaded", () => {
//   setInterval(refresh, 1000); // Every 1 second, the `refresh` function is called.
// });

// <script>
//   const goFS = document.getElementById("goFS");
//   goFS.addEventListener("click", function() {
//       document.body.requestFullscreen();
//   }, false);
// </script>
