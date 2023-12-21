//
//  CardVStack.swift
//  TestApp
//
//  Created by Андрей Гезет on 18.12.2023.
//

import SwiftUI

struct CardVStack<Content: View>: View {
    
    var alignment: HorizontalAlignment
    var spacing: CGFloat
    let content: Content
    let topCornerRadius: Bool
    
    init(topCornerRadius: Bool = true, alignment: HorizontalAlignment = .leading, spacing: CGFloat = 8, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.spacing = spacing
        self.alignment = alignment
        self.topCornerRadius = topCornerRadius
    }
    
    var body: some View {
        VStack(alignment: alignment, spacing: spacing) {
            content
        }
        .padding(16)
        .background(.white)
        .cornerRadius(topCornerRadius ? 15 : 0)
    }
}

struct CardVStack_Previews: PreviewProvider {
    static var previews: some View {
        CardVStack {
            ZStack {
                
            }
        }
    }
}
