/*

 LazyView.swift

 
 Author: Joe Hinkle
 Date: Jan 6, 2020

 
 Notes: I came up with this solution independently while working on a project. After some more Googling, I found others had come across the same bug and solved it. I am using this as an opportunity to try my first CocoaPod and SwiftPackage.

 
 Sources:
  - https://medium.com/better-programming/swiftui-navigation-links-and-the-common-pitfalls-faced-505cbfd8029b
  - https://gist.github.com/chriseidhof/d2fcafb53843df343fe07f3c0dac41d5
  - https://twitter.com/chriseidhof/status/1144242544680849410?lang=en
 

 Example usage:
    struct ContentView: View {
        var body: some View {
            NavigationView {
                NavigationLink(destination: LazyView(Text("My details page")) {
                    Text("Go to details")
                }
            }
        }
    }
*/

import SwiftUI

public struct LazyView<Content: View>: View {
    private let build: () -> Content
    public init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    public var body: Content {
        build()
    }
}
