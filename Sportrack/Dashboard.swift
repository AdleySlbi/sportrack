//
//  Dashboard.swift
//  Sportrack
//
//  Created by Adley Salabi on 07/02/2022.
//

import SwiftUI

struct Dashboard: View {
    
    @State private var selectedWorkoutList: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Welcome Back,")
                            .font(Font.subheadline.weight(.light))
                            .foregroundColor(.gray)
                        Text("Stefani Wong")
                            .font(Font.title2.weight(.bold))
                    } // VStack
                    .padding()
                    Spacer()
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding()
                } // HStack
                HStack{
                    VStack(alignment: .leading) {
                        Text("3/5 Séances")
                            .font(Font.body.weight(.semibold))
                        Text("cette semaine.")
                        Text("Ne lachez pas!")
                        Button(action: {}, label: {
                            Text("View More")
                                .font(Font.body.weight(.semibold))
                                .padding()
                        })
                            .foregroundColor(.white)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(red: 197/255, green: 139/255, blue: 242), Color(red: 238/255, green: 164/255, blue: 206/255)]), startPoint: .trailing, endPoint: .leading)
                            )
                            .cornerRadius(99)
                    } // VStack
                    .padding()
                    Spacer()
                }
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
                // HStack
                Picker("FavoriteColor", selection: $selectedWorkoutList) {
                    Text("Upcoming Workout")
                    Text("Passed Workout")
                }
                    .pickerStyle(SegmentedPickerStyle())
                Spacer()
                // Ajouter les view des upcoming et latest workout
//                OneWorkoutView()
                Spacer()
            } // VStack
            .padding()
            
            .navigationBarHidden(true)
        }
    }
}

struct UpcomingWorkout: View {
    var body: some View {
        Text("This is my tab view content")
    }
}

struct LatestWorkout: View {
    var body: some View {
        Text("This is my tab view content 2")
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
