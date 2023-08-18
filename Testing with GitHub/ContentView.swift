//
//  ContentView.swift
//  Testing with GitHub
//
//  Created by Anerie Patel on 2023-08-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            ZStack {
                
                Color(.systemGray2)
                
                    .ignoresSafeArea()
                
                VStack {
                    
                    Image("HugIcon")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .shadow(radius:15)
                    
                    Text("Welcome to Pure Habit!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.000, saturation: 0.01, brightness: 0.999))
                    
                    
                    Text("Pure Habit is an app that will unlock your best self by motivating you to pursue healthy habits.")
                        .foregroundColor(Color(hue: 0.000, saturation: 0.01, brightness: 0.999))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                
                        NavigationLink(destination: pickItem()) {
                            Text("Click here to start your journey.")
                                .fontWeight(.semibold)
                                .padding(.top)
                                .foregroundColor(Color(hue: 0.122, saturation: 0.307, brightness: 0.979))
                        
                    }
                   
                    
                }
                .padding()
                .background(Rectangle()
                    .foregroundColor(Color(hue: 0.374, saturation: 0.946, brightness: 0.353)))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
