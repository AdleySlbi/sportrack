//
//  WorkoutPreview.swift
//  Sportrack
//
//  Created by Adley Salabi on 02/02/2022.
//

import SwiftUI

struct WorkoutPreview: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    
                    Text("Workouts")
                        .font(Font.title.weight(.bold))
                        .padding()
                    
                    Spacer()
                } // HStack
                HStack {
                    // Sous Titre de la page
                    Text("Upcoming Workout")
                        .font(Font.title2.weight(.bold))
                        .padding()
                    Spacer()
                } // HStack
                VStack {
                    OneWorkoutView()
                    OneWorkoutView()
                    OneWorkoutView()
                } // VStack
                .padding()
                Spacer()
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("Create a Workout")
                    })
                        .foregroundColor(.white)
                        .frame(width: 200)
                        .font(Font.body.weight(.bold))
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                } // HStack
            } // Vstack
            .background(Color.white)
        } // ZStack
    }
}

struct WorkoutPreview_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutPreview()
    }
}

// OneWorkout View
struct OneWorkoutView: View {
    let OneWorkoutData: OneWorkout
    
    var body: some View {
        Button(action: {
            // Ouvrir l'interface la fiche du workout
        }, label: {
            HStack{
                Image("workout-musculation")
                    .padding()
                VStack(alignment: .leading) {
                    Text("Workout Title")
                        .font(Font.body)
                        .foregroundColor(.black)
                    Text("XXX Calories | XX minutes")
                        .font(Font.subheadline)
                        .foregroundColor(.gray)
                    Text("XX/XX/XXXX - 10h")
                        .font(Font.subheadline)
                        .foregroundColor(.gray)
                } // VStack
                Spacer()
            } // HStack
            .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                )
        })
            
            
    }
}
