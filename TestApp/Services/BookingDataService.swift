//
//  BookingDataService.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import Foundation
import Combine

class BookingDataServices {
    
    @Published var booking: BookingModel?
    
    private var bookingSubscription: AnyCancellable?
    
    init() {
        getBooking()
    }
    
    private func getBooking() {
        guard let url = URL(string: "https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff") else { return }
        
        bookingSubscription = NetworkingManager.download(url: url)
            .decode(type: BookingModel.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion) { [weak self] returnedBooking in
                self?.booking = returnedBooking
                self?.bookingSubscription?.cancel()
            }
    }
}
