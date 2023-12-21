//
//  UserModel.swift
//  TestApp
//
//  Created by Андрей Гезет on 18.12.2023.
//

import Foundation

struct GuestModel: Identifiable {
    var id = UUID()
    let name: String
    let surname: String
    let citizenship: String
    let passportNumber: String
    let validityPeriod: String
}
