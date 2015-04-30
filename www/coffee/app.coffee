# Ionic Starter App
# angular.module is a global place for creating, registering and retrieving Angular modules
# "starter" is the name of this angular module example (also set in a <body> attribute in index.html)
# the 2nd parameter is an array of "requires"
# "starter.services" is found in services.js
# "starter.controllers" is found in controllers.js

angular
  .module("starter", [
    "ionic"
    "starter.controllers"
    "starter.services"
  ])
  .run ($ionicPlatform) ->

    $ionicPlatform.ready ->

      # Hide the accessory bar by default (remove this to show the
      # accessory bar above the keyboard for form inputs)
      if window.cordova and window.cordova.plugins.Keyboard
        cordova.plugins.Keyboard.hideKeyboardAccessoryBar true

      if window.StatusBar
        # org.apache.cordova.statusbar required
        StatusBar.styleDefault()

  .config ($stateProvider, $urlRouterProvider) ->

    # Ionic uses AngularUI Router which uses the concept of states
    # Learn more here: https://github.com/angular-ui/ui-router
    # Set up the various states which the app can be in.
    # Each state"s controller can be found in controllers.js
    
    $stateProvider

      .state "tab",
        url: "/tab"
        abstract: true
        templateUrl: "templates/tabs.html"

      .state "tab.dash",
        url: "/dash"
        views: "tab-dash":
          templateUrl: "templates/tab-dash.html"
          controller: "DashCtrl"

      .state "tab.chats",
        url: "/chats"
        views: "tab-chats":
          templateUrl: "templates/tab-chats.html"
          controller: "ChatsCtrl"

      .state "tab.chat-detail",
        url: "/chats/:chatId"
        views: "tab-chats":
          templateUrl: "templates/chat-detail.html"
          controller: "ChatDetailCtrl"

      .state "tab.account",
        url: "/account"
        views: "tab-account":
          templateUrl: "templates/tab-account.html"
          controller: "AccountCtrl"




      # Custom

#      .state "tab.search",
#        url: "/search"
#        views: "tab-search":
#          templateUrl: "templates/search.html"
#          controller: "SearchCtrl"

      .state "tab.search",
        url: "/search"
        views: "tab-search":
          templateUrl: "templates/search.html"
          controller: "SearchCtrl"

      .state "tab.events",
        url: "/events"
        views: "tab-events":
          templateUrl: "templates/events.html"
          controller: "EventsCtrl"

      .state "tab.events-location",
        url: "/events/location/:id"
        views: "tab-events":
          templateUrl: "templates/events.html"
          controller: "EventsLocationCtrl"

      .state "tab.event-detail",
        url: "/events/:id"
        views: "tab-events":
          templateUrl: "templates/event.html"
          controller: "EventDetailCtrl"

      .state "tab.event-detail-meals",
        url: "/events/:id/meals"
        views: "tab-events":
          templateUrl: "templates/meals.html"
          controller: "EventDetailMealsCtrl"

      .state "tab.event-detail-facilities",
        url: "/events/:id/facilities"
        views: "tab-events":
          templateUrl: "templates/facilities.html"
          controller: "EventDetailFacilitiesCtrl"

      .state "tab.event-detail-guests",
        url: "/events/:id/guests"
        views: "tab-events":
          templateUrl: "templates/guests.html"
          controller: "EventDetailGuestsCtrl"

      .state "tab.event-detail-reviews",
        url: "/events/:id/reviews"
        views: "tab-events":
          templateUrl: "templates/reviews.html"
          controller: "EventDetailReviewsCtrl"



          #/tab/search

    # if none of the above states are matched, use this as the fallback
    $urlRouterProvider.otherwise "/tab/events"
