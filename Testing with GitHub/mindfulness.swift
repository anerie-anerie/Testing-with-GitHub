//
//  mindfulness.swift
//  Testing with GitHub
//
//  Created by Anerie Patel on 2023-08-17.
//
import SwiftUI
struct mindfulness: View {
    @State public var Mindcount = 0
    
    @State private var title: String = ""
    
    @State private var hydrationCompleted: Bool = false
    
    @State private var journalEntry: String = ""
    @State private var selectedMood: String? = nil
    
    let moodOptions = ["😊 Energized", "😐 Neutral", "😞 Unmotivated"]
    
    var body: some View {
        ZStack {
            Color.pink.opacity(0.2)
                .ignoresSafeArea()
                .overlay(
            VStack {
                Text("Mindfulness")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                TextField("What was your mindfulness goal?", text: $title)
                    .padding()
                Toggle("Did you complete your mindfulness goal?", isOn: $hydrationCompleted)
                    .padding()
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
                                    .foregroundColor(selectedMood == mood ? Color.pink.opacity(0.9) : Color.pink.opacity(0.5))
                            )
                        }
                    }
                }
                Button(action: {
                 
                    Mindcount = Mindcount + 1
                    
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
                        .background(Color.pink.opacity(0.5))
                        .cornerRadius(10)
                    
                    if Mindcount == 10 {
                        NavigationLink(destination: rewardScreenMindfullness()) {
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
struct mindfulness_Previews: PreviewProvider {
 static var previews: some View {
 mindfulness()
 }
}
