angular
  .module("les.controllers", [])

  .controller "AppCtrl", ($scope) ->
    console.log('App controller')

  .controller "EventsCtrl", ($scope) ->
    console.log('Event controller')
    $scope.test = 111
