//
//  BasketView.swift
//  DrinksShop
//
//  Created by kekeli on 09/03/2023.
//

import SwiftUI
import Firebase
import FirebaseFirestore
struct BasketView: View {
    @EnvironmentObject var basket: BasketViewModel
    @EnvironmentObject var userRepository: UserRepository
    @ViewBuilder
    private func placeOrderButton () -> some View {
        Button{
            basket.createOrder(for: userRepository.user)
        } label: {
            Text("\(basket.totalPrice, format: .currency (code: "EUR")) - Place Order")
        }
        .buttonStyle(.borderedProminent)
        .padding(30)
    }
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack {
                    List {
                        ForEach (basket.items) { drink in
                            DrinkRow(drink, didClickRow: {})
                        }
                        .onDelete (perform: basket.deleteItems)
                    }
                    .listStyle(.grouped)
                    .safeAreaInset (edge: .bottom) {
                        placeOrderButton()
                    }
                }
                if basket.items.isEmpty {
                    EmptyBasketView(message:  "You have no items in your basket. \n Please add Some")
                }
            }
            .navigationTitle("🛒")
            .alert (isPresented: $basket.showError) {
            Alert (title: Text("Error"),
            message: Text (basket.basketError?.description ?? ""),
            dismissButton: .default(Text( "OK" )))
                   }
                   
                   
        }
    }
}

struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView()
    }
}
