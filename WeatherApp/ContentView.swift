//
//  ContentView.swift
//  WeatherApp
//
//  Created by Nima  on 4/7/25.
//

import SwiftUI

struct ContentView: View {
    
@State private var isNight = false
        
    var body: some View {
        
        ZStack(){
            BackgroundView(isNight: $isNight)
            
            VStack{
                CityTextView(cityName: "Canoga Park, CA")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 70)
                    
                HStack(spacing: 20){
                        WeatherDayView(dayOfWeek: "Tue",
                                       imageName: "cloud.sun.fill",
                                       temperature: 76)
                    
                        WeatherDayView(dayOfWeek: "Wed",
                                       imageName: "sun.rain.fill",
                                       temperature: 68)
                    
                        WeatherDayView(dayOfWeek: "Thu",
                                       imageName: "cloud.rain",
                                       temperature: 60)
                    
                        WeatherDayView(dayOfWeek: "Fri",
                                       imageName: "cloud.sun.rain.fill",
                                       temperature: 70)
                    
                        WeatherDayView(dayOfWeek: "Sat",
                                       imageName: "cloud.bolt.rain.fill",
                                       temperature: 59)
                    
                    }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                
                Spacer()
                    
                }
                                    
            }
        }
    }


#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .font(.system(size: 22, weight: .medium))
                .foregroundColor(.white)
            
            Text("\(temperature)°")
                .font(.system(size: 26, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                                isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View{
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 30, weight: .bold))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
        
    var imageName: String
    var temperature: Int
    
    var body: some View {
        
        VStack(spacing:10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .bold))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
    
}


