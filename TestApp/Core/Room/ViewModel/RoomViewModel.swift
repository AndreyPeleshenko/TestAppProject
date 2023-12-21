//
//  RoomViewModel.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import Foundation

import Combine

class RoomViewModel: ObservableObject {
    
    @Published var rooms: RoomModel?
    
    private let dataService = RoomDataServices()
    private var cancallables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        dataService.$rooms
            .sink { [weak self] resultsRoom in
                self?.rooms = resultsRoom
            }
            .store(in: &cancallables)
    }
}
