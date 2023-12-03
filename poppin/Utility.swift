//
//  Utility.swift
//  poppin
//
//  Created by Anagha K J on 03/12/23.
//

import Foundation

func formatDate(date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    formatter.timeStyle = .short
    return (formatter.string(from: date))
}
