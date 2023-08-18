//
//  RewardsScreen.swift
//  Testing with GitHub
//
//  Created by Anerie Patel on 2023-08-17.
//

import SwiftUI


struct RewardsScreen: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.3)
            .ignoresSafeArea()
            .overlay(
            VStack {
                Text("Congratulations you got your first Hydration Collectable sticker!")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Image("Hydro10Cat 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
            }
            
            )
                 
        }
    }
            
}
struct RewardsScreen_Previews: PreviewProvider {
    static var previews: some View {
        RewardsScreen()
    }
}

