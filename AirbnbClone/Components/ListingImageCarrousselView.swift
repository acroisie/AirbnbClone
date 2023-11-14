//
//  ListingImageCarrousselView.swift
//  AirbnbClone
//
//  Created by Arnaud CROISIER on 13/11/2023.
//

import SwiftUI

struct ListingImageCarrousselView: View {
    var images: [String] = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarrousselView()
}
