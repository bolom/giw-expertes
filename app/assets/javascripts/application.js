// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-select
//= require defaults-fr_FR
//= require jasny-bootstrap.min
//= require jquery.flexslider-min
//= require jquery.slicknav.min
//= require jquery.validate.min
//= require messages_fr.min
//= require jquery.placeholder


/* Sponsor Page */
$(window).load(function(){
  $('.partnerslide').flexslider({
    animation: "slide",
    animationLoop: true,
    controlNav: false,
    directionNav: true,
    pauseOnAction: false,
    pauseOnHover: true,
    itemWidth: 250,
    itemMargin: 50,
    start: function(slider){
      $('.loader').removeClass('circles');
    }
  });
});


/* Mobile Nav */
$(function(){
  $('#mobilenav').slicknav({
    label: 'menu',
    closeOnClick: true
  });
  $('input, textarea').placeholder();
});


/* Formulaire */
$(function(){
  $('#addnew').validate({
  		rules: {
  			firstname: {
  				required: true,
  				minlength: 2
  			},
  			lastname: {
    			required: true,
  				minlength: 2
  			},
  			linkedin:{
    			required: true,
    			url: true
  			},
        'profile[twitter_url]':{
          required: false,
          url: true
        },
        'profile[facebook_url]':{
          required: false,
          url: true
        },
        'profile[google_plus_url]':{
          required: false,
          url: true
        }
  		}
  });
});

/* Contact Modals Callback */
$(document).ready(function(){
  $('#contactForm form').on("ajax:success", function(e, data, status, xhr) {
    // Display confirmation message
    $('#contactForm').modal('hide');
  });

  $('#contactFormSingle form').on("ajax:success", function(e, data, status, xhr) {
    // Display confirmation message
    $('#contactFormSingle').modal('hide');
  });
})
