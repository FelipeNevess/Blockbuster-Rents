document.addEventListener('turbolinks:load', () => {
  new Swiper(".mySwiperCard", {
    centerSlide: true,
    centeredSlidesBounds: true,
    fade: true,
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    pagination: {
      clickable: true,
    },
    breakpoints: {
      650: {
        slidesPerView: 8,
        spaceBetween: 9,
      },
  
      320: {
        slidesPerView: 4,
        spaceBetween: 9,
      },
  
      210: {
        spaceBetween: 3,
        slidesPerView: 2,
      }
    }
  });
})