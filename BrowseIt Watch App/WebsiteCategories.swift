//
//  WebsiteCategories.swift
//  BrowseIt
//
//  Created by slvnn on 24/7/25.
//

import SwiftUI

struct Website: Identifiable, Codable {
    var id = UUID()
    let name: String
    let url: String
}


struct WebsiteCategory: Identifiable {
    let id = UUID()
    let title: String
    let websites: [Website]
}

let websiteCategories: [WebsiteCategory] = [
    WebsiteCategory(title: "Tech & Electronics", websites: [
        Website(name: "Apple", url: "https://www.apple.com"),
        Website(name: "Google", url: "https://www.google.com"),
        Website(name: "Microsoft", url: "https://www.microsoft.com"),
        Website(name: "Samsung", url: "https://www.samsung.com"),
        Website(name: "Amazon", url: "https://www.amazon.com"),
        Website(name: "BestBuy", url: "https://www.bestbuy.com")
    ]),
    
    WebsiteCategory(title: "Social Media", websites: [
        Website(name: "Facebook", url: "https://www.facebook.com"),
        Website(name: "Instagram", url: "https://www.instagram.com"),
        Website(name: "Twitter (X)", url: "https://www.twitter.com"),
        Website(name: "TikTok", url: "https://www.tiktok.com"),
        Website(name: "Reddit", url: "https://www.reddit.com"),
        Website(name: "LinkedIn", url: "https://www.linkedin.com"),
        Website(name: "Snapchat", url: "https://www.snapchat.com"),
        Website(name: "Pinterest", url: "https://www.pinterest.com"),
        Website(name: "Threads", url: "https://www.threads.net")
    ]),
    
    WebsiteCategory(title: "Streaming & Entertainment", websites: [
        Website(name: "YouTube", url: "https://www.youtube.com"),
        Website(name: "Netflix", url: "https://www.netflix.com"),
        Website(name: "Hulu", url: "https://www.hulu.com"),
        Website(name: "Disney+", url: "https://www.disneyplus.com"),
        Website(name: "Prime Video", url: "https://www.primevideo.com"),
        Website(name: "HBO Max", url: "https://www.hbomax.com"),
        Website(name: "Spotify", url: "https://www.spotify.com"),
        Website(name: "SoundCloud", url: "https://www.soundcloud.com"),
        Website(name: "Deezer", url: "https://www.deezer.com"),
        Website(name: "Twitch", url: "https://www.twitch.tv"),
        Website(name: "Nintendo", url: "https://www.nintendo.com"),
        Website(name: "PlayStation", url: "https://www.playstation.com"),
        Website(name: "Xbox", url: "https://www.xbox.com")
    ]),
    
    WebsiteCategory(title: "Shopping & Marketplaces", websites: [
        Website(name: "eBay", url: "https://www.ebay.com"),
        Website(name: "AliExpress", url: "https://www.aliexpress.com"),
        Website(name: "Etsy", url: "https://www.etsy.com"),
        Website(name: "Walmart", url: "https://www.walmart.com"),
        Website(name: "Target", url: "https://www.target.com"),
        Website(name: "SHEIN", url: "https://www.shein.com"),
        Website(name: "Temu", url: "https://www.temu.com"),
        Website(name: "Zalando", url: "https://www.zalando.com")
    ]),
    
    WebsiteCategory(title: "Education & Research", websites: [
        Website(name: "Wikipedia", url: "https://www.wikipedia.org"),
        Website(name: "Khan Academy", url: "https://www.khanacademy.org"),
        Website(name: "Coursera", url: "https://www.coursera.org"),
        Website(name: "edX", url: "https://www.edx.org"),
        Website(name: "Duolingo", url: "https://www.duolingo.com"),
        Website(name: "Quizlet", url: "https://www.quizlet.com"),
        Website(name: "Google Classroom", url: "https://classroom.google.com"),
        Website(name: "WolframAlpha", url: "https://www.wolframalpha.com"),
        Website(name: "Internet Archive", url: "https://www.archive.org")
    ]),
    
    WebsiteCategory(title: "News & Media", websites: [
        Website(name: "CNN", url: "https://www.cnn.com"),
        Website(name: "BBC", url: "https://www.bbc.com"),
        Website(name: "The New York Times", url: "https://www.nytimes.com"),
        Website(name: "The Guardian", url: "https://www.theguardian.com"),
        Website(name: "Reuters", url: "https://www.reuters.com"),
        Website(name: "Bloomberg", url: "https://www.bloomberg.com"),
        Website(name: "Forbes", url: "https://www.forbes.com")
    ]),
    
    WebsiteCategory(title: "Email & Cloud", websites: [
        Website(name: "Gmail", url: "https://mail.google.com"),
        Website(name: "Outlook", url: "https://outlook.live.com"),
        Website(name: "iCloud", url: "https://www.icloud.com"),
        Website(name: "Yahoo Mail", url: "https://mail.yahoo.com"),
        Website(name: "Proton Mail", url: "https://mail.proton.me"),
        Website(name: "Google Drive", url: "https://drive.google.com"),
        Website(name: "Dropbox", url: "https://www.dropbox.com"),
        Website(name: "OneDrive", url: "https://onedrive.live.com")
    ]),
    
    WebsiteCategory(title: "Travel & Maps", websites: [
        Website(name: "Google Maps", url: "https://maps.google.com"),
        Website(name: "Booking", url: "https://www.booking.com"),
        Website(name: "Airbnb", url: "https://www.airbnb.com"),
        Website(name: "Skyscanner", url: "https://www.skyscanner.com"),
        Website(name: "Tripadvisor", url: "https://www.tripadvisor.com"),
        Website(name: "Uber", url: "https://www.uber.com")
    ]),
    
    WebsiteCategory(title: "Utilities & Tools", websites: [
        Website(name: "Speedtest", url: "https://www.speedtest.net"),
        Website(name: "Canva", url: "https://www.canva.com"),
        Website(name: "ChatGPT", url: "https://chat.openai.com"),
        Website(name: "Notion", url: "https://www.notion.so"),
        Website(name: "GitHub", url: "https://www.github.com"),
        Website(name: "Figma", url: "https://www.figma.com"),
        Website(name: "Pixabay", url: "https://www.pixabay.com"),
        Website(name: "Unsplash", url: "https://www.unsplash.com"),
        Website(name: "Remove.bg", url: "https://www.remove.bg")
    ])
]
