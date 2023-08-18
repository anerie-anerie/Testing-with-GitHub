//
//  rewardScreenMindfullness.swift
//  Testing with GitHub
//
//  Created by Anerie Patel on 2023-08-17.
//
import SwiftUI

struct rewardScreenMindfullness: View {
    var body: some View {
    ZStack {
        Color.pink.opacity(0.3)
        .ignoresSafeArea()
        .overlay(
        VStack {
            Text("Congratulations you got your first Mindfulness Collectable sticker!")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            
            Image("Med10Cat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
        }
        
        )
             
    }
    }
}

struct rewardScreenMindfullness_Previews: PreviewProvider {
    static var previews: some View {
        rewardScreenMindfullness()
    }
}

