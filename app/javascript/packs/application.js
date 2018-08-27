console.log("ghjk")
import "bootstrap";
import { hello } from "./conversion";
import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.min.css';
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


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
