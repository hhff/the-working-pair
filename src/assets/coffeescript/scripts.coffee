window.onload = ->
  $('body').removeClass 'hidden'
  $('#title').removeClass 'hidden'
  $('#names').removeClass 'hidden'
  $('#post article').removeClass 'hidden'

  $('a').on 'click', ->
    $('body').addClass 'hidden'

  if postsNav = document.querySelector "nav"
    headroom  = new Headroom postsNav
    headroom.init()