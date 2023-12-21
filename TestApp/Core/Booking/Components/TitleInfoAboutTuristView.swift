//
//  TitleIfoAboutTuristView.swift
//  TestApp
//
//  Created by Андрей Гезет on 18.12.2023.
//

import SwiftUI

struct TitleInfoAboutTuristView: View {
    
    let title: String
    @Binding var showAnimation: Bool
    
    var body: some View {
        HStack(alignment: .top) {
            Text(title)
                .font(.system(size: 22, weight: .medium))
            
            Spacer()
            
            Button {
                withAnimation(.spring()) {
                    showAnimation.toggle()
                }
            } label: {
                Image(systemName: "chevron.up")
                    .foregroundColor(Color.buttonColor)
                    .rotationEffect(Angle(degrees: showAnimation ? 0 : 180))
                    .fontWeight(.semibold)
                    .frame(width: 32, height: 32)
                    .background(Color.buttonColorOpacity)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
        }
    }
}

struct TitleInfoAboutTuristView_Previews: PreviewProvider {
    static var previews: some View {
        TitleInfoAboutTuristView(title: "Первый гость", showAnimation: .constant(true))
    }
}
