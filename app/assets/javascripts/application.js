// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require masonry/jquery.masonry
//= require_tree .
$(document).ready(function(){
   

  $('.grid').imagesLoaded( function() {
    $('.grid').masonry({
      itemSelector        : '.grid-item',
      gutterWidth: 29,
        isFitWidth: true,
       percentPosition: true
    });
  });
});

var color =function(){
    $('.wrapaboutnav li a' ).click(function () {
    	$('.wrapaboutnav li a').removeClass('activea');
    	$(this).addClass('activea');
    	$('.wrapaboutnav li').removeClass('activetab');
        $(this).parent().addClass('activetab');
    });
};

$(document).ready(function(){
$('#myTabs a').click(function (e) {
  e.preventDefault()
  $(this).tab('show');

 


})


});



$(document).on('page:load', color);
$(document).ready(color);



