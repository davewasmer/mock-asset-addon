isLoggedIn = false

protectedRoutes = 
  name: 'protected-routes'
  initialize: (container, application) ->
    Ember.Route.reopen
      beforeModel: (transition) ->
        if not isLoggedIn and @routeName not in ['application', 'login']
          alert("Not logged in - redirecting to login page")
          @controllerFor('login').set('originalTransition', transition)
          @transitionTo('login')

`export default protectedRoutes`