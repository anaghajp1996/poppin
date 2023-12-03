//
//  ContentView.swift
//  poppin
//
//  Created by Anagha K J on 01/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "party.popper.fill").foregroundColor(primaryColor)
                Text("Poppin!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [primaryColor, purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
            }
            List {
                ForEach(parties) { party in
                    PartyView(party: party)
                        .frame( maxWidth: .infinity)
                        .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
            }
            .padding(0)
            }
        }
    }
}

#Preview {
    ContentView()
}
