class Something
  constructor: (@name = 'something') ->
  
  toString: ->
    @name
    
document.addEventListener 'DOMContentLoaded',
  ->
    something = new Something 'Beaver'
    something2 = new Something
    
    console.log "#{something} #{something2}",
  false