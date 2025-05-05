//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Nima  on 4/23/25.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
 
    var body: some View {
            Text(title)
                .frame(width: 280, height: 50)
                .background(backgroundColor)
                .foregroundStyle(textColor)
                .font(.system(size: 20, weight: .medium))
                .cornerRadius(10)
        }
    }
