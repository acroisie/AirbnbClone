//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Arnaud CROISIER on 13/11/2023.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView: Bool = false
    
    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                
            } else {
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
}

#Preview {
    ExploreView()
}
