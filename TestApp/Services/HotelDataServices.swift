//
//  HotelDataServices.swift
//  TestApp
//
//  Created by Андрей Гезет on 15.12.2023.
//

import Foundation
import Combine

class HotelDataServices {
    
    @Published var hotel: HotelModel?
    
    private var hotelSubscription: AnyCancellable?
    
    init() {
        getHotels()
    }
    
    private func getHotels() {
        guard let url = URL(string: "https://run.mocky.io/v3/d144777c-a67f-4e35-867a-cacc3b827473") else { return }
        
        hotelSubscription = NetworkingManager.download(url: url)
            .decode(type: HotelModel.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion) { [weak self] returnedHotel in
                self?.hotel = returnedHotel
                self?.hotelSubscription?.cancel()
            }
    }
}
