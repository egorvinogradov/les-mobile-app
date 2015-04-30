angular
  .module("starter.services", [])


  .factory "Search", ->

    autocomplete = [
      {
        city: "Alameda"
        country: "United States"
        id: 1001
      },
      {
        city: "Albany"
        country: "United States"
        id: 1002
      },
      {
        city: "American"
        country: "United States"
        id: 1003
      },
      {
        city: "Antioch"
        country: "United States"
        id: 1004
      },
      {
        city: "Atherton"
        country: "United States"
        id: 1005
      },
      {
        city: "Belmont"
        country: "United States"
        id: 1006
      },
      {
        city: "Belvedere"
        country: "United States"
        id: 1007
      },
      {
        city: "Benicia"
        country: "United States"
        id: 1008
      },
      {
        city: "Berkeley"
        country: "United States"
        id: 1009
      },
      {
        city: "Brentwood"
        country: "United States"
        id: 1010
      },
      {
        city: "Brisbane"
        country: "United States"
        id: 1011
      },
      {
        city: "Burlingame"
        country: "United States"
        id: 1012
      },
      {
        city: "Calistoga"
        country: "United States"
        id: 1013
      },
      {
        city: "Campbell"
        country: "United States"
        id: 1014
      },
      {
        city: "Clayton"
        country: "United States"
        id: 1015
      }
    ]

    get: (keyword) ->
      autocomplete


  .factory "Events", ->

    # TODO: get data from API

    title = [
      "Pasta Madness at Casa Maestoso!"
      "Thanksgiving turkey"
      "BBQ Party"
    ]
    address = [
      "New York, US"
      "Berkeley, CA"
      "Palo Alto, CA"
    ]
    time_string = [
      "8PM"
      "4PM"
      "11AM"
    ]
    date_string = [
      "16 May"
      "18 May"
      "21 May"
    ]
    cover = [
      "img/samples/1.jpg"
      "img/samples/2.jpg"
      "img/samples/3.jpg"
    ]

    host = [
      {
        fist_name: "Rebecca"
        last_name: "Morrison"
        photo: "http://i.imgur.com/uiAncqd.jpg"
        languages: ["English", "German", "Japanese", "Russian"]
      }
      {
        fist_name: "Derek"
        last_name: "Johnson"
        photo: "http://i.imgur.com/1jHODNp.jpg"
        languages: ["English", "Russian"]
      }
    ]

    rating = [3,4,5]

    description = [
      "The supper club begins with a traditional New Orleans cocktail followed by a sumptuous 4 course feast: Gumbo, New Orleans Cream Tea, Main Course"
      "Creole and Cajun dishes such as cornbread, buttermilk biscuits, grits and gumbo will be yours to enjoy alongside other delights you won't find anywhere else in the capital."
    ]

    details = [
      {
        min_guests: 2
        max_guests: 10
        event_duration: 12
        policies: {
          "Hosting with": "I host by myself"
          "Host Preferences": "I sit with my guest"
          "Composition": "Main Course & Dessert"
          "Cuisine Type": "Filipino"
          "Drinks": "Beer, Guests Can Bring"
        }
      }
    ]

    meal_types = [
      {
        "bbq": "BBQ"
        "broccoli": "Broccoli"
        "burger": "Burger"
        "chocolate": "Chocolate"
        "fish": "Fish"
        "food-chicken": "Chicken"
        "food-healthy": "Healthy Food"
        "food-kosher": "Kosher"
        "food-meat": "Meat"
        "food-raw": "Raw Food"
        "leaves": "Leaves"
        "moustache": "Moustache"
        "spices": "Spices"
        "sweet-tooth": "Sweet Tooth"
        "tomato": "Tomato"
        "wine": "Wine"
      }
    ]

    facilities = [
      {
        "bus": "Bus"
        "child-ball": "Child Ball"
        "disables": "Disables"
        "dogs": "Dogs"
        "elevator": "Elevator"
        "fan": "Fan"
        "heating-system": "Heating System"
        "paid-parking": "Paid Parking"
        "parking-inside": "Parking Inside"
        "parking-outdoor": "Parking Outdoor"
        "pool": "Pool"
        "smoking-inside": "Smoking Inside"
        "smoking-outside": "Smoking Outside"
        "wifi": "WiFi"
      }
    ]

    guests = [
      [
        {
          fist_name: "Abby"
          last_name: "Abbott"
          photo: "http://i.imgur.com/32Xn5B9.jpg"
          languages: ["English", "German", "Japanese", "Russian"]
        }
        {
          fist_name: "Clovis"
          last_name: "Si"
          photo: "http://i.imgur.com/D9pKGAy.jpg"
          languages: ["English", "Russian"]
        }
        {
          fist_name: "Dasha"
          last_name: "Smolina"
          photo: "http://i.imgur.com/uiAncqd.jpg"
          languages: ["English", "German", "Japanese", "Russian"]
        }
        {
          fist_name: "Ivan"
          last_name: "Annikov"
          photo: "http://i.imgur.com/1jHODNp.jpg"
          languages: ["English", "Russian"]
        }
        {
          fist_name: "Rebecca"
          last_name: "Morrison"
          photo: "http://i.imgur.com/32Xn5B9.jpg"
          languages: ["English", "German", "Japanese", "Russian"]
        }
        {
          fist_name: "Derek"
          last_name: "Johnson"
          photo: "http://i.imgur.com/D9pKGAy.jpg"
          languages: ["English", "Russian"]
        }
      ]
    ]

    reviews = [
      [
        {
          fist_name: "Abby"
          last_name: "Abbott"
          photo: "http://i.imgur.com/32Xn5B9.jpg"
          review: "The supper club begins with a traditional New Orleans cocktail followed by a sumptuous 4 course feast: Gumbo, New Orleans Cream Tea, Main Course and Dessert so be sure to come hungry."
          rating: 4
        }
        {
          fist_name: "Derek"
          last_name: "Johnson"
          photo: "http://i.imgur.com/D9pKGAy.jpg"
          review: "Followed by a sumptuous 4 course feast: Gumbo, New Orleans Cream Tea, Main Course and Dessert so be sure to come hungry."
          rating: 4
        }
      ]
    ]

    getSampleValue = (array, index) ->
      array[if index < array.length then index else index % array.length]

    generateItems = (length) ->
      items = []
      for i in [0..length]
        items.push {
          id: i + 1,
          title: getSampleValue(title, i)
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




  .factory "Chats", ->
    # Might use a resource here that returns a JSON array

    # Some fake testing data
    chats = [
      {
        id: 0
        name: "Ben Sparrow"
        lastText: "You on your way?"
        face: "https://pbs.twimg.com/profile_images/514549811765211136/9SgAuHeY.png"
      }
      {
        id: 1
        name: "Max Lynx"
        lastText: "Hey, it\"s me"
        face: "https://avatars3.githubusercontent.com/u/11214?v=3&s=460"
      }
      {
        id: 2
        name: "Andrew Jostlin"
        lastText: "Did you get the ice cream?"
        face: "https://pbs.twimg.com/profile_images/491274378181488640/Tti0fFVJ.jpeg"
      }
      {
        id: 3
        name: "Adam Bradleyson"
        lastText: "I should buy a boat"
        face: "https://pbs.twimg.com/profile_images/479090794058379264/84TKj_qa.jpeg"
      }
      {
        id: 4
        name: "Perry Governor"
        lastText: "Look at my mukluks!"
        face: "https://pbs.twimg.com/profile_images/491995398135767040/ie2Z_V6e.jpeg"
      }
    ]
    
    {
      all: ->
        chats

      remove: (chat) ->
        chats.splice chats.indexOf(chat), 1

      get: (chatId) ->
        i = 0
        while i < chats.length
          if chats[i].id == parseInt(chatId)
            return chats[i]
          i++
        null
    }
