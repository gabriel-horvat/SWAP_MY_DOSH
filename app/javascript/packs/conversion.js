conversion.js

let request_currency = document.getElementById("request_request_currency")
let wanted_currency = document.getElementById("request_wanted_currency")
let offered_amount = document.getElementById("request_request_amount")
let conversion_amount = document.getElementById("conversion_amount")

conversion_amount.innerHTML =
  money = params[:request_amount].to_money(params[:request_currency])
  money.exchange_to(params[:wanted_currency])

