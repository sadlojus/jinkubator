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

      .when('/about', action: 'main_page.about')
      .when('/meetings', action: 'main_page.meetings')
      .when('/cooperation', action: 'main_page.cooperation')
      .when('/partners', action: 'main_page.partners')
      .when('/prelegents', action: 'prelegents.top')
      .when("/prelegents/:prelegentId", action: 'prelegents')
      .when("/meeting/:meetingId", action: 'meeting')

    # Catch all
    $routeProvider.otherwise({redirectTo: '/about'})

    # Without server side support html5 must be disabled.
    $locationProvider.html5Mode(false)
])
