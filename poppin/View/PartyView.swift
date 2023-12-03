//
//  PartyView.swift
//  poppin
//
//  Created by Anagha K J on 02/12/23.
//

import SwiftUI

struct PartyView: View {
    let party: Party
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(party.name)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                IconText(imageName: "calendar.circle", text: fromatStartAndEndDate(startDate: party.startDate, endDate: party.endDate))
                HStack {
                    IconText(imageName: "dollarsign.circle", text: party.price == 0 ? "Free" : "\(party.price)")
                    
                    Spacer()
                    IconText(imageName: "person.2.circle", text: "\(party.attendees) attendees")
                }
                HStack {
                    
                }
                AsyncImage(url: party.bannerImageURL) { image in
                    image
                        .resizable()
                        .frame(height: 200)
                        .clipShape(.rect(cornerRadii: RectangleCornerRadii.init(topLeading: 20, bottomLeading: 20, bottomTrailing: 20, topTrailing: 20)))
                } placeholder: {
                    HStack {
                        Spacer()
                        ProgressView().scaleEffect(2).padding()
                            .progressViewStyle(CircularProgressViewStyle(tint: Color.white))
                        Spacer()
                    }
                }
                .padding(.top)
            }
        }
        .padding(16)
        .background(
            LinearGradient(gradient: Gradient(colors: [purple, primaryColor, lightPurple]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .cornerRadius(20)
    }
}

func fromatStartAndEndDate(startDate: Date, endDate: Date?) -> String {
    let sDate = formatDate(date: startDate)
    guard let eDate = endDate else { return sDate }
    let formattedDate = "\(sDate) to \(formatDate(date: eDate))"
    return formattedDate
}

#Preview {
    PartyView(party: parties[2])
}

struct IconText: View {
    let imageName: String
    let text: String
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: imageName).foregroundColor(.white)
            Text(text)
                .font(.system(size: 16))
                .fontWeight(.semibold)
                .foregroundStyle(.white)
        }
    }
}
