//
//  MainView.swift
//  TestApp
//
//  Created by Андрей Гезет on 15.12.2023.
//

import SwiftUI

struct HotelMainView: View {
    
    @StateObject private var hotelViewModel = HotelViewModel()
    
    var body: some View {
        CustomNavigationBar(title: "Отель") {
            ScrollView(.vertical, showsIndicators: false) {
                if let hotel = hotelViewModel.hotel {
                    VStack {
                        CardVStack(topCornerRadius: false) {
                            ImagesSliderView(urls: hotel.imageUrls)
                            
                            BasicInformationView(rating: hotel.rating, ratingName: hotel.ratingName, name: hotel.name, address: hotel.address)
                            
                            MinimalPriceView(minimalPrice: hotel.minimalPrice, priceForIt: hotel.priceForIt)
                                .padding(.top, 8)
                        }
                        
                        CardVStack {
                            aboutHotelText
                            
                            PeculiaritiesView(titles: hotel.aboutTheHotel.peculiarities)
                            
                            Text(hotel.aboutTheHotel.description)
                                .font(.system(size: 16, weight: .regular))
                                .frame(maxWidth: .infinity, alignment: .leading)

                            DetailsView()
                        }

                        CustomTabBarView(title: "К выбору номера")
                    }
                    .background(Color.gray.opacity(0.15))
                }
            }
        }
    }
    
    var aboutHotelText: some View {
        Text("Об отеле")
            .font(.system(size: 22, weight: .medium))
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct HotelMainView_Previews: PreviewProvider {
    static var previews: some View {
        HotelMainView()
    }
}
