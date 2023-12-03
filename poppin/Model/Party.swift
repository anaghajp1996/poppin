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
    Party(id: 1, name: "Cafe Disco", bannerImageURL: URL(string: "https://images.unsplash.com/photo-1492684223066-81342ee5ff30?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D") ?? URL(fileURLWithPath: ""), price: 0, startDate: Date(), endDate: Date()),
    Party(id: 2, name: "Game of Grooves", bannerImageURL: URL(string: "https://media.istockphoto.com/id/1277125124/photo/falling-gold-glitter-christmas-celebration-anniversary-background.webp?b=1&s=170667a&w=0&k=20&c=WSKKk9woYJn3dIEyiwmMOgwLTxVDjo_74r0AtUKe3Ok=") ?? URL(fileURLWithPath: ""), price: 24.99, startDate: Date(), endDate: Date()),
    Party(id: 3, name: "Meme Team Mixer", bannerImageURL: URL(string: "https://images.unsplash.com/photo-1530103862676-de8c9debad1d?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D") ?? URL(fileURLWithPath: ""), price: 20, startDate: Date(), endDate: Date())
]

let randomParties = [
    Party(id: 3, name: "Meme Team Mixer", bannerImageURL: URL(string: "https://images.unsplash.com/photo-1496843916299-590492c751f4?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTV8fHxlbnwwfHx8fHw%3D") ?? URL(fileURLWithPath: ""), price: 0, startDate: Date(), endDate: Date()),
    Party(id: 3, name: "Meme Team Mixer", bannerImageURL: URL(string: "https://media.istockphoto.com/id/157508303/photo/pink-mirrorball.webp?b=1&s=170667a&w=0&k=20&c=Cbv78ddeaLQSVLiKnTI_hjVqlv02TIwrUEuSYjRPzCk=") ?? URL(fileURLWithPath: ""), price: 0, startDate: Date(), endDate: Date()),
    Party(id: 3, name: "Meme Team Mixer", bannerImageURL: URL(string: "https://media.istockphoto.com/id/157531692/photo/defocused-blue-light-dots-against-black-background.webp?b=1&s=170667a&w=0&k=20&c=KxRRwtDPPjdIcNku2CIFN2nNxeL2Q8hF95apX-tQ4UM=") ?? URL(fileURLWithPath: ""), price: 0, startDate: Date(), endDate: Date())
]
