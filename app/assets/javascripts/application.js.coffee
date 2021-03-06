# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery_ujs
#= require cufon-yui
#= require_tree .
#Cufon.replace("h1", {textShadow:'#01621d 2px 4px'})

$ ->
  $("a.upload_button").click ->
    $("#upload_photo").click()
  $(".form_body select").click ->
    $(".select_text_div").html($(".left_part option:selected").val())
  $(".button_for_select select").click ->
    option_text=$(this).children("option:selected").val()
    $(this).next("span").children("span").html(option_text)
  $("label.male",).click ->
    $("label.female").removeClass('checked')
    $(@).addClass('checked')
    radioid=$(@).attr('for')
    $("#"+radioid).attr('checked',true)
  $(".treatment_modalities label,.checkbox label").click ->
    id=$(this).attr('for')
    $(this).toggleClass('checked')
    $(this).prev('input#'+id).prop("checked",true)
  $("label.female").click ->
    $("label.male").removeClass('checked')
    $(@).addClass('checked')
    radioid=$(@).attr('for')
    $("#"+radioid).attr('checked',true)
  #yes/no radio button handler
  $("label.yes, label.no").click ->
    associated_input=$("#"+$(this).prop('for'))
    associated_input.prop("checked",true)
    opposite_choice=$(this).siblings("label")
    $(this).addClass("checked")
    opposite_choice.removeClass("checked")
    opposite_choice_input=$("#"+opposite_choice.prop('for'))
    opposite_choice_input.prop("checked",false)
    #TODO:debug later
