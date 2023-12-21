//
//  TuristsInfoView.swift
//  TestApp
//
//  Created by Андрей Гезет on 18.12.2023.
//

import SwiftUI

struct TuristsDataView: View {
    @Binding var name: String
    @Binding var surname: String
    @Binding var citizenship: String
    @Binding var passportNumber: String
    @Binding var validityPeriod: String
    
    var body: some View {
        VStack {
            CustomTextFieldView(title: "Имя", text: $name)
            
            CustomTextFieldView(title: "Фамилия", text: $surname)
            
            CustomTextFieldView(title: "Гражданство", text: $citizenship)
            
            CustomTextFieldView(title: "Номер загранпаспорта", text: $passportNumber)
                .onChange(of: passportNumber) { _ in
                    passportNumber = passportNumber.formatUserInput(pattern: "##№ #######")
                }
            
            CustomTextFieldView(title: "Срок действия загранпаспорта", text: $validityPeriod)
                .onChange(of: validityPeriod) { _ in
                    validityPeriod = validityPeriod.formatUserInput(pattern: "##.##.#### - ##.##.####")
                }
        }
    }
}

struct TuristsDataView_Previews: PreviewProvider {
    static var previews: some View {
        TuristsDataView(name: .constant(""), surname: .constant(""), citizenship: .constant(""), passportNumber: .constant(""), validityPeriod: .constant(""))
    }
}
