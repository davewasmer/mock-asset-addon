LoginRouter = 
  name: 'LoginRouter'
  initialize: (container, application) ->
    Router = container.lookup('router:main').constructor
    Router.map ->
      @route('login')

`export default LoginRouter`