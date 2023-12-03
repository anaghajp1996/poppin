//
//  Party.swift
//  poppin
//
//  Created by Anagha K J on 01/12/23.
//

import Foundation

struct Party: Hashable {
    let name: String
    let bannerImageURL: URL
    let price: Double
    let startDate: Date
    let endDate: Date?
}
