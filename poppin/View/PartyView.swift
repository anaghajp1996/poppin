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
                HStack(alignment: .top) {
                    Image(systemName: "calendar.circle.fill").foregroundColor(.white)
                    Text(fromatStartAndEndDate(startDate: party.startDate, endDate: party.endDate))
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                }
                HStack {
                    Image(systemName: "dollarsign.circle.fill").foregroundColor(.white)
                    Text(party.price == 0 ? "Free" : "\(party.price, specifier: "%.2f")")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
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
                }.frame(width: .infinity)
                .padding(.top)
            }
        }
        .frame(width: .infinity)
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
    PartyView(party: parties[0])
}
