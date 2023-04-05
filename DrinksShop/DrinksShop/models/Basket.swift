//
//  Basket.swift
//  DrinksShop
//
//  Created by kekeli on 11/03/2023.
//

import Foundation

struct Basket: Codable {
    let id: String
    let items: [Drink]
}
