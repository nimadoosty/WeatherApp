//
//  ContentView.swift
//  WeatherApp
//
//  Created by Nima  on 4/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack(){
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Canoga Park, CA")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 5){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°F")
                        .font(.system(size: 70, weight: .bold))
                        .foregroundStyle(.white)
                    
                    HStack{
                        VStack{
                            Text("hi")
                        }
                    }
                    
                    
                    /*VStack(alignment: .leading){
                    
                    Text("Tue")
                    Image(systemName: "cloud.sun.fill")
                    
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                        .font(.system(size: 22, weight: .medium))
                        .foregroundColor(.white)
                    
                    
                } */
                    
                    
                }
                Spacer()
                    
            }
        }
    }
}

#Preview {
    ContentView()
}
