Session.setDefault 'p1Value', ''

Template.p1.helpers
  p1Value: -> Session.get('p1Value')

Template.p1.events
  'keypress #p1Text': ->
    Client.delay 500, 'p1Value', ->
      Session.set 'p1Value', $('#p1Text').val()