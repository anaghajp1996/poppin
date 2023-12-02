//
//  Party.swift
//  poppin
//
//  Created by Anagha K J on 01/12/23.
//

import Foundation

struct Party: Identifiable {
    let id: Int
    let name: String
    let bannerImageURL: URL
    let price: Double
    let startDate: Date
    let endDate: Date?
}

let parties = [
    Party(id: 1, name: "Cafe Disco", bannerImageURL: URL(string: "") ?? URL(fileURLWithPath: ""), price: 0, startDate: Date(), endDate: Date()),
    Party(id: 2, name: "Game of Grooves", bannerImageURL: URL(string: "") ?? URL(fileURLWithPath: ""), price: 0, startDate: Date(), endDate: Date()),
    Party(id: 3, name: "Meme Team Mixer", bannerImageURL: URL(string: "") ?? URL(fileURLWithPath: ""), price: 0, startDate: Date(), endDate: Date())
]


