angular.module('ngCart.fulfilment', []).service('fulfilmentProvider', [
  '$injector'
  ($injector) ->
    @_obj =
      service: undefined
      settings: undefined

    @setService = (service) ->
      @_obj.service = service
      return

    @setSettings = (settings) ->
      @_obj.settings = settings
      return

    @checkout = ->
      provider = $injector.get('ngCart.fulfilment.' + @_obj.service)
      provider.checkout @_obj.settings

    return
]).service('ngCart.fulfilment.log', [
  '$q'
  '$log'
  'ngCart'
  ($q, $log, ngCart) ->

    @checkout = ->
      deferred = $q.defer()
      $log.info ngCart.toObject()
      deferred.resolve cart: ngCart.toObject()
      deferred.promise

    return
]).service('ngCart.fulfilment.http', [
  '$http'
  'ngCart'
  ($http, ngCart) ->

    @checkout = (settings) ->
      $http.post '/checkout/add', data: ngCart.toObject()

    return
]).service 'ngCart.fulfilment.paypal', [
  '$http'
  'ngCart'
  ($http, ngCart) ->
]
