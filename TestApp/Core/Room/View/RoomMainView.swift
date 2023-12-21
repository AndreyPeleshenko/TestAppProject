//
//  RoomMainView.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import SwiftUI

struct RoomMainView: View {
    
    @StateObject private var roomViewModel = RoomViewModel()
    
    let title: String
    
    var body: some View {
        CustomNavigationBar(title: title, showBackButton: true) {
            if let rooms = roomViewModel.rooms?.rooms {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(rooms) { room in
                        CardVStack {
                            ImagesSliderView(urls: room.imageUrls)
                            
                            Text(room.name)
                                .font(.system(size: 22, weight: .medium))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            PeculiaritiesView(titles: room.peculiarities)
                            
                            DetailsRoomView(title: "Подробно о номере")
                            
                            MinimalPriceView(
                                minimalPrice: room.price,
                                priceForIt: room.pricePer,
                                isExactPrice: true
                            ).padding(.top, 8)
                            
                            CustomButtonView(title: "Выбрать номер") {
                                // PATH
                            }
                        }
                    }
                }
                .padding(.top, 8)
                .background(Color.gray.opacity(0.15))
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct RoomMainView_Previews: PreviewProvider {
    static var previews: some View {
        RoomMainView(title: "Назание")
    }
}
