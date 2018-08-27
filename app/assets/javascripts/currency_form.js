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


//  previous button from quantity currency to input
document.querySelector("#quantity-currency .previous").addEventListener("click", (event) => {
    document.querySelector("#quantity-currency").classList.remove("activated");
    document.querySelector('#quantity-currency').classList.add("deactivated");
        document.querySelector("#input-currency").classList.remove("deactivated");
    document.querySelector('#input-currency').classList.add("activated");


})

// from quantity currency to wanted currency
document.querySelector("#quantity-currency .next").addEventListener("click", (event) => {
    document.querySelector("#quantity-currency").classList.remove("activated");
    document.querySelector('#quantity-currency').classList.add("deactivated");
  document.querySelector("#wanted-currency").classList.remove("deactivated");
    document.querySelector('#wanted-currency').classList.add("activated");

})


// previous button from wanted currency to quantity currency
document.querySelector("#wanted-currency .previous").addEventListener("click", (event) => {
    document.querySelector("#wanted-currency").classList.remove("activated");
    document.querySelector('#wanted-currency').classList.add("deactivated");
        document.querySelector("#quantity-currency").classList.remove("deactivated");
    document.querySelector('#quantity-currency').classList.add("activated");


})

// wanted currency to location
document.querySelector("#wanted-currency .next").addEventListener("click", (event) => {
    document.querySelector("#wanted-currency").classList.remove("activated");
    document.querySelector('#wanted-currency').classList.add("deactivated");
  document.querySelector("#location").classList.remove("deactivated");
    document.querySelector('#location').classList.add("activated");

})



// previous button from location to wanted currency

document.querySelector("#location .previous").addEventListener("click", (event) => {
    document.querySelector("#location").classList.remove("activated");
    document.querySelector('#location').classList.add("deactivated");
        document.querySelector("#wanted-currency").classList.remove("deactivated");
    document.querySelector('#wanted-currency').classList.add("activated");


})


// location to time
document.querySelector("#location .next").addEventListener("click", (event) => {
    document.querySelector("#location").classList.remove("activated");
    document.querySelector('#location').classList.add("deactivated");
  document.querySelector("#time").classList.remove("deactivated");
    document.querySelector('#time').classList.add("activated");

})



// previous button back from time to location
document.querySelector("#time .previous").addEventListener("click", (event) => {
    document.querySelector("#time").classList.remove("activated");
    document.querySelector('#time').classList.add("deactivated");
        document.querySelector("#location").classList.remove("deactivated");
    document.querySelector('#location').classList.add("activated");


})

