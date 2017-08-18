var qParameter = {
    curr_question: 0,
    total_question: 0,
    curr_carousel: '',
};

// function leftRight(){ //左右箭头是否显示
//     if(qParameter.curr_question == 1){
//         $('a.carousel-control.left').css({'display': 'none'});
//         $('a.carousel-control.right').css({'display': 'block'});
//     }else if(qParameter.curr_question == qParameter.total_question){
//         $('a.carousel-control.left').css({'display': 'block'});
//         $('a.carousel-control.right').css({'display': 'none'});
//     }else{
//         $('a.carousel-control.left').css({'display': 'block'});
//         $('a.carousel-control.right').css({'display': 'block'});
//     }
// }

// function clickCarousel(){
//     setTimeout(function(){
//         qParameter.curr_question = $('div.active').attr('number');
//         leftRight();
//     }, 800);
// }

$(document).ready(function(){


    // var mySwiper = new Swiper('.swiper-container', {

    // });


    // qParameter.curr_question = $('div.active').attr('number');
    // qParameter.total_question = $('div.carousel-inner').attr('count');
    // leftRight();
    // $('a.carousel-control.left, a.carousel-control.right').click(function(){
    //     clickCarousel();
    // });

});