#= require jquery
#= require jquery_ujs
#= require bootstrap-sprockets
#= require angular
#= require ngCart
#= require ngCart.directives
#= require ngCart.fulfilment
myApp = angular.module('myApp', [ 'ngCart' ])
myApp.controller 'myCtrl', [
  '$scope'
  '$http'
  'ngCart'
  ($scope, $http, ngCart) ->
    ngCart.setTaxRate 0.0
    ngCart.setShipping 0.0
    return
]
