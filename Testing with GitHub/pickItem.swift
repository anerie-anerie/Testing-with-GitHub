//
//  pickItem.swift
//  Testing with GitHub
//
//  Created by Anerie Patel on 2023-08-17.
//

import SwiftUI
struct pickItem: View {
  var body: some View {
      NavigationStack {
     ZStack {
        
         /*@START_MENU_TOKEN@*/Color(red: 0.205, green: 0.329, blue: 0.246)/*@END_MENU_TOKEN@*/
       .ignoresSafeArea()
       .overlay(
        
        VStack{
          
            Image("WhatDojpg")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.bottom, 0.0)
              
            
          Text("What do you want to work on today?")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding()
            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.851, green: 0.821, blue: 0.739)/*@END_MENU_TOKEN@*/)

           NavigationLink(destination: Hydration()) {
          Text("Hydration")
              .multilineTextAlignment(.center)
              .fontWeight(.bold)
              .padding()
              .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.524, saturation: 0.291, brightness: 0.812)/*@END_MENU_TOKEN@*/)
          }
          NavigationLink(destination: nutrition()) {
            Text("Nutrition")
              .multilineTextAlignment(.center)
              .padding()
              .fontWeight(.bold)
              .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.289, saturation: 0.565, brightness: 0.855)/*@END_MENU_TOKEN@*/)
          }
          NavigationLink(destination: mindfulness()) {
            Text("Mindfulness")
              .multilineTextAlignment(.center)
              .padding()
              .fontWeight(.bold)
              .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.988, saturation: 0.405, brightness: 0.84)/*@END_MENU_TOKEN@*/)
          }
         
            NavigationLink(destination: PhysicalActivity()) {
            Text("Physical Activity")
              .multilineTextAlignment(.center)
              .padding()
              .fontWeight(.bold)
              .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.163, saturation: 0.57, brightness: 0.952)/*@END_MENU_TOKEN@*/)
                
            }
            
        }
      )
     }
    
    }
   }
  }
struct pickItem_Previews: PreviewProvider {
  static var previews: some View {
    pickItem()
  }
}

