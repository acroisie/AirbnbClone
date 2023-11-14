//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Arnaud CROISIER on 13/11/2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()

                LazyVStack(spacing: 32) {
                    ForEach(0 ..< 10, id: \.self) {listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                        }
                    }
                }
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    ExploreView()
}
