//
//  RoomModel.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import Foundation

struct RoomModel: Codable {
    let rooms: [Room]
}

struct Room: Codable, Identifiable {
    let id: Int
    let name: String
    let price: Int
    let pricePer: String
    let peculiarities: [String]
    let imageUrls: [String]

    enum CodingKeys: String, CodingKey {
        case id, name, price
        case pricePer = "price_per"
        case peculiarities
        case imageUrls = "image_urls"
    }
}

