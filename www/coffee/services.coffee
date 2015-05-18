angular
  .module("les.services", [])
  .factory "Search", ->
    get: ->
      autocomplete


  .factory "Events", ->

    # TODO: get data from API

    getSampleValue = (array, index) ->
      array[if index < array.length then index else index % array.length]

    generateItems = (length) ->
      items = []
      for i in [0..length]
        items.push {
          id: i + 1,
          title: getSampleValue(title, i)
          url: getSampleValue(link_to_event, i)
          address: getSampleValue(address, i)
          time_string: getSampleValue(time_string, i)
          date_string: getSampleValue(date_string, i)
          cover: getSampleValue(cover, i)
          host: getSampleValue(host, i)
          rating: getSampleValue(rating, i)
          description: getSampleValue(description, i)
          details: getSampleValue(details, i)
          meal_types: getSampleValue(meal_types, i)
          facilities: getSampleValue(facilities, i)
          guests: getSampleValue(guests, i)
          reviews: getSampleValue(reviews, i)
        }
      items

    events = generateItems(7)

    {
      all: ->
        events

      get: (id) ->
        for event in events
          if event.id is +id
            return event
        null
    }
