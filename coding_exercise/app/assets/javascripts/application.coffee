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
    ngCart.setTaxRate 7.5
    ngCart.setShipping 2.99
    return
]
