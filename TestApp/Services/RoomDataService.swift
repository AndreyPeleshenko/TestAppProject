//
//  RoomDataService.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import Foundation
import Combine

class RoomDataServices {
    
    @Published var rooms: RoomModel?
    
    private var roomSubscription: AnyCancellable?
    
    init() {
        getRooms()
    }
    
    private func getRooms() {
        guard let url = URL(string: "https://run.mocky.io/v3/8b532701-709e-4194-a41c-1a903af00195") else { return }
        
        roomSubscription = NetworkingManager.download(url: url)
            .decode(type: RoomModel.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion) { [weak self] returnedRooms in
                self?.rooms = returnedRooms
                self?.roomSubscription?.cancel()
            }
    }
}
