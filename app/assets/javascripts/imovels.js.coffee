# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $("#modal-gallery").on "load", ->
    modalData = $(this).data("modal")
  $("#idTipo").change -> 
      $("#idTipologia").empty()
      $("#idTipologia").append "<option value= \" \"> Tipologiass </option>"
      $("#idTipologia").append "<option value= \" \"> </option>"
