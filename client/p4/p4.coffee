vm = new ViewModel 'p4',
  value: ''

Template.p4.rendered = ->
  vm.bind @

Template.p4.destroyed = ->
  vm.reset()