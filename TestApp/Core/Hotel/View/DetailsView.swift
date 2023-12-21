//
//  DetailsView.swift
//  TestApp
//
//  Created by Андрей Гезет on 16.12.2023.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack(spacing: 12) {
            DetailHotelView(title: "Убоства", image: "emoji-happy")
            DetailHotelView(title: "Что включено", image: "tick-square")
            DetailHotelView(title: "Что не включено", image: "close-square", theLast: true)
        }
        .padding(15)
        .background(Color.grayBackground)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
