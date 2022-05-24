//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Muhammad Hassan on 23/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottmColor: Color("lightBlue"))
            VStack {
                CityTextView(cityName: "Lahore, PK")
                WeatherStatusView(imageName: "cloud.sun.fill", temperature: 32)
                .padding(.bottom, 40)
                HStack(spacing: 30) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 34)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature: 41)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind",
                                   temperature: 40)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sun.max.fill",
                                   temperature: 44)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.heavyrain.fill",
                                   temperature: 28)
                }
                Spacer()
                Button {
                    print("Tapped")
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  backgroundColor: .white,
                                  textColor: .blue)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .medium))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottmColor: Color
    
    var body: some View {
        LinearGradient(colors: [topColor, bottmColor], startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundColor(.white)
            .padding()
    }
}

struct WeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
