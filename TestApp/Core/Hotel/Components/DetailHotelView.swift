//
//  DetailsView.swift
//  TestApp
//
//  Created by Андрей Гезет on 16.12.2023.
//

import SwiftUI

struct DetailHotelView: View {
    
    let title: String
    let image: String
    var theLast = false
    
    var body: some View {
        HStack(spacing: 12) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .offset(y: theLast ? 0 : -4)
            
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text(title)
                            .font(.system(size: 16, weight: .medium))
                        
                        Text("Самое удобное")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(Color.grayForeground)
                    }
                    
                    Spacer()
                    
                    Image("Icons")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                
                if !theLast {
                    Divider()
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHotelView(title: "Удобства", image: "tick-square", theLast: true)
    }
}
