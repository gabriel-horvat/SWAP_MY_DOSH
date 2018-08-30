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


const input1 = document.querySelector("#input-currency .next")
if (input1) {
input1.addEventListener("click", (event) => {
    document.querySelector("#input-currency").classList.remove("activated");

  document.querySelector('#input-currency').classList.add("deactivated");
  document.querySelector("#quantity-currency").classList.remove("deactivated");
    document.querySelector('#quantity-currency').classList.add("activated");

})
}

//  previous button from quantity currency to input
const input2 = document.querySelector("#quantity-currency .previous")
if (input2) {
input2.addEventListener("click", (event) => {
    document.querySelector("#quantity-currency").classList.remove("activated");
    document.querySelector('#quantity-currency').classList.add("deactivated");
        document.querySelector("#input-currency").classList.remove("deactivated");
    document.querySelector('#input-currency').classList.add("activated");


})
}

// from quantity currency to wanted currency
const input3 = document.querySelector("#quantity-currency .next")
if (input3) {
input3.addEventListener("click", (event) => {
    document.querySelector("#quantity-currency").classList.remove("activated");
    document.querySelector('#quantity-currency').classList.add("deactivated");
  document.querySelector("#wanted-currency").classList.remove("deactivated");
    document.querySelector('#wanted-currency').classList.add("activated");

})
}


// previous button from wanted currency to quantity currency
const input4 = document.querySelector("#wanted-currency .previous")
if (input4) {
input4.addEventListener("click", (event) => {
    document.querySelector("#wanted-currency").classList.remove("activated");
    document.querySelector('#wanted-currency').classList.add("deactivated");
        document.querySelector("#quantity-currency").classList.remove("deactivated");
    document.querySelector('#quantity-currency').classList.add("activated");


})
}

// wanted currency to location
const input5 = document.querySelector("#wanted-currency .next")
if (input5) {
input5.addEventListener("click", (event) => {
    document.querySelector("#wanted-currency").classList.remove("activated");
    document.querySelector('#wanted-currency').classList.add("deactivated");
  document.querySelector("#location").classList.remove("deactivated");
    document.querySelector('#location').classList.add("activated");

})
}


// previous button from location to wanted currency

const input6 = document.querySelector("#location .previous")
if (input6) {
input6.addEventListener("click", (event) => {
    document.querySelector("#location").classList.remove("activated");
    document.querySelector('#location').classList.add("deactivated");
        document.querySelector("#wanted-currency").classList.remove("deactivated");
    document.querySelector('#wanted-currency').classList.add("activated");


})}


// location to time
const input7 = document.querySelector("#location .next")
if (input7) {
input7.addEventListener("click", (event) => {
    document.querySelector("#location").classList.remove("activated");
    document.querySelector('#location').classList.add("deactivated");
  document.querySelector("#time").classList.remove("deactivated");
    document.querySelector('#time').classList.add("activated");

})}


// previous button back from time to location
const input8 = document.querySelector("#time .previous")
if (input8) {
input8.addEventListener("click", (event) => {
    document.querySelector("#time").classList.remove("activated");
    document.querySelector('#time').classList.add("deactivated");
        document.querySelector("#location").classList.remove("deactivated");
    document.querySelector('#location').classList.add("activated");


})}

