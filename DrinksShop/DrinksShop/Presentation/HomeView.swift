//
//  ContentView.swift
//  DrinksShop
//
//  Created by kekeli on 09/03/2023.
//

import SwiftUI
import Firebase
import FirebaseFirestore
struct HomeView: View {
    @StateObject private var  viewModel = HomeViewModel()
    @State private var isShowingDetail = false
    
    var categories: [String : [Drink]] {
        .init(
            grouping: viewModel.drinks, by: { $0.category.rawValue }
        )
    }
    var body: some View {
        ZStack {
            NavigationStack{
                List(categories.keys.sorted(), id: \String.self) {
                    key in
                    
                    
                    Section{
                        if let drinks = categories[key] {
                            ForEach(drinks) { drink in
                                DrinkRow(drink) {
                                    viewModel.selectDrink(drink: drink)
                                    isShowingDetail = true
                                }
                            }
                        }
                    } header: {
                        Text(key)
                            .font(.subheadline)
                   
                        
                    }
                    
                    
                }
                .navigationTitle("Home")
                .task(viewModel.fetchDrinks)
                .blur(radius: isShowingDetail ? 20 : 0)
                .disabled(isShowingDetail)
               
            }
            if viewModel.selectedDrink != nil && isShowingDetail {
            DrinkDetailView(drink: viewModel.selectedDrink!, isShowingDetail:
            $isShowingDetail)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
