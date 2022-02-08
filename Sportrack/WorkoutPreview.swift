//
//  WorkoutPreview.swift
//  Sportrack
//
//  Created by Adley Salabi on 02/02/2022.
//

import SwiftUI

struct WorkoutPreview: View {
    
    var workoutComingUser = userJulie.workoutComing
    var workoutPassedUser = userJulie.workoutPassed
    
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
                    // Using value from our struct
                    // Ici on préfère l'utilisation d'un for each à une liste pour ne pas utiliser le style
                    // List(workoutComingUser) { workout in
                    //  OneWorkoutView(workoutData: workout)
                    // }
                    
                    // On boucle sur les éléments de la struct pour les afficher
                    ForEach(workoutComingUser, id: \.id) { workout in
                        OneWorkoutView(workoutData: workout)
                    }
                    
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
    // Declaration de la variable qui va permettre l'utilisation dynamique des card
    let workoutData: OneWorkout
    
    var body: some View {
        Button(action: {
            // Ouvrir l'interface la fiche du workout
        }, label: {
            HStack{
                Image("workout-musculation")
                    .padding()
                VStack(alignment: .leading) {
                    Text(workoutData.workoutTitle)
                        .font(Font.body)
                        .foregroundColor(.black)
                    Text("\(workoutData.calories) Calories | \(workoutData.time) minutes")
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
