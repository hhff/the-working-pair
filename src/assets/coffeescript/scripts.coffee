window.onload = ->
  $('body').removeClass 'hidden'
  $('#title').removeClass 'hidden'
  $('#names').removeClass 'hidden'

  if postsNav = document.querySelector "nav"
    headroom  = new Headroom postsNav
    headroom.init()