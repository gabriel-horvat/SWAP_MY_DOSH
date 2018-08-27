// document.querySelector('#input-currency.next').addEventListener("click", function() {
//   document.querySelector('#input-currency').hide("fade", { easing: "easeInQuart", direction: "left"}, 700, function(){
//     document.querySelector(#"quantity-currency").show("fade", { easing: "easeInQuart", direction: "left"}, 700);
//   });
// });

// document.querySelector('#quantity-currency .next').addEventListener("click", function() {
//   document.querySelector('#quantity-currency').hide("fade", { easing: "easeInQuart", direction: "left"}, 700, function(){
//     document.querySelector(#"wanted-currency").show("fade", { easing: "easeInQuart", direction: "left"}, 700);
//   });
// });

// document.querySelector('#quantity-currency .previous').addEventListener("click", function() {
//   document.querySelector('#quantity-currency').hide("fade", { easing: "easeInQuart", direction: "left"}, 700, function(){
//     document.querySelector(#"input-currency").show("fade", { easing: "easeInQuart", direction: "left"}, 700);
//   });
// });


document.querySelector("#input-currency .next").addEventListener("click", (event) => {
  document.querySelector('#input-currency').classList.add("deactivated");
  document.querySelector("#quantity-currency").classList.remove("deactivated");
    document.querySelector('#quantity-currency').classList.add("activated");

})

// click on next button to remove first page and show second page
document.querySelector("#quantity-currency .next").addEventListener("click", (event) => {
    document.querySelector("#quantity-currency").classList.remove("activated");
    document.querySelector('#quantity-currency').classList.add("deactivated");
  document.querySelector("#wanted-currency").classList.remove("deactivated");
    document.querySelector('#wanted-currency').classList.add("activated");

})

// click on previous button to hide current page and show previous page
document.querySelector("#quantity-currency .previous").addEventListener("click", (event) => {
    document.querySelector("#quantity-currency").classList.remove("activated");
    document.querySelector('#quantity-currency').classList.add("deactivated");
        document.querySelector("#input-currency").classList.remove("deactivated");
    document.querySelector('#input-currency').classList.add("activated");


})
