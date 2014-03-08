# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

	$("#slider").nivoSlider
    effect: "fade" # Specify sets like: 'fold,fade,sliceDown'
    slices: 1 # For slice animations
    boxCols: 1 # For box animations
    boxRows: 1 # For box animations
    animSpeed: 100 # Slide transition speed
    directionNav: true # Next & Prev navigation
    controlNav: false # 1,2,3... navigation
    controlNavThumbs: false # Use thumbnails for Control Nav
    manualAdvance: true # Force manual transitions
    prevText: "<" # Prev directionNav text
    nextText: ">" # Next directionNav text
    randomStart: false # Start on a random slide

	#$("#masonry-container").imagesLoaded ->
	$("#masonry-container").masonry
    itemSelector: ".item"
    isFitWidth: true

  # COLLECTION PAGE

  $(".product").mouseenter ->
    $(this).find("img").css("-webkit-filter" : "blur(2px)")
    $(this).find("a").css("opacity" : "1")

  $(".product").mouseleave ->
    $(this).find("img").css("-webkit-filter" : "blur(0px)")
    $(this).find("a").css("opacity" : "0")

  # SOCIAL PAGE

  $(".item").slice(1).mouseenter ->
    $(this).find("img").css("-webkit-filter" : "blur(4px)")
    $(this).find("a").css("opacity" : "1")

  $(".item").slice(1).mouseleave ->
    $(this).find("img").css("-webkit-filter" : "blur(0px)")
    $(this).find("a").css("opacity" : "0")

  $(".twitter, .instagram, .facebook").mouseenter ->
    $(this).css("-webkit-filter" : "blur(1px)")

  $(".twitter, .instagram, .facebook").mouseleave ->
    $(this).css("-webkit-filter" : "blur(0px)")

  $(".social-text, .product-text").flexVerticalCenter()

  # PRODUCT PAGE

  $("#slider").find("a.xl-view").click ->
    $(".xl-container").fadeIn 500
    y = $(window).scrollTop()
    $(window).scrollTop y + 350

  $(".xl-container img").click ->
    $(".xl-container").fadeOut 500

  # GENERAL

  $("[href]").each ->
  	$(this).addClass "active" if @href is window.location.href

  $(".right li a").click ->
  	$(".full_screen").fadeIn 300

  $(".menu").click ->
  	$(".mobile_nav, .mobile_nav_links").fadeIn 300

  $(".close").click ->
  	$(".full_screen, .mobile_nav").fadeOut 300

  $(document).on "page:fetch", ->
    $("#loader-overlay").show()

  $(document).on "page:receive", ->
    $("#loader-overlay").hide()

$(document).ready(ready)
$(document).on('page:load', ready)