angular
  .module("starter.controllers", [])
  .controller("DashCtrl", ($scope) ->)
  .controller "ChatsCtrl", ($scope, Chats) ->

    $scope.chats = Chats.all()

    $scope.remove = (chat) ->
      Chats.remove chat

  .controller "ChatDetailCtrl", ($scope, $stateParams, Chats) ->
    $scope.chat = Chats.get($stateParams.chatId)

  .controller "AccountCtrl", ($scope) ->
    $scope.settings = enableFriends: true
