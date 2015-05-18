angular
  .module("les.controllers", [])

  .controller "AppCtrl", ($scope, User) ->
    $scope.user = User.get()

  .controller "EventsCtrl", ($scope, $ionicModal, Events, Search) ->
    $scope.events = Events.all()
    $scope.results = Search.get()

    window.$scope = $scope

    $ionicModal.fromTemplateUrl "templates/search.html", ((modal) ->
      $scope.modal = modal
    ),
      scope: $scope
      animation: "fade-in"






  .controller "EventDetailCtrl", ($scope, $ionicActionSheet, $stateParams, Events) ->
    $scope.getArray = (limit) -> [1..limit]
    $scope.event = Events.get($stateParams.id)

    $scope.share = ->
      $ionicActionSheet.show
        buttons: [{
          text: "Share on Facebook",
        }, {
          text: "Share on Twitter"
        }]
        titleText: "Share Event"
        cancelText: "Cancel"
        buttonClicked: (index) ->
          if index is 0
            window.open "https://www.facebook.com/sharer/sharer.php?u=#{$scope.event.url}"
          else if index is 1
            window.open "https://twitter.com/home?status=#{$scope.event.url}"






  .controller "EventsLocationCtrl", ($scope, $stateParams, Events) ->
    $scope.events = Events.all()
    console.log('events LOCATION', $stateParams.id, '/', arguments)
    window.$scope = $scope
    $scope.event = Events.get($stateParams.id)

  .controller "EventDetailMealsCtrl", ($scope, $stateParams, Events) ->
    $scope.event = Events.get($stateParams.id)

  .controller "EventDetailFacilitiesCtrl", ($scope, $stateParams, Events) ->
    $scope.event = Events.get($stateParams.id)

  .controller "EventDetailGuestsCtrl", ($scope, $stateParams, Events) ->
    $scope.event = Events.get($stateParams.id)

  .controller "EventDetailReviewsCtrl", ($scope, $stateParams, Events) ->
    $scope.getArray = (limit) -> [1..limit]
    $scope.event = Events.get($stateParams.id)

  .controller "SearchCtrl", ($scope, $stateParams, Search) ->
    $scope.results = Search.get()

