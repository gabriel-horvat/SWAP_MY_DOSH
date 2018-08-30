function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var boardAddress = document.getElementById('request_location');

    if (boardAddress) {
      var autocomplete = new google.maps.places.Autocomplete(boardAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(boardAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
