angular
  .module("starter.controllers", [])

  .controller "EventsCtrl", ($scope, Events) ->
    $scope.events = Events.all()
    console.log('events', $scope.events)
    window.$scope = $scope

  .controller "EventsLocationCtrl", ($scope, $stateParams, Events) ->
    $scope.events = Events.all()
    console.log('events LOCATION', $stateParams.id, '/', arguments)
    window.$scope = $scope

  .controller "EventDetailCtrl", ($scope, $stateParams, Events) ->
    $scope.event = Events.get($stateParams.id)
    window.$scope = $scope

  .controller "EventDetailMealsCtrl", ($scope, $stateParams, Events) ->
    $scope.event = Events.get($stateParams.id)

  .controller "EventDetailFacilitiesCtrl", ($scope, $stateParams, Events) ->
    $scope.event = Events.get($stateParams.id)

  .controller "EventDetailGuestsCtrl", ($scope, $stateParams, Events) ->
    $scope.event = Events.get($stateParams.id)

  .controller "EventDetailReviewsCtrl", ($scope, $stateParams, Events) ->
    $scope.event = Events.get($stateParams.id)


  .controller "SearchCtrl", ($scope, $stateParams, Search) ->
    $scope.results = Search.get()
#    $scope.onSearch = ->
#      console.log('> on search', this, '==', $scope.query)



  .controller("DashCtrl", ($scope) ->)

  .controller "ChatsCtrl", ($scope, Chats) ->

    $scope.chats = Chats.all()

    $scope.remove = (chat) ->
      Chats.remove chat

  .controller "ChatDetailCtrl", ($scope, $stateParams, Chats) ->
    $scope.chat = Chats.get($stateParams.chatId)

  .controller "AccountCtrl", ($scope) ->
    $scope.settings = enableFriends: true
