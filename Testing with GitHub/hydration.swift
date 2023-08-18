//
//  hydration.swift
//  Testing with GitHub
//
//  Created by Anerie Patel on 2023-08-17.
//
import SwiftUI
struct Hydration: View {
    @State private var title: String = ""
    @State private var hydrationCompleted: Bool = false
    @State private var journalEntry: String = ""
    @State private var selectedMood: String? = nil
    
    @State public var HydroCount = 0
    let moodOptions = ["😊 Energized", "😐 Neutral", "😞 Unmotivated"]
    var body: some View {
        ZStack {
            Color.blue.opacity(0.3)
            .ignoresSafeArea()
            .overlay(
        
        VStack {
            Text("Hydration")
                .font(.largeTitle)
                .fontWeight(.bold)
            TextField("What was your hydration goal?", text: $title)
                .padding()
            Toggle("Did you complete your hydration goal?", isOn: $hydrationCompleted)
                .padding(.horizontal)
            Text("Your Journal Entry")
                .fontWeight(.semibold)
                .font(.headline)
                .padding(.top)
            TextField("Enter your thoughts here...", text: $journalEntry)
                .padding()
            Spacer()
            VStack(spacing: 10) {
                ForEach(moodOptions, id: \.self) { mood in
                    Button(action: {
                        selectedMood = mood
                    }) {
                        HStack {
                            Text(mood)
                                .font(.headline)
                                .padding()
                            Spacer()
                            if selectedMood == mood {
                                Text("✓")
                                    .padding(.horizontal)
                            }
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(selectedMood == mood ? Color.blue.opacity(0.5) : Color.blue.opacity(0.2))
                        )
                    }
                }
            }
            Button(action: {
                HydroCount = HydroCount + 1
                if let mood = selectedMood {
                    print("Selected Mood: \(mood)")
                } else {
                    print("No mood selected")
                }
            }) {
                
                Text("When submitted go back to the home screen.")
                    .padding()
                
                Text("Submit")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.blue.opacity(0.5))
                    .cornerRadius(10)
                
                if HydroCount == 10 {
                    NavigationLink(destination: RewardsScreen()) {
                        Text("You won an award! Click here to collect")
                            .multilineTextAlignment(.center)
                    }
                    .padding()
                }
                
            }
            
        }
        )
    }
}
}
struct HydrationView_Previews: PreviewProvider {
  static var previews: some View {
    Hydration()
  }
}
