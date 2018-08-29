 function swipe() {
 var li = document.querySelector('.li-item');
        var list = document.querySelector('.slip-container');
        new Slip(list)
        list.addEventListener('slip:swipe', function(e) {
            li.classList.toggle('li-item-slide-2');
        });
 }
export { swipe };
