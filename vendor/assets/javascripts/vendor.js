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
//= require turbolinks
//= require_tree .

$(document).ready(function(){
	$('.carousel').carousel({
	        interval: 5000 //changes the speed
	    });
});
 
function districts(){
    var a={id: $('#user_state_id').val()};
	$.get('/users/district',a,function(response){});
  }

function cities(){
    var a={id: $('#user_district_id').val()};
	$.get('/users/city',a,function(response){});
  }

function district(){
    var a={id: $('#donar_state_id').val()};
	$.get('/home/districts',a,function(response){});
  }

function city(){
    var a={id: $('#donar_district_id').val()};
	$.get('/home/cities',a,function(response){});
  }