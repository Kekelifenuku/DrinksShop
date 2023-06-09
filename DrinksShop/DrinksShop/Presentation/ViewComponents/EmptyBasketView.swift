//
//  EmptyBasketView.swift
//  DrinksShop
//
//  Created by kekeli on 29/03/2023.
//

import SwiftUI

struct EmptyBasketView: View {
    
    private let message: String
    init (message: String) {
        self.message = message
    }
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack{
                Image(systemName: "list.bullet.clipboard")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.gray, .red, .green)
                    .font(.system(size: 150))
                
                Text(message)
                
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
                
            }
        }
        .offset(y: -50)
    }
}

struct EmptyBasketView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyBasketView(message: "EmptyBasket")
          
    }
}
