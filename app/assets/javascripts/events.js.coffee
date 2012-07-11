# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$('#event_date').datepicker({ dateFormat: "yy-mm-dd" })

$('td a').click ->
  $(this).siblings('ul').clone().dialog {
    modal: true
    buttons: { 
      Close: -> $(this).dialog "close"
    }
  }