angular
  .module("les", [
    "ionic"
    "les.controllers"
  ])
  .run ($ionicPlatform) ->
    $ionicPlatform.ready ->

      if window.StatusBar
        StatusBar.styleDefault()

      console.log('Ready')



  .config ($stateProvider, $urlRouterProvider) ->

    console.log('> config');

    $stateProvider
      .state "app",
        url: "/app",
        abstract: true
        templateUrl: "templates/menu.html"
        controller: "AppCtrl"

      .state "app.events",
        url: "/events"
        views:
          menuContent:
            templateUrl: "templates/events.html"
#            controller: "EventsCtrl"

    $urlRouterProvider.otherwise "/app"
