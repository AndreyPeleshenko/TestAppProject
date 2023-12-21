//
//  BookingDetailView.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import SwiftUI

struct BookingDetailRowView: View {

    let description: String
    let title: String

    var body: some View {
        HStack(alignment: .top) {
            Text(description)
                .foregroundColor(Color.grayForeground)
            
            Spacer()
            
            Text(title)
                .frame(width: UIScreen.main.bounds.width / 2, alignment: .leading)
        }
        .font(.system(size: 16, weight: .regular))
    }
}

struct BookingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookingDetailRowView(description: "description", title: "title")
    }
}
