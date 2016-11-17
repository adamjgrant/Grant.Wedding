page = k$.$('body').dataset

if (page.controller == "sections" && (page.action == "edit" || page.action =="new"))
  images = k$.$$('img.square')

  addEventListenersToArray images, 'click', (image) ->
    k$.$('#section_path').value = "#{image.dataset.id}.jpg"
    removeClassesFromArray(images, 'selected')
    image.classList.add('selected')
