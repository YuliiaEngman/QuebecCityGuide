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
        FreeSightseeing(title: "Slide From The Top", name: "Free Slide", image: "FreeSlide", description: "Grab your slide (or simply any plastic bag to sit on) and enjoy winder sliding fun in Quebec \"winter-wonderland\". Check out Plains of Abrahams, they have a descent hills for sliding purpoise.", url: "http://www.editingluke.net/2019/01/plains-of-abraham-in-quebec-city.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+blogspot%2FEvqlv+%28Editing+Luke%29"),
        FreeSightseeing(title: "Get There", name: "Brave Enough? Try Hitchhiking!", image: "SnowMan", description: "According to the Google maps it will take you 162 hours to get to Quebec City by foot. Unless you are cross-country hicker this is not an option. But what about hitchhiking? Good driver can be a good listener or spokeman and you may have a nice time. But do not choose this option is you do not feel confident. Look for more expensive but more safe options in other calegtories (Budget travel for example).", url: "https://hitchwiki.org/en/Canada"),
        FreeSightseeing(title: "Accomodation", name: "Couchsurfing", image: "CouchSurfing", description: "Do you like to talk to people and dive deeply to their culture? Couchsurfing is a great experience where you can sleep at somebodies couch for free, live like local and easily to make new friends in different city or country. It is pretty safe even for travelling alone fem,ales if you choose the host with a lot of good review. Their site also has a lot of free events where you can meet new people, have free tour of the city or nice secret party. Use it!", url: "https://www.couchsurfing.com/places/north+america/canada/quebec"),
    ]
}



