//
//  HotelViewModel.swift
//  TestApp
//
//  Created by Андрей Гезет on 15.12.2023.
//

import Foundation
import Combine

class HotelViewModel: ObservableObject {
    
    @Published var hotel: HotelModel?
    
    private let dataService = HotelDataServices()
    private var cancallables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        dataService.$hotel
            .sink { [weak self] resultsHotel in
                self?.hotel = resultsHotel
            }
            .store(in: &cancallables)
    }
}
