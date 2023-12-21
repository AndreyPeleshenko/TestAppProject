//
//  AddTouristView.swift
//  TestApp
//
//  Created by Андрей Гезет on 18.12.2023.
//

import SwiftUI

struct AddTouristView: View {
    
    let action: () -> ()
    
    var body: some View {
        CardVStack {
            HStack(alignment: .top) {
                Text("Добавить туриста")
                    .font(.system(size: 22, weight: .medium))
                
                Spacer()
                
                Button {
                    action()
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(width: 32, height: 32)
                        .background(Color.buttonColor)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }
            }
        }
    }
}

struct AddTouristView_Previews: PreviewProvider {
    static var previews: some View {
        AddTouristView {
            
        }
    }
}
