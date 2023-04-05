//
//  HomeViewModel.swift
//  DrinksShop
//
//  Created by kekeli on 14/03/2023.
//

import Foundation

final class HomeViewModel: ObservableObject {
    
    private let firebaseRepository = FirebaseRepository()
    
    @Published private(set) var drinks: [Drink] = []
    @Published private(set) var selectedDrink: Drink?
    
   @Sendable func fetchDrinks () async {
        do {
            drinks = try await firebaseRepository.fetchDrinks()
        } catch {
            print ("Error fetching drinks ", error.localizedDescription)
        }
    }
    
     
    
 
    func selectDrink(drink: Drink) {
        selectedDrink = drink
    }
}
