// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require turbolinks
//= require_tree .
//= require highcharts
//= require chartkick
//= require materialize-sprockets

$(function() {
    $("#svMobile").click(function() {
        html2canvas($("#mobile"), {
            onrendered: function(canvas) {
                theCanvas = canvas;
                document.body.appendChild(canvas);

                // Convert and download as image
                Canvas2Image.saveAsPNG(canvas);
                $("#img-out").append(canvas);
                // Clean up
                //document.body.removeChild(canvas);
            }
        });
    });
    $("#svInternet").click(function() {
        html2canvas($("#internet"), {
            onrendered: function(canvas) {
                theCanvas = canvas;
                document.body.appendChild(canvas);

                // Convert and download as image
                Canvas2Image.saveAsPNG(canvas);
                // $("#img-out").append(canvas);
                // Clean up
                //document.body.removeChild(canvas);
            }
        });
    });
});
