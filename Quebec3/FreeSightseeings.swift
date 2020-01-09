//
//  FreeSightseeings.swift
//  Quebec3
//
//  Created by Yuliia Engman on 1/5/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import Foundation

struct FreeSightseeing {
    let title: String
    let name: String
    let image: String
    let description: String
    let url: String
    
    static let freeSightseeing: [FreeSightseeing] = [
        FreeSightseeing(title: "Walk in the city", name: "Explore City On Your Own", image: "FCityOnOwn", description: "Enjoy in your own pace the beuty of Quebec City by walking on it's streets during the day and night.", url: "https://maps-quebec-city.com/old-quebec-tourist-map"),
        FreeSightseeing(title: "Take a Free City Tour", name: "Explore City With The Guide", image: "FStreetDay", description: "Explore the City with funny local guide - Samuel. He will tell you many interesting facts about the city and you will learn a lot new information about Canadians in general and Quebecioans in particular. Find more at his website: www.afreetourofquebec.com. If you like the tour (and we are sure that you will like it) leave him some tips based on your budget.", url: "https://www.afreetourofquebec.com"),
    ]
}



//struct Country {
//  let name: String
//  let countryDescription: String
//  let continent: String
//  let countryCode: String
//
//  // Country.countries
//  static let countries = [
//    Country(name: "Saint Lucia", countryDescription: "Tropical 🏝 paradise. Known as Helen of the West. Only drive-in volcano. National dish is green banana and salt fish. ", continent: "North America", countryCode: "LC"),
//    Country(name: "Colombia", countryDescription: "Historically troubled with natural beauty. Known for coffee (you’re welcome), ", continent: "South America", countryCode: "CO"),
//    Country(name: "Jamaica", countryDescription: "West Indian/Caribbean utopia. Origin of Reggae/Dancehall.  Birthplace of Bob Marley & Vybz Kartel. Know for cuisine choices such as ackee & salt fish, jerk everything, and mango’s", continent: "North America", countryCode: "JM"),
//    Country(name: "Bangladesh", countryDescription: "It’s hot.  Evidently the national dish is Hilsa Curry (hilsa is a fish).  But she likes tilapia. Muslin originally came from Bangladesh too. ", continent: "Asia", countryCode: "BD"),
//    Country(name: "United States", countryDescription: "Known as Land of the free! The American dream. Our national dish are hamburgers ( originally made from a Hamburg steak) ", continent: "North America", countryCode: "US"),
//    Country(name: "India", countryDescription: "Tropical country, very culturally diverse and curry is very popular there", continent: "Asia", countryCode: "IN"),
//    Country(name: "Ukraine", countryDescription: "Country in Eastern Europe with wonderful climate (full four seasons). Known for its tasty food (national dish is Borsch with pampushki (garlic bread)) and cozy stylish cafes.", continent: "Europe", countryCode: "UA"),
//    Country(name: "Dominican Republic", countryDescription: "Invented Mangu. Hot. Dominican Republic is the second largest and most diverse Caribbean country, situated just two hours south of Miami, less than four hours from New York and eight hours from most European cities. Known for our warm and hospitable people, Dominican Republic is a destination like no other, featuring astounding nature, intriguing history and rich culture.", continent: "North America", countryCode: "DO"),
//    Country(name: "Nepal", countryDescription: "Landlocked country, Hinduism and Buddhism are the two main religion. Cows are sacred and cant be kill. Known for Mt. Everest.", continent: "Asia", countryCode: "NP"),
//    Country(name: "Ecuador", countryDescription: "City in Southern Ecuador. Known for hand crafted Panama hats :womans_hat:(and other things I can't remember...)", continent: "South America", countryCode: "EC"),
//    Country(name: "Nigeria", countryDescription: "The home of Afro-beat. A true motherland.  The National dish is Jollof Rice which is known for being very spicy and can be filled with meat , chicken , or shrimp (just to name a few).", continent: "Africa", countryCode: "NG"),
//    Country(name: "Dominica", countryDescription: "Dominica is a small island in the West Indies with a population of just under 75,000 people. One of it's national dances is the the Bele, a dance that displays it's national wear.", continent: "North America", countryCode: "DM"),
//    Country(name: "Mexico", countryDescription: "One of North America's biggest countries, known for its great tasting spices and food and hard working people", continent: "North America", countryCode: "MX"),
//    Country(name: "Russia", countryDescription: "Largest country in the world. It shares borders with 14 countries and has 9 time zones. Russia won World War 2. National dish is Vodka.", continent: "Europe", countryCode: "RU"),
//    Country(name: "Martinique", countryDescription: "Martinique is a rugged Caribbean island that’s part of the Lesser Antilles. An overseas region of France, its culture reflects a distinctive blend of French and West Indian influences. Its largest town, Fort-de-France, features steep hills, narrow streets and La Savane, a garden bordered by shops and cafes. In the garden is a statue of island native Joséphine de Beauharnais, first wife of Napoleon Bonaparte.", continent: "North America", countryCode: "MQ"),
//  ]
//
//  // type method
//  // objective:
//  // is to creates an array of arrays
//  // we do that by using the continent name as the section for the country the belongs in it
//  static func getContinents() -> [[Country]] {
//    // goes through our countries array and sorts all the elements by continent
//    // < means ascending, e.g a....z
//    // > meand descending, e.g z.....a
//    let sortedContinents = countries.sorted { $0.continent < $1.continent }
//
//    // creates unique continent titles
//    let continentTitles: Set<String> = Set(countries.map { $0.continent })
//
//    var sectionsArr = Array(repeating: [Country](), count: continentTitles.count)
//    // created 5 empty arrays of type [Country]
//    // [[],[],[],[],[]]
//
//    // iterate through our countries array and add to the relevant section
//    var currentIndex = 0
//    var currentContinent = sortedContinents.first?.continent ?? "Pursuit" // e.g Asia
//    for country in sortedContinents {
//      if country.continent == currentContinent {
//        // add to current section
//        sectionsArr[currentIndex].append(country)
//      } else { // visiting a new continent
//        currentIndex += 1
//        currentContinent = country.continent // updating the current continent's value
//        sectionsArr[currentIndex].append(country)
//      }
//    }
//    return sectionsArr
//  }
//
//  var thumbnailImageName: String { // "ukrainr_tn"
//    let str = name.components(separatedBy: " ").joined().description.lowercased()
//    return str + "_tn"
//  }
//
//  var fullImageName: String { // "ukraine"
//     let str = name.components(separatedBy: " ").joined().description.lowercased()
//     return str
//  }
//}
