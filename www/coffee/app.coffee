angular
  .module("les", [
    "ionic"
    "les.controllers"
    "les.services"
  ])
  .config ($stateProvider, $urlRouterProvider) ->

    $stateProvider

      .state "app",
        url: "/app",
        abstract: true
        templateUrl: "templates/menu.html"
        controller: "AppCtrl"

      .state "app.intro",
        url: "/intro",
        views:
          menuContent:
            templateUrl: "templates/intro.html"
            controller: "IntroCtrl"

      .state "app.signin",
        url: "/signin",
        views:
          menuContent:
            templateUrl: "templates/signin.html"
            controller: "SigninCtrl"
        
      .state "app.search",
        url: "/search"
        views:
          menuContent:
            templateUrl: "templates/search.html"
            controller: "SearchCtrl"

      .state "app.notifications",
        url: "/notifications"
        views:
          menuContent:
            templateUrl: "templates/notifications.html"
            controller: "NotificationsCtrl"

      .state "app.about",
        url: "/about"
        views:
          menuContent:
            templateUrl: "templates/about.html"
            controller: "AboutCtrl"


      # Event lists

      .state "app.events",
        url: "/events"
        views:
          menuContent:
            templateUrl: "templates/events.html"
            controller: "EventsCtrl"

      .state "app.events-location",
        url: "/events/location/:id"
        views:
          menuContent:
            templateUrl: "templates/events.html"
            controller: "EventsLocationCtrl"


      # Event details

      .state "app.event-detail",
        url: "/events/:id"
        views:
          menuContent:
            templateUrl: "templates/event.html"
            controller: "EventDetailCtrl"

      .state "app.event-detail-meals",
        url: "/events/:id/meals"
        views:
          menuContent:
            templateUrl: "templates/meals.html"
            controller: "EventDetailMealsCtrl"

      .state "app.event-detail-facilities",
        url: "/events/:id/facilities"
        views:
          menuContent:
            templateUrl: "templates/facilities.html"
            controller: "EventDetailFacilitiesCtrl"

      .state "app.event-detail-guests",
        url: "/events/:id/guests"
        views:
          menuContent:
            templateUrl: "templates/guests.html"
            controller: "EventDetailGuestsCtrl"

      .state "app.event-detail-reviews",
        url: "/events/:id/reviews"
        views:
          menuContent:
            templateUrl: "templates/reviews.html"
            controller: "EventDetailReviewsCtrl"

    $urlRouterProvider.otherwise "/app/intro"
