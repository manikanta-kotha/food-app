//= require jquery
//= require jquery_ujs
//= require bootstrap

const CHECKOUT_CART_PATH = 'cart'

$(document).ready(function() {
  $('button').click(function(){
    console.log('button click');
  })


  let cartData = localStorage.setItem(CHECKOUT_CART_PATH, '[]');
  $('.cart-button').click(function(event){
    event.preventDefault();
    const element = $(this)
    const productData =  element.attr("data-product")
    if (productData) {
      // store this product details
      const productDetails = JSON.parse(productData)
      element.removeClass('cart-button')
      element.text('Added')
      element.prop('disabled', true);
      const cartDetails = JSON.parse(localStorage.getItem(CHECKOUT_CART_PATH));
      cartDetails.push(productDetails);
      localStorage.setItem(CHECKOUT_CART_PATH, JSON.stringify(cartDetails))
      console.log('cartDetails', cartDetails);
    }
  });

  $('.buy-now').click(function(event){
      alert('Your order placed successfully...continue shopping')
      window.location = "/"
  })
})
