LoginRoute = Ember.Route.extend

  protect: false
  
  model: ->
    alert('wooohoooooooooo')
    Ember.Object.create
      usernameFromLastSession: "davewasmer"
      username: null
      password: null

`export default LoginRoute`