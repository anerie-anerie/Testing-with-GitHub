//
//  PhysicalActivity.swift
//  Testing with GitHub
//
//  Created by Anerie Patel on 2023-08-17.
//

import SwiftUI
struct PhysicalActivity: View {
  @State private var title: String = ""
  @State private var physicalActivityCompleted: Bool = false
  @State private var journalEntry: String = ""
  @State private var selectedMood: String? = nil //represents the selected mood
    
    @State public var PACount = 0
    
  let moodOptions = ["😊 Energized", "😐 Neutral", "😞 Unmotivated"] //mood options for buttons in mood tracker feature
  var body: some View {
    VStack {
      Text("Physical Activity")
        .font(.largeTitle)
        .fontWeight(.bold)
      TextField("What was your physical activity goal?", text: $title)
        .padding()
      Toggle("Did you complete your physical activity goal?", isOn: $physicalActivityCompleted)
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
                .foregroundColor(selectedMood == mood ? Color.yellow.opacity(0.8) : Color.yellow.opacity(0.5))
            )
          }
        }
      }
      Button(action: {
      PACount = PACount + 1
          
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
          .background(Color.yellow.opacity(0.5))
          .cornerRadius(10)
          
          if PACount == 10 {
                        NavigationLink(destination: PARewardsScreen()) {
                            Text("You won an award! Click here to collect")
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                    }

      }
      .padding()
    }
    .background(Color.yellow.opacity(0.3))
  }
}
struct PhysicalActivityView_Previews: PreviewProvider {
  static var previews: some View {
    PhysicalActivity()
  }
}
