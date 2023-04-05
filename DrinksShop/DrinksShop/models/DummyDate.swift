//
//  DummyDate.swift
//  DrinksShop
//
//  Created by kekeli on 09/03/2023.
//

import Foundation


struct DummyData {
    
    static let basket = Basket(id: UUID() .uuidString, items: [])
    static let user = User(id: UUID().uuidString, name: "David", address: "123 North Avenue",
    mobile: "99887766")
    
    static let drinks: [Drink] = [
        Drink(id: UUID().uuidString, name: "cocacola", description: "Outside of Italy, cappuccino is a coffee drink that today is typically composed of double espresso and hot milk, with the surface topped with foamed milk. Cappuccinos are most often prepared with an espresso machine.", imageLink:
                "https://images.pexels.com/photos/8148745/pexels-photo-8148745.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              price: 29.50,
                category: Category.softDrinks),
        
     
            Drink(id: UUID().uuidString, name: "krumbach", description: "Outside of Italy, cappuccino is a coffee drink that today is typically composed of double espresso and hot milk, with the surface topped with foamed milk. Cappuccinos are most often prepared with an espresso machine.", imageLink:
                    "https://images.pexels.com/photos/2127005/pexels-photo-2127005.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                  price: 32.50,
                    category: Category.softDrinks),
        
        Drink(id: UUID().uuidString, name: "corona", description: "Outside of Italy, cappuccino is a coffee drink that today is typically composed of double espresso and hot milk, with the surface topped with foamed milk. Cappuccinos are most often prepared with an espresso machine.", imageLink:
                "https://images.pexels.com/photos/4068383/pexels-photo-4068383.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              price: 25.50,
                category: Category.softDrinks),
        
        Drink(id: UUID().uuidString, name: "Greentea", description: "Outside of Italy, cappuccino is a coffee drink that today is typically composed of double espresso and hot milk, with the surface topped with foamed milk. Cappuccinos are most often prepared with an espresso machine.", imageLink:
                "https://images.pexels.com/photos/3090274/pexels-photo-3090274.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              price: 102.50,
                category: Category.hot),
        
        
        Drink(id: UUID().uuidString, name: "tea", description: "Outside of Italy, cappuccino is a coffee drink that today is typically composed of double espresso and hot milk, with the surface topped with foamed milk. Cappuccinos are most often prepared with an espresso machine.", imageLink:
                "https://images.pexels.com/photos/905485/pexels-photo-905485.jpeg",
              price: 92.50,
                category: Category.hot),
        
        
        Drink(id: UUID().uuidString, name: "cofe", description: "Outside of Italy, cappuccino is a coffee drink that today is typically composed of double espresso and hot milk, with the surface topped with foamed milk. Cappuccinos are most often prepared with an espresso machine.", imageLink:
                "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              price: 93.50,
                category: Category.hot),
        
        Drink(id: UUID().uuidString, name: "orangejuice", description: "Outside of Italy, cappuccino is a coffee drink that today is typically composed of double espresso and hot milk, with the surface topped with foamed milk. Cappuccinos are most often prepared with an espresso machine.", imageLink:
                "https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=600",
              price: 200.50,
                category: Category.cold),
        
        Drink(id: UUID().uuidString, name: "chocolate", description: "Outside of Italy, cappuccino is a coffee drink that today is typically composed of double espresso and hot milk, with the surface topped with foamed milk. Cappuccinos are most often prepared with an espresso machine.", imageLink:
                "https://images.pexels.com/photos/2983100/pexels-photo-2983100.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              price: 20.50,
                category: Category.cold),
        
        Drink(id: UUID().uuidString, name: "lemonade", description: "Outside of Italy, cappuccino is a coffee drink that today is typically composed of double espresso and hot milk, with the surface topped with foamed milk. Cappuccinos are most often prepared with an espresso machine.", imageLink:
                "https://images.pexels.com/photos/1187766/pexels-photo-1187766.jpeg?auto=compress&cs=tinysrgb&w=600",
              price: 12.50,
                category: Category.cold),
    ]
}
