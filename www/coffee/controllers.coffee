angular
  .module("les.controllers", [])

  .controller "AppCtrl", ($scope, $interval, $ionicSideMenuDelegate, User, Notifications) ->

    $scope.user = User.get()
    $scope.notifications = Notifications.get()
    $scope.unread = (item for item in $scope.notifications when item.unread)

    $scope.resetEventCounter = ->
      $scope.eventCounter = +new Date(0) - 1000
      
    $scope.resetEventCounter()
    
    $interval ->
      $scope.eventCounter -= 1000
    , 1000, 60 * 60

    $scope.menu = [
      {
        title: "Feed"
        url: "#/app/events"
        icon: "ion-ios-paper-outline"
        active: true
      }
      {
        title: "Notifications"
        url: "#/app/notifications"
        icon: "ion-ios-bell-outline"
        counter: $scope.unread.length
      }
      {
        title: "Log Out"
        url: "#/app/intro"
        icon: "ion-ios-upload-outline"
      }
      {
        title: "About Us"
        url: "#/app/about"
        icon: "ion-ios-information-outline"
      }
    ]

    $scope.onMenuClick = ->
      for item in $scope.menu
        item.active = false
      @item.active = true
      $ionicSideMenuDelegate.toggleLeft()

  .controller "EventsCtrl", ($scope, $ionicModal, Events, Search) ->
    $scope.events = Events.all()
    $scope.results = Search.get()

    modalOptions =
      scope: $scope
      animation: "fade-in"

    $ionicModal.fromTemplateUrl "templates/search.html", ((modal) ->
      $scope.modal = modal
    ), modalOptions






  .controller "EventDetailCtrl", ($scope, $window, $ionicActionSheet, $stateParams, Events) ->
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
            $window.open "https://www.facebook.com/sharer/sharer.php?u=#{$scope.event.url}", "_system"
          else if index is 1
            $window.open "https://twitter.com/home?status=#{$scope.event.url}", "_system"






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

  .controller "NotificationsCtrl", ($scope, $filter, Notifications) ->

    $scope.notifications = Notifications.get()

    $scope.notificationSections = [{
      title: "Today",
      items: $filter('filter')($scope.notifications, {section: 'today'})
    }, {
      title: "Yesterday",
      items: $filter('filter')($scope.notifications, {section: 'yesterday'})
    }, {
      title: "Earlier",
      items: $filter('filter')($scope.notifications, {section: 'earlier'})
    }]


  .controller "AboutCtrl", ->
    return

  .controller "IntroCtrl", ->
    return

  .controller "SigninCtrl", ($scope, $window) ->
    $scope.signUp = ->
      $window.open "http://loveeatshare.com/users/sign_up", "_system"



