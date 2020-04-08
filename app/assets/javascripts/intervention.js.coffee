# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#intervention_BuildingID').parent().hide()
  buildings = $('#intervention_BuildingID').html()
  # console.log(buildings)
  $('#intervention_CustomerID').change ->
  client = $('#intervention_CustomerID :selected').text()
  escaped_client = client.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
  options = $(buildings).filter("optgroup[label='#{escaped_client}']").html()
  if options
    $('#intervention_BuildingID').html(options)
    $('#intervention_BuildingID').parent().show()
  else
    $('#intervention_BuildingID').empty()
    $('#intervention_BuildingID').parent().hide()

        # loaded_model = $('#asset_model_id :selected').text()
        # if loaded_model.length < 1
        #         $('#asset_model_id').parent().parent().hide()
        # models = $('#asset_model_id').html()
        # $('#asset_make_id').change ->
        #         make = $('#asset_make_id :selected').text()
        #         escaped_make = make.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
        #         options = $(models).filter("optgroup[label='#{escaped_make}']").html()
        #         if options
        #                 $('#asset_model_id').html(options)
        #                 $('#asset_model_id').parent().parent().show()
        #         else
        #                 $('#asset_model_id').empty()
        #                 $('#asset_model_id').parent().parent().hide()