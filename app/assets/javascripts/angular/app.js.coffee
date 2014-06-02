###
# app
###
@sampleApp = angular.module("sampleApp", ['Common'])


###
# ui-view (for single page application)
###
@sampleApp.config ($stateProvider, $urlRouterProvider) ->

  $urlRouterProvider.otherwise('/signin')
  $stateProvider
  # signin
  .state "signin",
    url: "/signin"
    views:
      '':
        templateUrl: "/assets/view.html"
        controller: "SampleCtrl"
  @



###
# for turblinks
###
$(document).on 'page:load', ->
  $('[ng-app]').each ->
    module = $(this).attr('ng-app')
    angular.bootstrap(this, [module])
