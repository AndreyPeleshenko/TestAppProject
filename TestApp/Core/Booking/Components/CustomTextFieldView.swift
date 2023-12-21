//
//  CustomTextFieldView.swift
//  TestApp
//
//  Created by Андрей Гезет on 18.12.2023.
//

import SwiftUI

struct CustomTextFieldView: View {

    let title: String
    @Binding var text: String
    
    var body: some View {
        VStack(spacing: 0) {
            Text(title)
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(Color.grayForeground)
                .opacity(text.isEmpty ? 0 : 1)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField(title, text: $text)
                .padding(.bottom, text.isEmpty ? 13 : 0)
        }
        .frame(height: 52)
        .padding(.horizontal)
        .background(Color.textFieldBackgroundColor)
        .cornerRadius(10)
    }
}

struct CustomTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextFieldView(title: "title", text: .constant(""))
    }
}
