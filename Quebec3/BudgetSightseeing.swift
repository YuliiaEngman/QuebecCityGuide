//
//  BudgetSightseeing.swift
//  New-Year-in-Quebec-City
//
//  Created by Yuliia Engman on 1/9/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import Foundation

struct BudgetSightseeing {
    let title: String
    let name: String
    let image: String
    let description: String
    let url: String
    
    static let budgetSightseeing: [BudgetSightseeing] = [
        BudgetSightseeing(title: "Slide From The Top", name: "Toboggan Slide", image: "Tobogan", description: "More than a century-old slide, a unique attraction in Quebec City. The slide will undoubtely make you feel emotions as you get to speed up to 45 miles / hour down the hill. Be sure to hold on tight to your hats, down you go!. Price starts as cheep as 3 Canadian Dollars per ride.", url: "http://www.au1884.ca/en/"),
        BudgetSightseeing(title: "Take a City Tour on Carriage", name: "Explore City With The Guide", image: "Horses", description: "Tired to walk and want to have fun experience? Try Caleches Quebec. This company offers to live the culture and history of Quebec by crossing the landscape on horse-drawn carriage.", url: "https://www.calechesquebec.com/en/"),
        BudgetSightseeing(title: "Get There", name: "Drive Or Take A Bus", image: "DriveToCanada", description: "If you have a car it should take you a day to get there. If you do not have a car consider bus or budget airlines (depends on your budget).", url: "https://www.rome2rio.com/map/New-York/Quebec"),
        BudgetSightseeing(title: "Accomodation", name: "Hostels", image: "Hostel", description: "Simple, clean and affordable accomodation option is hostel. Price varies from 20 Canadian Dollars in dorm bed up to 70 Canadian Dollars for private room. Some hostels have even free breakfast, that can save your money. Check the link bellow or consider small hotel based on your budget.", url: "https://www.thebrokebackpacker.com/best-hostels-in-quebec-canada/"),
    ]
}




