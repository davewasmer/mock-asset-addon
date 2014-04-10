LoginController = Ember.Controller.extend

  actions:
    login: ->
      if @get('originalTransition')?
        @get('originalTransition').retry()
      else
        @redirectToRoute(ENV.mockAssetAddonConfig.loginSuccessRedirectRoute)

`export default LoginController`