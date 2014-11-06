Router.route '/', -> this.render('home')
Router.route '/p1'
Router.route '/p2'

vm = new ViewModel 'p3',
  value: ''
Router.route '/p3', ->
  this.render 'p3',
    data: -> vm

Router.onBeforeAction( ->
  vm.value ''
  this.next()
,
  only: ['p3']
)
