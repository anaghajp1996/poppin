//
//  Utility.swift
//  poppin
//
//  Created by Anagha K J on 03/12/23.
//

import Foundation

func formatDate(date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E, d MMM h:mm a"
    return (formatter.string(from: date))
}
