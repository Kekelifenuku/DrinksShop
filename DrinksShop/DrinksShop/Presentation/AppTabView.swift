//
//  AppTabView.swift
//  DrinksShop
//
//  Created by kekeli on 09/03/2023.
//

import SwiftUI
import Firebase
import FirebaseFirestore
struct AppTabView: View {
    var body: some View {
        TabView{
            
            HomeView()
                .tabItem {
                Image (systemName: "house")
                Text ( "Home" )
                        .bold()
                        
            }
            BasketView()
            .tabItem {
            Image (systemName: "cart")
                    .bold()
            Text( "Basket" )
                    .bold()
            }
              
            AccountView()
            .tabItem {
            Image (systemName: "person")
                Text( "Account" )
                    .bold()
            }
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
