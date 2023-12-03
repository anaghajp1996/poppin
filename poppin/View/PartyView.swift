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
                    Text(formatDate(date: party.startDate))
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
                    ProgressView()
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

#Preview {
    PartyView(party: parties[0])
}
