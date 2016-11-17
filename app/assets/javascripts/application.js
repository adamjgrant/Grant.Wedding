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
//= require Uncomment.js/dist/uncomment.es6.js
//= require kickstart_rails
//= require sections
//= require jquery
//= require jquery_ujs
// require turbolinks
//= require froala_editor.min.js
//= require plugins/link.min.js
//= require plugins/lists.min.js
// require plugins/code_view.min.js
//= require plugins/paragraph_format.min.js
//= require maps_tweak
//= require simper
//= require buddysystem

var objs = document.querySelectorAll('p');
buddySystem(objs);
