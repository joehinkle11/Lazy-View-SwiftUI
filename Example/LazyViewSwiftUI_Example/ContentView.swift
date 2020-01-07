//
//  ContentView.swift
//  LazyViewSwiftUI_Example
//
//  Created by Joseph Hinkle on 1/6/20.
//  Copyright © 2020 Joseph Hinkle. All rights reserved.
//

import SwiftUI
import LazyViewSwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: LazyView(DetailView("Details text"))) {
                Text("Go to details").font(.largeTitle)
            }
        }
    }
}

struct DetailView: View {
    var shouldBeSetAfterPushingVC: String
    var body: some View {
        Text(shouldBeSetAfterPushingVC).font(.largeTitle)
    }
    init(_ value: String) {
        shouldBeSetAfterPushingVC = value
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
