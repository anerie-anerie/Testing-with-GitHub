//
//  PARewardsScreen.swift
//  Testing with GitHub
//
//  Created by Anerie Patel on 2023-08-17.
//

import SwiftUI

struct PARewardsScreen: View {
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.3)
            .ignoresSafeArea()
            .overlay(
            VStack {
                Text("Congratulations you got your first Physical Activity Collectable sticker!")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Image("PA10Cat")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
            }
            
            )
                 
        }
    }
}


struct PARewardsScreen_Previews: PreviewProvider {
    static var previews: some View {
        PARewardsScreen()
    }
}
