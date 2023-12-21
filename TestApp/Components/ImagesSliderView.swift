//
//  HotelImageView.swift
//  TestApp
//
//  Created by Андрей Гезет on 16.12.2023.
//

import SwiftUI

struct ImagesSliderView: View {
    
    let urls: [String]
    
    init(urls: [String]) {
        self.urls = urls
    }
    
    var body: some View {
        TabView {
            ForEach(urls, id: \.self) { imageUrl in
                AsyncImage(url: URL(string: imageUrl)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                } placeholder: {
                    ProgressView()
                }
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .frame(height: 190)
    }
}

struct ImagesSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesSliderView(urls: HotelModel.MOCK_HOTEL.imageUrls)
    }
}
