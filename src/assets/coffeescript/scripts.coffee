revealer = (reveals) ->
  windowHeight = $(window).height()
  scrollTop = $(document).scrollTop()

  for item in reveals
    $item = $(item)
    if $item.offset().top < scrollTop + windowHeight
      $item.removeClass 'hidden'


window.onload = ->

  homepageClass = "homepage-#{Math.floor(Math.random() * 5)}"
  $('#image').addClass homepageClass

  $('body').removeClass 'hidden'
  $('#title').removeClass 'hidden'
  $('#names').removeClass 'hidden'
  $('.pagination').removeClass 'hidden'
  $('#post article').removeClass 'hidden'

  $('a').on 'click', (e) ->
    unless $(e.target).parent().hasClass 'mail-to'
      $('body').addClass 'hidden'

  $('#contact').on 'click', ->
    $('#by-line').toggleClass 'hidden'

  # find clusters of images on Post page
  for image in $('p img:first-child')
    $imageContainer = $(image).parent().addClass 'breakout'

    imageCollection = $imageContainer.find('img')
    className = "medium-#{(12 / imageCollection.length)}"

    for subImage in imageCollection
      $(subImage).addClass "small-12 #{className} columns"

  reveals = $('img').addClass 'hidden fader'
  revealer reveals

  $(window).on 'scroll', -> revealer reveals
