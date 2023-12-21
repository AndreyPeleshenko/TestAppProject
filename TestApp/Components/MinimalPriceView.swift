//
//  MinimalPriceView.swift
//  TestApp
//
//  Created by Андрей Гезет on 16.12.2023.
//

import SwiftUI

struct MinimalPriceView: View {
    
    let minimalPrice: Int
    let priceForIt: String
    var isExactPrice: Bool = false
    
    var body: some View {
        HStack(alignment: .bottom) {
            Text(isExactPrice ? "\(minimalPrice) ₽" : "от \(minimalPrice) ₽")
                .font(.system(size: 30, weight: .semibold))

            Text(priceForIt.lowercased())
                .foregroundColor(Color.grayForeground)
                .font(.system(size: 16, weight: .regular))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct MinimalPriceView_Previews: PreviewProvider {
    static var previews: some View {
        MinimalPriceView(minimalPrice: 77, priceForIt: "price For It", isExactPrice: false)
    }
}
