document.addEventListener('DOMContentLoaded', () => {
  new Swiper(".mySwiperCarousel ", {
    loop: true,
    autoplay: {
      delay: 4500,
      disableOnInteraction: false,
    },
    pagination: {
      el: ".swiper-pagination",
    },
  });
});
