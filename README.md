# Browse It

<img width="416" height="496" alt="1" src="https://github.com/user-attachments/assets/d0c4143a-0489-4b26-9451-1ad2c9c673f2" />
<img width="416" height="496" alt="2" src="https://github.com/user-attachments/assets/69bd14e0-694d-44c7-8a6b-30b959b41377" />



**Browse It** is a lightweight and intuitive browser app designed specifically for watchOS. It allows users to quickly open popular websites and services directly from their Apple Watch.

I have based this project on this Reddit post https://www.reddit.com/r/apple/comments/rcn2h7/comment/hnwr8do/ which explains how to exploit `ASWebAuthenticationSession` to open a website in the built-in watchOS browser
```swift
import AuthenticationServices

guard let url = URL(string: "https://apple.com") else { return }
let session = ASWebAuthenticationSession(url: url, callbackURLScheme: "") { _, _ in }
session.start()
```

## Features

- 🌐 Launch websites from categorized lists like:
  - Tech & Electronics
  - Social Media
  - Streaming & Entertainment
  - Shopping & Marketplaces
  - Education & Research
  - News & Media
  - Email & Cloud
  - Travel & Maps
  - Utilities & Tools

- 🔗 Custom URL support: Enter any URL you want and open it on demand.

- 🧭 Fully coded in SwiftUI.

## Notes

- Due to the limitations of watchOS, you can't open the keyboard to fill a textfiled inside a website.
- Cookies won't be stored.
- Custom URLs must be entered without https:// (e.g., enter example.com).

## License

MIT License – see [LICENSE](https://github.com/slvnn/BrowseIt/blob/main/LICENSE) for details.
