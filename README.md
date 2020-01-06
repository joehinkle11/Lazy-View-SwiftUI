# Lazy View SwiftUI

I came up with this solution independently while working on a project. After some more Googling, I found others had come across the same bug and solved it. I am using this as an opportunity to try my first CocoPod and SwiftPackage.

## Why Lazy Load a SwiftUI View?

The primary problem is with `NavigationLink`. The destination view given will be immediately instantiated and loaded--before the user even navigates to the details page. This is a problem for large details pages that you don't want to have immediately loaded with the previous screen.

## Example usage:
```swift
struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: LazyView(Text("My details page")) {
                Text("Go to details")
            }
        }
    }
}
```
 
## Sources

  - https://medium.com/better-programming/swiftui-navigation-links-and-the-common-pitfalls-faced-505cbfd8029b
  - https://gist.github.com/chriseidhof/d2fcafb53843df343fe07f3c0dac41d5
  - https://twitter.com/chriseidhof/status/1144242544680849410?lang=en
