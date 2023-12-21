//
//  BookinkMainView.swift
//  TestApp
//
//  Created by Андрей Гезет on 17.12.2023.
//

//CustomTextFieldView(title: "Имя", text: $bookingViewModel.name)
//
//CustomTextFieldView(title: "Фамилия", text: $bookingViewModel.surname)
//
//CustomTextFieldView(title: "Гражданство", text: $bookingViewModel.citizenship)
//
//CustomTextFieldView(title: "Номер загранпаспорта", text: $bookingViewModel.passportNumber)
//    .onChange(of: bookingViewModel.passportNumber) { _ in
//        bookingViewModel.passportNumber = bookingViewModel.passportNumber.formatUserInput(pattern: "##№ #######")
//    }
//
//CustomTextFieldView(title: "Срок действия загранпаспорта", text: $bookingViewModel.validityPeriod)
//    .onChange(of: bookingViewModel.validityPeriod) { _ in
//        bookingViewModel.validityPeriod = bookingViewModel.validityPeriod.formatUserInput(pattern: "##.##.#### - ##.##.####")
//    }

import SwiftUI

struct BookingMainView: View {
    
    let title: String
    
    @StateObject private  var bookingViewModel = BookingViewModel()
    
    @State private var showCard = false
    @State private var guestNumber = 0
    @State private var name: String = ""
    @State private var surname: String = ""
    @State private var citizenship: String = ""
    @State private var passportNumber: String = ""
    @State private var validityPeriod: String = ""
    
    var body: some View {
        CustomNavigationBar(title: "Бронирование", showBackButton: true) {
            ScrollView(.vertical, showsIndicators: false) {
                if let booking = bookingViewModel.booking {
                    VStack {
                        CardVStack {
                            BasicInformationView(
                                rating: booking.horating,
                                ratingName: booking.ratingName,
                                name: booking.hotelName,
                                address: booking.hotelAdress
                            )
                        }
                        
                        CardVStack {
                            BookingDetailsView(
                                departure: booking.departure,
                                arrivalCountry: booking.arrivalCountry,
                                tourDateStart: booking.tourDateStart,
                                tourDateStop: booking.tourDateStop,
                                numberOfNights: booking.numberOfNights,
                                hotel: booking.hotelName,
                                room: booking.room,
                                nutrition: booking.nutrition
                            )
                        }
                        
                        CardVStack {
                            PriceView(
                                tourPrice: booking.tourPrice,
                                fuelCharge: booking.fuelCharge,
                                serviceCharg: booking.serviceCharge
                            )
                        }
                        
                        CardVStack {
                            buyerInformationText
                            
                            CustomTextFieldView(
                                title: "Номер телефона",
                                text: $bookingViewModel.numberPhone
                            )
                            .onChange(of: bookingViewModel.numberPhone) { _ in
                                bookingViewModel.numberPhone = bookingViewModel.numberPhone.formatUserInput(pattern: "+ 7 (###) ###-##-##")
                            }
                            .keyboardType(.phonePad)
                            
                            CustomTextFieldView(
                                title: "Почта",
                                text: $bookingViewModel.email
                            )
                            .keyboardType(.emailAddress)
                            
                            buyerInformationRemark
                        }
                        
                        CardVStack {
                            TitleInfoAboutTuristView(title: "Первый гость", showAnimation: $showCard)
                                .padding(.bottom, showCard ? 8 : 0)
                            
                            if showCard {
                                TuristsDataView(
                                    name: $name,
                                    surname: $surname,
                                    citizenship: $citizenship,
                                    passportNumber: $passportNumber,
                                    validityPeriod: $validityPeriod
                                )
                            }
                        }
                        
                        AddTouristView {
                            bookingViewModel.guests.append(
                                GuestModel(
                                    name: name,
                                    surname: surname,
                                    citizenship: citizenship,
                                    passportNumber: passportNumber,
                                    validityPeriod: validityPeriod
                                )
                            )
                        }
                        
                        CustomTabBarView(title: "Оплатить \(booking.tourPrice + booking.fuelCharge + booking.serviceCharge) ₽")
                    }
                    .padding(.top, 8)
                    .background(Color.gray.opacity(0.15))
                } else {
                    ProgressView()
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
    
    var buyerInformationText: some View {
        Text("Информация о покупателе")
            .font(.system(size: 22, weight: .medium))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 8)
    }
    
    var buyerInformationRemark: some View {
        Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
            .font(.system(size: 14, weight: .regular))
            .foregroundColor(Color.grayForeground)
    }
}

struct BookingMainView_Previews: PreviewProvider {
    static var previews: some View {
        BookingMainView(title: "title")
    }
}
