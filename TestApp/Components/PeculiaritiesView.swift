//
//  InfoComponentView.swift
//  TestApp
//
//  Created by Андрей Гезет on 16.12.2023.
//

import SwiftUI

struct PeculiaritiesView: View {
    
    let titles: [String]
    
    var body: some View {
        HStack {
            ForEach(titles, id: \.self) { title in
                Text(title)
                    .font(.system(size: 16, weight: .medium))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Color.grayBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .foregroundColor(Color.grayForeground)
                    .scaledToFill()
            }
        }
        .frame(maxWidth: UIScreen.main.bounds.width, alignment: .leading)
    }
}

struct PeculiaritieView_Previews: PreviewProvider {
    static var previews: some View {
        PeculiaritiesView(titles: HotelModel.MOCK_HOTEL.aboutTheHotel.peculiarities)
    }
}
