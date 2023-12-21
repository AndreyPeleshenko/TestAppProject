//
//  DetailsRoom.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import SwiftUI

struct DetailsRoomView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
            
            Image(systemName: "chevron.right")
        }
        .font(.system(size: 16, weight: .medium))
        .foregroundColor(Color.buttonColor)
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(Color.buttonColorOpacity)
        .cornerRadius(5)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct DetailsRoom_Previews: PreviewProvider {
    static var previews: some View {
        DetailsRoomView(title: "Подробнее о номере")
    }
}
