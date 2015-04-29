angular
  .module("starter.controllers", [])

  .controller "UpcomingEventsCtrl", ($scope, UpcomingEvents) ->
    $scope.events = UpcomingEvents.all()
    console.log('events', $scope.events)
    window.$scope = $scope

  .controller "EventDetailCtrl", ($scope, $stateParams, UpcomingEvents) ->
    $scope.event = UpcomingEvents.get($stateParams.id)
    window.$scope = $scope



  .controller("DashCtrl", ($scope) ->)

  .controller "ChatsCtrl", ($scope, Chats) ->

    $scope.chats = Chats.all()

    $scope.remove = (chat) ->
      Chats.remove chat

  .controller "ChatDetailCtrl", ($scope, $stateParams, Chats) ->
    $scope.chat = Chats.get($stateParams.chatId)

  .controller "AccountCtrl", ($scope) ->
    $scope.settings = enableFriends: true
