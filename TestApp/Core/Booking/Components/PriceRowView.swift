//
//  FinalPriceRowView.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import SwiftUI

struct PriceRowView: View {
    
    let title: String
    let price: Int
    var isResult: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundColor(Color.grayForeground)
                
                Spacer()
                
                Text("\(price) ₽")
                    .foregroundColor(isResult ? Color.buttonColor : .black)
                    .fontWeight(isResult ? .semibold : .regular)
            }
            .font(.system(size: 16, weight: .regular))
        }
    }
}

struct FinalPriceRowView_Previews: PreviewProvider {
    static var previews: some View {
        PriceRowView(title: "title", price: 0)
    }
}
