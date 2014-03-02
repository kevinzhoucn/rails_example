# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("#join_test").click ->
    $("#test_login").fadeIn(300)
    $(this).text("输入测试代码")