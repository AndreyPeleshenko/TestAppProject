//
//  FinalPriceView.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import SwiftUI

struct PriceView: View {
    
    let tourPrice, fuelCharge, serviceCharg: Int
     
    var body: some View {
        VStack(spacing: 16) {
            PriceRowView(title: "Тур", price: tourPrice)
            PriceRowView(title: "Топлиыный сбор", price: fuelCharge)
            PriceRowView(title: "Сурвисный сбор", price: serviceCharg)
            PriceRowView(title: "К оплате", price: tourPrice + fuelCharge + serviceCharg, isResult: true)
        }
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView(tourPrice: 186600, fuelCharge: 9300, serviceCharg: 2136)
    }
}
