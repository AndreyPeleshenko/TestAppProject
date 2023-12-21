//
//  ButtonView.swift
//  TestApp
//
//  Created by Андрей Гезет on 16.12.2023.
//

import SwiftUI

struct CustomButtonView: View {
    
    let title: String
    let action: () -> ()
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
                .frame(height: 48)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 8)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView(title: "К выбору номера") {
            
        }
    }
}
