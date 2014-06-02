###
# Sample Controller
###
class @SampleCtrl extends @BaseCtrl
  @register sampleApp

  @inject '$rootScope', '$scope'

  # initialize the controller
  initialize: ->
    _s = @

    _s.$scope.name = 'my name.'


  changeName: (name) ->
    _s = @
    _s.$scope.name = name
