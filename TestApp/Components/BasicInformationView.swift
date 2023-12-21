//
//  HotelDetailsView.swift
//  TestApp
//
//  Created by Андрей Гезет on 15.12.2023.
//

import SwiftUI

struct BasicInformationView: View {
    
    let rating: Int
    let ratingName: String
    let name: String
    let address: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("\(Image(systemName: "star.fill")) \(rating) \(ratingName)")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(Color.orangeForeground)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.orangeBackground)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                
            Text(name)
                .font(.system(size: 22, weight: .medium))

            Button(address) {
                // Action
            }
            .font(.system(size: 14, weight: .medium))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct HotelDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BasicInformationView(
            rating: 5,
            ratingName: "Превосходно",
            name: "Лучший пятизвездочный отель в Хургаде, Египет",
            address: "Madinat Makadi, Safaga Road, Makadi Bay, Египет"
        )
    }
}
