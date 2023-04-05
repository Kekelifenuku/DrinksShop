//
//  Order.swift
//  DrinksShop
//
//  Created by kekeli on 11/03/2023.
//

import Foundation


struct Order: Codable {
    let id: String
    let customerName: String
    let customerAddress: String
    let customerMobile: String
    let items: [Drink]
    let orderTotal: Double
}
