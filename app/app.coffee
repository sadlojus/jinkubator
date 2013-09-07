'use strict'

# Declare app level module which depends on filters, and services
App = angular.module('app', [
  'ngCookies'
  'ngResource'
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
  'ui'
  'parallax'
])

App.config([
  '$routeProvider'
  '$locationProvider'

  ($routeProvider, $locationProvider, config) ->
    $routeProvider

      .when('/about', action: 'page1.about')
      .when('/meetings', action: 'page1.meetings')
      .when('/sponsors', action: 'page1.sponsors')
      .when('/partners', action: 'page1.partners')
      
    for num in [1..20]
      $routeProvider.when("/meeting/#{num}", action: "meeting#{num}")

    # Catch all
    $routeProvider.otherwise({redirectTo: '/about'})

    # Without server side support html5 must be disabled.
    $locationProvider.html5Mode(false)
])
