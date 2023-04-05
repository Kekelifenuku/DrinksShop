//
//  Drinks.swift
//  DrinksShop
//
//  Created by kekeli on 09/03/2023.
//

import Foundation

enum Category: String, Codable, Hashable {
    case hot, cold, softDrinks
}

struct Drink: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
    let imageLink: String
    let price: Double
    let category: Category
    
    var imageUrl: URL? {
        URL (string: imageLink)
    }
    
}
