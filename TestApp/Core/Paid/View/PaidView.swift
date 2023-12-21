//
//  MainView.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import SwiftUI

struct PaidView: View {
    var body: some View {
        CustomNavigationBar(title: "Заказ оплачен", showBackButton: true) {
            CardVStack(alignment: .center, spacing: 16) {
                image
                
                answer
                
                descriptin
            }
            .frame(maxHeight: .infinity, alignment: .center)
            
            CustomTabBarView(title: "Супер!")
        }
        .navigationBarBackButtonHidden()
    }
    
    var image: some View {
        Image("Party Popper")
            .padding(25)
            .background(Color.grayBackground)
            .clipShape(Circle())
            .padding(.bottom, 8)
    }
    
    var answer: some View {
        Text("Ваш заказ принят в работу")
            .font(.system(size: 22, weight: .medium))
    }
    
    var descriptin: some View {
        Text("Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
            .font(.system(size: 16, weight: .regular))
            .foregroundColor(Color.grayForeground)
            .multilineTextAlignment(.center)
    }
}

struct PaidView_Previews: PreviewProvider {
    static var previews: some View {
        PaidView()
    }
}
