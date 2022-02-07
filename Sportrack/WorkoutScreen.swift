//
//  WorkoutScreen.swift
//  Sportrack
//
//  Created by Adley Salabi on 07/02/2022.
//

import SwiftUI

struct WorkoutScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    Spacer()
                    Text("01:25")
                    Spacer()
                } // HStack
                Spacer()
                VStack {
                    Image("jumping-jack-img") // Dynamiser la récupération de la photo de l'exercice
                        .resizable()
                        .frame(width: 250, height: 250)
                    Text("Jumping Jack") // Dynamiser la récupération de l'image de l'exercice
                        .font(Font.title3.weight(.bold))
                        .textCase(.uppercase)
                } //VStack
                Spacer()
                Text("Répétition : 10")
                    .padding()
                HStack {
                    Spacer()
                    Image(systemName: "pause.rectangle")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Spacer()
                    Image(systemName: "arrow.right.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Spacer()
                } // HStack
                
                Spacer()
            } // VStack
            .navigationTitle("EXERCICE 1")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "xmark")
                }
            }
        } // NavigationView
    }
}

struct WorkoutScreen_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutScreen()
    }
}
