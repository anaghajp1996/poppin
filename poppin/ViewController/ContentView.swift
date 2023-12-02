//
//  ContentView.swift
//  poppin
//
//  Created by Anagha K J on 01/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(parties) { party in
                    Text(party.name)
                }
            }.navigationTitle("Poppin!")
        }
    }
}

#Preview {
    ContentView()
}
