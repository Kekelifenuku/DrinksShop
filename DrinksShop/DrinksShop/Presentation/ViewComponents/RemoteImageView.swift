//
//  RemoteImageView.swift
//  DrinksShop
//
//  Created by kekeli on 21/03/2023.
//

import SwiftUI
import CachedAsyncImage

struct RemoteImageView: View {
    
    private let url: URL?
    init(url: URL?) {
        self.url = url
    }
    var body: some View {
        ZStack{
            CachedAsyncImage(url: url) { Image in
                Image.resizable()
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .frame(maxWidth: 60, maxHeight: 60) .foregroundColor (Color.gray)
            }
        }
    }
}

struct RemoteImageView_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImageView(url: DummyData.drinks [0].imageUrl)
    }
}
