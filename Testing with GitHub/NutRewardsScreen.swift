//
//  NutRewardsScreen.swift
//  Testing with GitHub
//
//  Created by Anerie Patel on 2023-08-17.
//
import SwiftUI

struct NutRewardsScreen: View {
    var body: some View {
        ZStack {
            Color.green.opacity(0.3)
            .ignoresSafeArea()
            .overlay(
            VStack {
                Text("Congratulations you got your first Nutrition Collectable sticker!")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Image("Nut10Cat")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
            }
            
            )
                 
        }
    }
}

struct NutRewardsScreen_Previews: PreviewProvider {
    static var previews: some View {
        NutRewardsScreen()
    }
}

