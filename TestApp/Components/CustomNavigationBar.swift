//
//  CustomNavigationBar.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import SwiftUI

struct CustomNavigationBar<Content: View>: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let title: String
    var showBackButton = false
    let content: Content
    
    init(title: String, showBackButton: Bool = false, @ViewBuilder content: () -> Content) {
        self.title = title
        self.showBackButton = showBackButton
        self.content = content()
    }
    
    var body: some View {
        VStack {
            HStack {
                if showBackButton {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                    }
                }
                
                Spacer()
                
                Text(title)
                    .lineLimit(1)
                
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 8)
            .font(.system(size: 18, weight: .medium))
            .background(Color.white)
            
            Spacer()
            
            content
        }
        .navigationBarBackButtonHidden()
    }
}

struct CustomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBar(title: "Отель", showBackButton: true) {
            ZStack {
                Color.gray.opacity(0.15)
            }
        }
    }
}
