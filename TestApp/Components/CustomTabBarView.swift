//
//  CustomTabBarView.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import SwiftUI

struct CustomTabBarView: View {
    let title: String
    
    var body: some View {
        VStack(spacing: 0) {
            Divider()

            CustomButtonView(title: title) {

            }
            .padding(.horizontal, 16)
        }
        .background(.white)
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarView(title: "К выбору номера")
    }
}
