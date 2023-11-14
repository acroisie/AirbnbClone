//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Arnaud CROISIER on 13/11/2023.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarrousselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
            // listing detail
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("Tromsø, Norway")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$120")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.8")
                }
                .foregroundStyle(.black)
                
                // rating
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
