//
//  ContentView.swift
//  poppin
//
//  Created by Anagha K J on 01/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var initialParties = parties
    @State var searchName = ""
    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResults, id: \.self) { party in
                    PartyView(party: party)
                        .frame( maxWidth: .infinity)
                        .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                }
                .padding(0)
            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "party.popper.fill").foregroundColor(primaryColor)
                        Text("Poppin!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [primaryColor, purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    }
                }
            })
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        initialParties.append(getRandomParty())
                    } label: {
                        Image(systemName: "plus.circle.fill").foregroundColor(primaryColor)
                    }
                }
            })
        }.searchable(text: $searchName).tint(primaryColor)
    }
    
    var searchResults: [Party] {
        return searchName.isEmpty ? initialParties : initialParties.filter{ $0.name.contains(searchName) }
    }
}

func getRandomParty() -> Party {
    return Party(name: partyNames.randomElement() ?? "Random Party!", bannerImageURL: URL(string: partyImageURLs.randomElement() ?? "https://images.unsplash.com/photo-1492684223066-81342ee5ff30?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D") ?? URL(fileURLWithPath: "PartyImage"), price: 0, startDate: Date(), endDate: nil, attendees: 0)
}

#Preview {
    ContentView()
}
