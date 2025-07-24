//
//  WebsitesListView.swift
//  BrowseIt
//
//  Created by slvnn on 24/7/25.
//

import SwiftUI

struct WebsitesListView: View {
    let category: WebsiteCategory
    var favouriteWebsites: FavouriteWebsites
    
    var body: some View {
        List(category.websites, id: \.id) { website in
                Button(website.name) {
                    openWebsite(url: website.url)
                }
            
                .swipeActions(edge: .trailing) {
                    Button {
                        favouriteWebsites.websites.append(website)
                    } label: {
                        Image(systemName: "star")
                    }
                    .tint(.yellow)
                }
        }
        
        .navigationTitle(category.title)
    }
}
