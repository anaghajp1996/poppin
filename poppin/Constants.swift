//
//  Constants.swift
//  poppin
//
//  Created by Anagha K J on 02/12/23.
//

import SwiftUI

let primaryColor = Color.init(red: 188/255, green: 68/255, blue: 255/255)
let purple = Color.init(red: 97/255, green: 48/255, blue: 179/255)
let lightPurple = Color.init(red: 198/255, green: 162/255, blue: 255/255)

let parties = [
    Party(name: "Cafe Disco", bannerImageURL: URL(string: "https://images.unsplash.com/photo-1492684223066-81342ee5ff30?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D") ?? URL(fileURLWithPath: ""), price: 0, startDate: Date(), endDate: Date().addingTimeInterval(5 * 3600), attendees: 2),
    Party(name: "Game of Grooves", bannerImageURL: URL(string: "https://media.istockphoto.com/id/1277125124/photo/falling-gold-glitter-christmas-celebration-anniversary-background.webp?b=1&s=170667a&w=0&k=20&c=WSKKk9woYJn3dIEyiwmMOgwLTxVDjo_74r0AtUKe3Ok=") ?? URL(fileURLWithPath: ""), price: 24.99, startDate: Date(), endDate: Date().addingTimeInterval(864000), attendees: 12),
    Party(name: "Meme Team Mixer", bannerImageURL: URL(string: "https://images.unsplash.com/photo-1530103862676-de8c9debad1d?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D") ?? URL(fileURLWithPath: ""), price: 20, startDate: Date(), endDate: Date().addingTimeInterval(10 * 3600), attendees: 100)
]

let partyNames = [
    "Retro Rewind",
    "Wizarding World Whirl",
    "Hollywood Glam Jam",
    "TikTok Takeover",
    "Dinner Party",
    "Christmas Party"
]

let partyImageURLs = [
    "https://images.unsplash.com/photo-1478088702756-f16754aaf0c4?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fHBhcnR5fGVufDB8fDB8fHwy",
    "https://media.istockphoto.com/id/157508303/photo/pink-mirrorball.webp?b=1&s=170667a&w=0&k=20&c=Cbv78ddeaLQSVLiKnTI_hjVqlv02TIwrUEuSYjRPzCk=",
    "https://media.istockphoto.com/id/157531692/photo/defocused-blue-light-dots-against-black-background.webp?b=1&s=170667a&w=0&k=20&c=KxRRwtDPPjdIcNku2CIFN2nNxeL2Q8hF95apX-tQ4UM=",
    "https://images.unsplash.com/photo-1600854109241-46990389fb97?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fHBhcnR5fGVufDB8fDB8fHwy",
    "https://images.unsplash.com/photo-1527529482837-4698179dc6ce?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cGFydHl8ZW58MHx8MHx8fDI%3D"
]
