//
//  BookingDetailsView.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

import SwiftUI

struct BookingDetailsView: View {
    
    let departure: String
    let arrivalCountry: String
    let tourDateStart: String
    let tourDateStop: String
    let numberOfNights: Int
    let hotel: String
    let room: String
    let nutrition: String
    
    var body: some View {
        VStack(spacing: 16) {
            BookingDetailRowView(description: "Вылет из", title: departure)
            BookingDetailRowView(description: "Старна, город", title: arrivalCountry)
            BookingDetailRowView(description: "Даты", title: "\(tourDateStart) - \(tourDateStop)")
            BookingDetailRowView(description: "Кол-во ночей", title: "\(numberOfNights)")
            BookingDetailRowView(description: "Отель", title: hotel)
            BookingDetailRowView(description: "Номер", title: room)
            BookingDetailRowView(description: "Питание", title: nutrition)
        }
    }
}

struct BookingDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookingDetailsView(departure: "", arrivalCountry: "", tourDateStart: "", tourDateStop: "", numberOfNights: 0, hotel: "", room: "", nutrition: "")
    }
}
