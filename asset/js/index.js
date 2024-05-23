
// adderss-form chọn địa điểm 
const adderssbtn = document.querySelector('#address-form')
const adderssclose = document.querySelector('.adderss-close')

adderssbtn.addEventListener("click", function(){
    document.querySelector('.address-form').style.display="flex"
}) 

adderssclose.addEventListener("click", function(){
    document.querySelector('.address-form').style.display="none"
}) 
// banner top slider
const bannertopItem = document.querySelector('.bannertop-item')
const imgs = document.getElementsByClassName('image')
const length = imgs.length
let current = 0

setInterval(() => {
    if (current == length - 1) {
        current = 0
        let width = imgs[0].offsetWidth
        bannertopItem.style.transform = `translateX(0px)`
       
    }
    else {
        current ++
        let width = imgs[0].offsetWidth
        bannertopItem.style.transform = `translateX(${width * -1 * current}px)`
    }
    
}, 6000)
//
// const Topbanner = document.querySelector('.top-banner .slider-bannertop');
// const Item = document.querySelectorAll('.top-banner .slider-bannertop .bannertop-item .item');
// const Dots = document.querySelectorAll('.slider-bannertop .owl-dots .owl-dot');
// const Prev = document.getElementById('prev');
// const Next = document.getElementById('next');

// let Active = 0;
// let lengthItem = Item.length - 1 ;

// Next.onclick = function() {
//     if(Active + 1 > lengthItem){
//         Active = 0;
//     }
//     else{
//         Active = Active + 1
//     }
//     reloadSlider();
// }
// function reloadSlider(){
//     let checkLeft = Item[Active].offsetLeft;
//     Topbanner.style.left = -checkLeft + 'px';
// }

// ----slider product-----





