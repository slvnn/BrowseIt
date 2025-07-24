//
//  ContentView.swift
//  BrowseIt
//
//  Created by slvnn on 24/7/25.
//

import AuthenticationServices
import SwiftUI


@Observable
class FavouriteWebsites {
    var websites = [Website]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(websites) {
                UserDefaults.standard.set(encoded, forKey: "Favourites")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Favourites") {
            if let decoded = try? JSONDecoder().decode([Website].self, from: savedItems) {
                websites = decoded
                return
            }
        }
    }
}

// Logic source: https://www.reddit.com/r/apple/comments/rcn2h7/comment/hnwr8do/

func openWebsite(url: String? = nil, customUrl: String? = nil) {
    let target = customUrl != nil ? "https://\(customUrl!)" : url
        guard let target, let url = URL(string: target) else { return }

        let session = ASWebAuthenticationSession(url: url, callbackURLScheme: nil) { _, _ in }
        session.prefersEphemeralWebBrowserSession = true
        session.start()
}



struct ContentView: View {
    @AppStorage("showedInfoCard") private var showedInfoCard = true
    @State private var favouriteWebsites = FavouriteWebsites()
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextFieldLink("Google Search") { url in
                        let finalURL = "https://www.google.com/search?q=\(url.replacingOccurrences(of: "\\s+", with: "+", options: .regularExpression))"
                        
                        openWebsite(url: finalURL)
                    }
                    .listRowBackground(Color.clear)
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                }
                
                if !favouriteWebsites.websites.isEmpty {
                    Section("Favourites") {
                        ForEach(favouriteWebsites.websites, id: \.id) { website in
                            Button {
                                openWebsite(url: website.url)
                            } label: {
                                Text(website.name)
                            }
                        }
                        .onDelete(perform: deleteFavourites)
                    }
                }
        
                Section("Categories") {
                    ForEach(websiteCategories, id: \.id) { category in
                        NavigationLink(category.title) {
                            WebsitesListView(category: category, favouriteWebsites: favouriteWebsites)
                        }
                    }
                }
                
                Button("Show info") {
                        showedInfoCard = true
                    }
                    .listRowBackground(Color.clear)
                    .foregroundStyle(.secondary)
                    .underline()
            }
            .navigationTitle("Browse It")
            .sheet(isPresented: $showedInfoCard) {
                List {
                    Text("Info")
                        .font(.title2).bold()
                        .listRowBackground(Color.clear)
                
                    HStack {
                        Image(systemName: "star.fill")
                            .frame(width: 24, height: 24)
                            .padding(.trailing, 8)
                        Text("To add favourite websites, swipe left on the website")
                    }

                    HStack {
                        Image(systemName: "star.slash.fill")
                            .frame(width: 24, height: 24)
                            .padding(.trailing, 8)
                        Text("Remove favourites by swiping left")
                    }

                    HStack {
                        Image(systemName: "keyboard")
                            .frame(width: 24, height: 24)
                            .padding(.trailing, 8)
                        Text("Keyboard might not work as expected in some websites")
                    }
                }
            }
        }
    }
    
    func deleteFavourites(at offsets: IndexSet) {
        favouriteWebsites.websites.remove(atOffsets: offsets)
    }
}



#Preview {
    ContentView()
}
